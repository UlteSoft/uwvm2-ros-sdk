<?php
/**
 * @file records.php
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */

declare(strict_types=1);
namespace Uwvm\Fanuc\Ros2;

/** @file records.php
 * @brief Complete original FANUC ROS 2 records and interfaces.
 * @details Exact fields, defaults and bounds; no native registration or permission is inferred. */
use Uwvm\RosWasm\Wire;
use Uwvm\RosWasm\Word;

/** @brief Own every original builtin_interfaces/msg/Duration field; extent 8..8 bytes. */
final class Ros2Builtin_interfacesMsgDuration
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Builtin_interfacesMsgDuration',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => 'normalized-time',
        "ros_version" => 2,
        "native_type" => 'builtin_interfaces/msg/Duration',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'sec',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'nanosec',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original sec: int32; scalar; bound/count 0. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar; bound/count 0. */
    public mixed $nanosec;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('sec', $values)) { $this->sec = $values['sec']; }
        else
        {
            $this->sec = 0;
        }
        if (array_key_exists('nanosec', $values)) { $this->nanosec = $values['nanosec']; }
        else
        {
            $this->nanosec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Builtin_interfacesMsgDuration', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Builtin_interfacesMsgDuration', $bytes); }
}

/** @brief Own every original builtin_interfaces/msg/Time field; extent 8..8 bytes. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Builtin_interfacesMsgTime',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => 'normalized-time',
        "ros_version" => 2,
        "native_type" => 'builtin_interfaces/msg/Time',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'sec',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'nanosec',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original sec: int32; scalar; bound/count 0. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar; bound/count 0. */
    public mixed $nanosec;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('sec', $values)) { $this->sec = $values['sec']; }
        else
        {
            $this->sec = 0;
        }
        if (array_key_exists('nanosec', $values)) { $this->nanosec = $values['nanosec']; }
        else
        {
            $this->nanosec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Builtin_interfacesMsgTime', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Builtin_interfacesMsgTime', $bytes); }
}

/** @brief Own every original std_msgs/msg/Header field; extent 12..76 bytes. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Std_msgsMsgHeader',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396',
        "minimum" => 12,
        "maximum" => 76,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'std_msgs/msg/Header',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'stamp',
                "type" => 'Ros2Builtin_interfacesMsgTime',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'frame_id',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original stamp: Ros2Builtin_interfacesMsgTime; scalar; bound/count 0. */
    public mixed $stamp;
    /** @brief Original frame_id: string; scalar; bound/count 0. */
    public mixed $frame_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('stamp', $values)) { $this->stamp = $values['stamp']; }
        else
        {
            $this->stamp = new Ros2Builtin_interfacesMsgTime();
        }
        if (array_key_exists('frame_id', $values)) { $this->frame_id = $values['frame_id']; }
        else
        {
            $this->frame_id = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Std_msgsMsgHeader', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Std_msgsMsgHeader', $bytes); }
}

/** @brief Own every original trajectory_msgs/msg/JointTrajectoryPoint field; extent 24..408 bytes. */
final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5',
        "minimum" => 24,
        "maximum" => 408,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'trajectory_msgs/msg/JointTrajectoryPoint',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'positions',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'velocities',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'accelerations',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'effort',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'time_from_start',
                "type" => 'Ros2Builtin_interfacesMsgDuration',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original positions: float64; sequence; bound/count 12. */
    public mixed $positions;
    /** @brief Original velocities: float64; sequence; bound/count 12. */
    public mixed $velocities;
    /** @brief Original accelerations: float64; sequence; bound/count 12. */
    public mixed $accelerations;
    /** @brief Original effort: float64; sequence; bound/count 12. */
    public mixed $effort;
    /** @brief Original time_from_start: Ros2Builtin_interfacesMsgDuration; scalar; bound/count 0. */
    public mixed $time_from_start;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('positions', $values)) { $this->positions = $values['positions']; }
        else
        {
            $this->positions = [];
        }
        if (array_key_exists('velocities', $values)) { $this->velocities = $values['velocities']; }
        else
        {
            $this->velocities = [];
        }
        if (array_key_exists('accelerations', $values)) { $this->accelerations = $values['accelerations']; }
        else
        {
            $this->accelerations = [];
        }
        if (array_key_exists('effort', $values)) { $this->effort = $values['effort']; }
        else
        {
            $this->effort = [];
        }
        if (array_key_exists('time_from_start', $values)) { $this->time_from_start = $values['time_from_start']; }
        else
        {
            $this->time_from_start = new Ros2Builtin_interfacesMsgDuration();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Trajectory_msgsMsgJointTrajectoryPoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Trajectory_msgsMsgJointTrajectoryPoint', $bytes); }
}

/** @brief Own every original trajectory_msgs/msg/JointTrajectory field; extent 20..4164 bytes. */
final class Ros2Trajectory_msgsMsgJointTrajectory
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Trajectory_msgsMsgJointTrajectory',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0',
        "minimum" => 20,
        "maximum" => 4164,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'trajectory_msgs/msg/JointTrajectory',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'joint_names',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'points',
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                "array" => 'sequence',
                "count" => 8,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ]
        ]
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence; bound/count 12. */
    public mixed $joint_names;
    /** @brief Original points: Ros2Trajectory_msgsMsgJointTrajectoryPoint; sequence; bound/count 8. */
    public mixed $points;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('joint_names', $values)) { $this->joint_names = $values['joint_names']; }
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('points', $values)) { $this->points = $values['points']; }
        else
        {
            $this->points = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Trajectory_msgsMsgJointTrajectory', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Trajectory_msgsMsgJointTrajectory', $bytes); }
}

/** @brief Own every original geometry_msgs/msg/Vector3 field; extent 24..24 bytes. */
final class Ros2Geometry_msgsMsgVector3
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Geometry_msgsMsgVector3',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
        "minimum" => 24,
        "maximum" => 24,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'geometry_msgs/msg/Vector3',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'x',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'y',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'z',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original x: float64; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float64; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float64; scalar; bound/count 0. */
    public mixed $z;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('x', $values)) { $this->x = $values['x']; }
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) { $this->y = $values['y']; }
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) { $this->z = $values['z']; }
        else
        {
            $this->z = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Geometry_msgsMsgVector3', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Geometry_msgsMsgVector3', $bytes); }
}

/** @brief Own every original geometry_msgs/msg/Quaternion field; extent 32..32 bytes. */
final class Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Geometry_msgsMsgQuaternion',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
        "minimum" => 32,
        "maximum" => 32,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'geometry_msgs/msg/Quaternion',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'x',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0.0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8,
                "default" => 0.0
            ],
            [
                "name" => 'y',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0.0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8,
                "default" => 0.0
            ],
            [
                "name" => 'z',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0.0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8,
                "default" => 0.0
            ],
            [
                "name" => 'w',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '1.0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8,
                "default" => 1.0
            ]
        ]
    ];
    /** @brief Original x: float64; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float64; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float64; scalar; bound/count 0. */
    public mixed $z;
    /** @brief Original w: float64; scalar; bound/count 0. */
    public mixed $w;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('x', $values)) { $this->x = $values['x']; }
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) { $this->y = $values['y']; }
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) { $this->z = $values['z']; }
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('w', $values)) { $this->w = $values['w']; }
        else
        {
            $this->w = 1.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Geometry_msgsMsgQuaternion', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Geometry_msgsMsgQuaternion', $bytes); }
}

/** @brief Own every original geometry_msgs/msg/Transform field; extent 56..56 bytes. */
final class Ros2Geometry_msgsMsgTransform
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Geometry_msgsMsgTransform',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b',
        "minimum" => 56,
        "maximum" => 56,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'geometry_msgs/msg/Transform',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'translation',
                "type" => 'Ros2Geometry_msgsMsgVector3',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'rotation',
                "type" => 'Ros2Geometry_msgsMsgQuaternion',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 32
            ]
        ]
    ];
    /** @brief Original translation: Ros2Geometry_msgsMsgVector3; scalar; bound/count 0. */
    public mixed $translation;
    /** @brief Original rotation: Ros2Geometry_msgsMsgQuaternion; scalar; bound/count 0. */
    public mixed $rotation;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('translation', $values)) { $this->translation = $values['translation']; }
        else
        {
            $this->translation = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('rotation', $values)) { $this->rotation = $values['rotation']; }
        else
        {
            $this->rotation = new Ros2Geometry_msgsMsgQuaternion();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Geometry_msgsMsgTransform', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Geometry_msgsMsgTransform', $bytes); }
}

/** @brief Own every original geometry_msgs/msg/Twist field; extent 48..48 bytes. */
final class Ros2Geometry_msgsMsgTwist
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Geometry_msgsMsgTwist',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
        "minimum" => 48,
        "maximum" => 48,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'geometry_msgs/msg/Twist',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'linear',
                "type" => 'Ros2Geometry_msgsMsgVector3',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'angular',
                "type" => 'Ros2Geometry_msgsMsgVector3',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ]
        ]
    ];
    /** @brief Original linear: Ros2Geometry_msgsMsgVector3; scalar; bound/count 0. */
    public mixed $linear;
    /** @brief Original angular: Ros2Geometry_msgsMsgVector3; scalar; bound/count 0. */
    public mixed $angular;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('linear', $values)) { $this->linear = $values['linear']; }
        else
        {
            $this->linear = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('angular', $values)) { $this->angular = $values['angular']; }
        else
        {
            $this->angular = new Ros2Geometry_msgsMsgVector3();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Geometry_msgsMsgTwist', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Geometry_msgsMsgTwist', $bytes); }
}

/** @brief Own every original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field; extent 20..324 bytes. */
final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242',
        "minimum" => 20,
        "maximum" => 324,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'transforms',
                "type" => 'Ros2Geometry_msgsMsgTransform',
                "array" => 'sequence',
                "count" => 2,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 56
            ],
            [
                "name" => 'velocities',
                "type" => 'Ros2Geometry_msgsMsgTwist',
                "array" => 'sequence',
                "count" => 2,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 48
            ],
            [
                "name" => 'accelerations',
                "type" => 'Ros2Geometry_msgsMsgTwist',
                "array" => 'sequence',
                "count" => 2,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 48
            ],
            [
                "name" => 'time_from_start',
                "type" => 'Ros2Builtin_interfacesMsgDuration',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original transforms: Ros2Geometry_msgsMsgTransform; sequence; bound/count 2. */
    public mixed $transforms;
    /** @brief Original velocities: Ros2Geometry_msgsMsgTwist; sequence; bound/count 2. */
    public mixed $velocities;
    /** @brief Original accelerations: Ros2Geometry_msgsMsgTwist; sequence; bound/count 2. */
    public mixed $accelerations;
    /** @brief Original time_from_start: Ros2Builtin_interfacesMsgDuration; scalar; bound/count 0. */
    public mixed $time_from_start;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('transforms', $values)) { $this->transforms = $values['transforms']; }
        else
        {
            $this->transforms = [];
        }
        if (array_key_exists('velocities', $values)) { $this->velocities = $values['velocities']; }
        else
        {
            $this->velocities = [];
        }
        if (array_key_exists('accelerations', $values)) { $this->accelerations = $values['accelerations']; }
        else
        {
            $this->accelerations = [];
        }
        if (array_key_exists('time_from_start', $values)) { $this->time_from_start = $values['time_from_start']; }
        else
        {
            $this->time_from_start = new Ros2Builtin_interfacesMsgDuration();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint', $bytes); }
}

/** @brief Own every original trajectory_msgs/msg/MultiDOFJointTrajectory field; extent 20..1516 bytes. */
final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401',
        "minimum" => 20,
        "maximum" => 1516,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'trajectory_msgs/msg/MultiDOFJointTrajectory',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'joint_names',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 2,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'points',
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                "array" => 'sequence',
                "count" => 4,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 20
            ]
        ]
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence; bound/count 2. */
    public mixed $joint_names;
    /** @brief Original points: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; sequence; bound/count 4. */
    public mixed $points;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('joint_names', $values)) { $this->joint_names = $values['joint_names']; }
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('points', $values)) { $this->points = $values['points']; }
        else
        {
            $this->points = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectory', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectory', $bytes); }
}

/** @brief Own every original control_msgs/msg/JointTolerance field; extent 28..92 bytes. */
final class Ros2Control_msgsMsgJointTolerance
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsMsgJointTolerance',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2',
        "minimum" => 28,
        "maximum" => 92,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/msg/JointTolerance',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'name',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'position',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'velocity',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'acceleration',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original name: string; scalar; bound/count 0. */
    public mixed $name;
    /** @brief Original position: float64; scalar; bound/count 0. */
    public mixed $position;
    /** @brief Original velocity: float64; scalar; bound/count 0. */
    public mixed $velocity;
    /** @brief Original acceleration: float64; scalar; bound/count 0. */
    public mixed $acceleration;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('name', $values)) { $this->name = $values['name']; }
        else
        {
            $this->name = '';
        }
        if (array_key_exists('position', $values)) { $this->position = $values['position']; }
        else
        {
            $this->position = 0.0;
        }
        if (array_key_exists('velocity', $values)) { $this->velocity = $values['velocity']; }
        else
        {
            $this->velocity = 0.0;
        }
        if (array_key_exists('acceleration', $values)) { $this->acceleration = $values['acceleration']; }
        else
        {
            $this->acceleration = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Control_msgsMsgJointTolerance', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsMsgJointTolerance', $bytes); }
}

/** @brief Own every original control_msgs/msg/JointComponentTolerance field; extent 30..542 bytes. */
final class Ros2Control_msgsMsgJointComponentTolerance
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsMsgJointComponentTolerance',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342',
        "minimum" => 30,
        "maximum" => 542,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/msg/JointComponentTolerance',
        "constants" => [
            "X_AXIS" => 1,
            "Y_AXIS" => 2,
            "Z_AXIS" => 3,
            "TRANSLATION" => 4,
            "ROTATION" => 5
        ],
        "fields" => [
            [
                "name" => 'joint_name',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'component',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'position',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'velocity',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'acceleration',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original X_AXIS constant; consumes no instance bytes. */
    public const X_AXIS = 1;
    /** @brief Original Y_AXIS constant; consumes no instance bytes. */
    public const Y_AXIS = 2;
    /** @brief Original Z_AXIS constant; consumes no instance bytes. */
    public const Z_AXIS = 3;
    /** @brief Original TRANSLATION constant; consumes no instance bytes. */
    public const TRANSLATION = 4;
    /** @brief Original ROTATION constant; consumes no instance bytes. */
    public const ROTATION = 5;
    /** @brief Original joint_name: string; scalar; bound/count 0. */
    public mixed $joint_name;
    /** @brief Original component: uint16; scalar; bound/count 0. */
    public mixed $component;
    /** @brief Original position: float64; scalar; bound/count 0. */
    public mixed $position;
    /** @brief Original velocity: float64; scalar; bound/count 0. */
    public mixed $velocity;
    /** @brief Original acceleration: float64; scalar; bound/count 0. */
    public mixed $acceleration;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('joint_name', $values)) { $this->joint_name = $values['joint_name']; }
        else
        {
            $this->joint_name = '';
        }
        if (array_key_exists('component', $values)) { $this->component = $values['component']; }
        else
        {
            $this->component = 0;
        }
        if (array_key_exists('position', $values)) { $this->position = $values['position']; }
        else
        {
            $this->position = 0.0;
        }
        if (array_key_exists('velocity', $values)) { $this->velocity = $values['velocity']; }
        else
        {
            $this->velocity = 0.0;
        }
        if (array_key_exists('acceleration', $values)) { $this->acceleration = $values['acceleration']; }
        else
        {
            $this->acceleration = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Control_msgsMsgJointComponentTolerance', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsMsgJointComponentTolerance', $bytes); }
}

/** @brief Own every original control_msgs/action/FollowJointTrajectory_Goal field; extent 64..20920 bytes. */
final class Ros2Control_msgsActionFollowJointTrajectory_Goal
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsActionFollowJointTrajectory_Goal',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16',
        "minimum" => 64,
        "maximum" => 20920,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/action/FollowJointTrajectory_Goal',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'trajectory',
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectory',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 20
            ],
            [
                "name" => 'multi_dof_trajectory',
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 20
            ],
            [
                "name" => 'path_tolerance',
                "type" => 'Ros2Control_msgsMsgJointTolerance',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ],
            [
                "name" => 'component_path_tolerance',
                "type" => 'Ros2Control_msgsMsgJointComponentTolerance',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 30
            ],
            [
                "name" => 'goal_tolerance',
                "type" => 'Ros2Control_msgsMsgJointTolerance',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ],
            [
                "name" => 'component_goal_tolerance',
                "type" => 'Ros2Control_msgsMsgJointComponentTolerance',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 30
            ],
            [
                "name" => 'goal_time_tolerance',
                "type" => 'Ros2Builtin_interfacesMsgDuration',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original trajectory: Ros2Trajectory_msgsMsgJointTrajectory; scalar; bound/count 0. */
    public mixed $trajectory;
    /** @brief Original multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; scalar; bound/count 0. */
    public mixed $multi_dof_trajectory;
    /** @brief Original path_tolerance: Ros2Control_msgsMsgJointTolerance; sequence; bound/count 12. */
    public mixed $path_tolerance;
    /** @brief Original component_path_tolerance: Ros2Control_msgsMsgJointComponentTolerance; sequence; bound/count 12. */
    public mixed $component_path_tolerance;
    /** @brief Original goal_tolerance: Ros2Control_msgsMsgJointTolerance; sequence; bound/count 12. */
    public mixed $goal_tolerance;
    /** @brief Original component_goal_tolerance: Ros2Control_msgsMsgJointComponentTolerance; sequence; bound/count 12. */
    public mixed $component_goal_tolerance;
    /** @brief Original goal_time_tolerance: Ros2Builtin_interfacesMsgDuration; scalar; bound/count 0. */
    public mixed $goal_time_tolerance;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('trajectory', $values)) { $this->trajectory = $values['trajectory']; }
        else
        {
            $this->trajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
        }
        if (array_key_exists('multi_dof_trajectory', $values)) { $this->multi_dof_trajectory = $values['multi_dof_trajectory']; }
        else
        {
            $this->multi_dof_trajectory = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        }
        if (array_key_exists('path_tolerance', $values)) { $this->path_tolerance = $values['path_tolerance']; }
        else
        {
            $this->path_tolerance = [];
        }
        if (array_key_exists('component_path_tolerance', $values)) { $this->component_path_tolerance = $values['component_path_tolerance']; }
        else
        {
            $this->component_path_tolerance = [];
        }
        if (array_key_exists('goal_tolerance', $values)) { $this->goal_tolerance = $values['goal_tolerance']; }
        else
        {
            $this->goal_tolerance = [];
        }
        if (array_key_exists('component_goal_tolerance', $values)) { $this->component_goal_tolerance = $values['component_goal_tolerance']; }
        else
        {
            $this->component_goal_tolerance = [];
        }
        if (array_key_exists('goal_time_tolerance', $values)) { $this->goal_time_tolerance = $values['goal_time_tolerance']; }
        else
        {
            $this->goal_time_tolerance = new Ros2Builtin_interfacesMsgDuration();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Control_msgsActionFollowJointTrajectory_Goal', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsActionFollowJointTrajectory_Goal', $bytes); }
}

/** @brief Own every original control_msgs/action/FollowJointTrajectory_Result field; extent 8..4104 bytes. */
final class Ros2Control_msgsActionFollowJointTrajectory_Result
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsActionFollowJointTrajectory_Result',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70',
        "minimum" => 8,
        "maximum" => 4104,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/action/FollowJointTrajectory_Result',
        "constants" => [
            "SUCCESSFUL" => 0,
            "INVALID_GOAL" => -1,
            "INVALID_JOINTS" => -2,
            "OLD_HEADER_TIMESTAMP" => -3,
            "PATH_TOLERANCE_VIOLATED" => -4,
            "GOAL_TOLERANCE_VIOLATED" => -5
        ],
        "fields" => [
            [
                "name" => 'error_code',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'error_string',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 4096,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original SUCCESSFUL constant; consumes no instance bytes. */
    public const SUCCESSFUL = 0;
    /** @brief Original INVALID_GOAL constant; consumes no instance bytes. */
    public const INVALID_GOAL = -1;
    /** @brief Original INVALID_JOINTS constant; consumes no instance bytes. */
    public const INVALID_JOINTS = -2;
    /** @brief Original OLD_HEADER_TIMESTAMP constant; consumes no instance bytes. */
    public const OLD_HEADER_TIMESTAMP = -3;
    /** @brief Original PATH_TOLERANCE_VIOLATED constant; consumes no instance bytes. */
    public const PATH_TOLERANCE_VIOLATED = -4;
    /** @brief Original GOAL_TOLERANCE_VIOLATED constant; consumes no instance bytes. */
    public const GOAL_TOLERANCE_VIOLATED = -5;
    /** @brief Original error_code: int32; scalar; bound/count 0. */
    public mixed $error_code;
    /** @brief Original error_string: string; scalar; bound/count 0. */
    public mixed $error_string;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('error_code', $values)) { $this->error_code = $values['error_code']; }
        else
        {
            $this->error_code = 0;
        }
        if (array_key_exists('error_string', $values)) { $this->error_string = $values['error_string']; }
        else
        {
            $this->error_string = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Control_msgsActionFollowJointTrajectory_Result', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsActionFollowJointTrajectory_Result', $bytes); }
}

/** @brief Own every original control_msgs/action/FollowJointTrajectory_Feedback field; extent 152..4128 bytes. */
final class Ros2Control_msgsActionFollowJointTrajectory_Feedback
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsActionFollowJointTrajectory_Feedback',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb',
        "minimum" => 152,
        "maximum" => 4128,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/action/FollowJointTrajectory_Feedback',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'joint_names',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'desired',
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'actual',
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'error',
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'multi_dof_joint_names',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 2,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'multi_dof_desired',
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 20
            ],
            [
                "name" => 'multi_dof_actual',
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 20
            ],
            [
                "name" => 'multi_dof_error',
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 20
            ]
        ]
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence; bound/count 12. */
    public mixed $joint_names;
    /** @brief Original desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $desired;
    /** @brief Original actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $actual;
    /** @brief Original error: Ros2Trajectory_msgsMsgJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $error;
    /** @brief Original multi_dof_joint_names: string; sequence; bound/count 2. */
    public mixed $multi_dof_joint_names;
    /** @brief Original multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $multi_dof_desired;
    /** @brief Original multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $multi_dof_actual;
    /** @brief Original multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $multi_dof_error;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('joint_names', $values)) { $this->joint_names = $values['joint_names']; }
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('desired', $values)) { $this->desired = $values['desired']; }
        else
        {
            $this->desired = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
        if (array_key_exists('actual', $values)) { $this->actual = $values['actual']; }
        else
        {
            $this->actual = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
        if (array_key_exists('error', $values)) { $this->error = $values['error']; }
        else
        {
            $this->error = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
        if (array_key_exists('multi_dof_joint_names', $values)) { $this->multi_dof_joint_names = $values['multi_dof_joint_names']; }
        else
        {
            $this->multi_dof_joint_names = [];
        }
        if (array_key_exists('multi_dof_desired', $values)) { $this->multi_dof_desired = $values['multi_dof_desired']; }
        else
        {
            $this->multi_dof_desired = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        }
        if (array_key_exists('multi_dof_actual', $values)) { $this->multi_dof_actual = $values['multi_dof_actual']; }
        else
        {
            $this->multi_dof_actual = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        }
        if (array_key_exists('multi_dof_error', $values)) { $this->multi_dof_error = $values['multi_dof_error']; }
        else
        {
            $this->multi_dof_error = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Control_msgsActionFollowJointTrajectory_Feedback', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsActionFollowJointTrajectory_Feedback', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/IOType field; extent 4..68 bytes. */
final class Ros2Fanuc_msgsMsgIOType
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgIOType',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586',
        "minimum" => 4,
        "maximum" => 68,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/IOType',
        "constants" => [
            "AI" => 'AI',
            "AO" => 'AO',
            "DI" => 'DI',
            "DO" => 'DO',
            "RI" => 'RI',
            "RO" => 'RO',
            "SI" => 'SI',
            "SO" => 'SO',
            "WI" => 'WI',
            "WO" => 'WO',
            "UI" => 'UI',
            "UO" => 'UO',
            "WSI" => 'WSI',
            "WSO" => 'WSO',
            "F" => 'F',
            "M" => 'M',
            "GI" => 'GI',
            "GO" => 'GO'
        ],
        "fields" => [
            [
                "name" => 'type',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original AI constant; consumes no instance bytes. */
    public const AI = 'AI';
    /** @brief Original AO constant; consumes no instance bytes. */
    public const AO = 'AO';
    /** @brief Original DI constant; consumes no instance bytes. */
    public const DI = 'DI';
    /** @brief Original DO constant; consumes no instance bytes. */
    public const DO = 'DO';
    /** @brief Original RI constant; consumes no instance bytes. */
    public const RI = 'RI';
    /** @brief Original RO constant; consumes no instance bytes. */
    public const RO = 'RO';
    /** @brief Original SI constant; consumes no instance bytes. */
    public const SI = 'SI';
    /** @brief Original SO constant; consumes no instance bytes. */
    public const SO = 'SO';
    /** @brief Original WI constant; consumes no instance bytes. */
    public const WI = 'WI';
    /** @brief Original WO constant; consumes no instance bytes. */
    public const WO = 'WO';
    /** @brief Original UI constant; consumes no instance bytes. */
    public const UI = 'UI';
    /** @brief Original UO constant; consumes no instance bytes. */
    public const UO = 'UO';
    /** @brief Original WSI constant; consumes no instance bytes. */
    public const WSI = 'WSI';
    /** @brief Original WSO constant; consumes no instance bytes. */
    public const WSO = 'WSO';
    /** @brief Original F constant; consumes no instance bytes. */
    public const F = 'F';
    /** @brief Original M constant; consumes no instance bytes. */
    public const M = 'M';
    /** @brief Original GI constant; consumes no instance bytes. */
    public const GI = 'GI';
    /** @brief Original GO constant; consumes no instance bytes. */
    public const GO = 'GO';
    /** @brief Original type: string; scalar; bound/count 0. */
    public mixed $type;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('type', $values)) { $this->type = $values['type']; }
        else
        {
            $this->type = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgIOType', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgIOType', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/AnalogIO field; extent 10..74 bytes. */
final class Ros2Fanuc_msgsMsgAnalogIO
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgAnalogIO',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00',
        "minimum" => 10,
        "maximum" => 74,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/AnalogIO',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'io_type',
                "type" => 'Ros2Fanuc_msgsMsgIOType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'value',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original io_type: Ros2Fanuc_msgsMsgIOType; scalar; bound/count 0. */
    public mixed $io_type;
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Original value: float32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('io_type', $values)) { $this->io_type = $values['io_type']; }
        else
        {
            $this->io_type = new Ros2Fanuc_msgsMsgIOType();
        }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgAnalogIO', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgAnalogIO', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/AnalogIOCmd field; extent 4..2372 bytes. */
final class Ros2Fanuc_msgsMsgAnalogIOCmd
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgAnalogIOCmd',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba',
        "minimum" => 4,
        "maximum" => 2372,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/AnalogIOCmd',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'values',
                "type" => 'Ros2Fanuc_msgsMsgAnalogIO',
                "array" => 'sequence',
                "count" => 32,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 10
            ]
        ]
    ];
    /** @brief Original values: Ros2Fanuc_msgsMsgAnalogIO; sequence; bound/count 32. */
    public mixed $values;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('values', $values)) { $this->values = $values['values']; }
        else
        {
            $this->values = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgAnalogIOCmd', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgAnalogIOCmd', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/AnalogIOState field; extent 4..2372 bytes. */
final class Ros2Fanuc_msgsMsgAnalogIOState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgAnalogIOState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4',
        "minimum" => 4,
        "maximum" => 2372,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/AnalogIOState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'values',
                "type" => 'Ros2Fanuc_msgsMsgAnalogIO',
                "array" => 'sequence',
                "count" => 32,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 10
            ]
        ]
    ];
    /** @brief Original values: Ros2Fanuc_msgsMsgAnalogIO; sequence; bound/count 32. */
    public mixed $values;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('values', $values)) { $this->values = $values['values']; }
        else
        {
            $this->values = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgAnalogIOState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgAnalogIOState', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/BoolIO field; extent 7..71 bytes. */
final class Ros2Fanuc_msgsMsgBoolIO
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgBoolIO',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7',
        "minimum" => 7,
        "maximum" => 71,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/BoolIO',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'io_type',
                "type" => 'Ros2Fanuc_msgsMsgIOType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'value',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original io_type: Ros2Fanuc_msgsMsgIOType; scalar; bound/count 0. */
    public mixed $io_type;
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Original value: bool; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('io_type', $values)) { $this->io_type = $values['io_type']; }
        else
        {
            $this->io_type = new Ros2Fanuc_msgsMsgIOType();
        }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgBoolIO', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgBoolIO', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/CollaborativeSpeedScaling field; extent 8..8 bytes. */
final class Ros2Fanuc_msgsMsgCollaborativeSpeedScaling
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgCollaborativeSpeedScaling',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/CollaborativeSpeedScaling',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'collaborative_speed_scaling',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original collaborative_speed_scaling: float64; scalar; bound/count 0. */
    public mixed $collaborative_speed_scaling;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('collaborative_speed_scaling', $values)) { $this->collaborative_speed_scaling = $values['collaborative_speed_scaling']; }
        else
        {
            $this->collaborative_speed_scaling = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgCollaborativeSpeedScaling', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgCollaborativeSpeedScaling', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/ConnectionStatus field; extent 1..1 bytes. */
final class Ros2Fanuc_msgsMsgConnectionStatus
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgConnectionStatus',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/ConnectionStatus',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'is_connected',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original is_connected: bool; scalar; bound/count 0. */
    public mixed $is_connected;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('is_connected', $values)) { $this->is_connected = $values['is_connected']; }
        else
        {
            $this->is_connected = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgConnectionStatus', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgConnectionStatus', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/ForceSensor field; extent 28..28 bytes. */
final class Ros2Fanuc_msgsMsgForceSensor
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgForceSensor',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032',
        "minimum" => 28,
        "maximum" => 28,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/ForceSensor',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'force_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'force_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'force_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'moment_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'moment_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'moment_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'fs_type',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original force_x: float32; scalar; bound/count 0. */
    public mixed $force_x;
    /** @brief Original force_y: float32; scalar; bound/count 0. */
    public mixed $force_y;
    /** @brief Original force_z: float32; scalar; bound/count 0. */
    public mixed $force_z;
    /** @brief Original moment_x: float32; scalar; bound/count 0. */
    public mixed $moment_x;
    /** @brief Original moment_y: float32; scalar; bound/count 0. */
    public mixed $moment_y;
    /** @brief Original moment_z: float32; scalar; bound/count 0. */
    public mixed $moment_z;
    /** @brief Original fs_type: uint32; scalar; bound/count 0. */
    public mixed $fs_type;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('force_x', $values)) { $this->force_x = $values['force_x']; }
        else
        {
            $this->force_x = 0.0;
        }
        if (array_key_exists('force_y', $values)) { $this->force_y = $values['force_y']; }
        else
        {
            $this->force_y = 0.0;
        }
        if (array_key_exists('force_z', $values)) { $this->force_z = $values['force_z']; }
        else
        {
            $this->force_z = 0.0;
        }
        if (array_key_exists('moment_x', $values)) { $this->moment_x = $values['moment_x']; }
        else
        {
            $this->moment_x = 0.0;
        }
        if (array_key_exists('moment_y', $values)) { $this->moment_y = $values['moment_y']; }
        else
        {
            $this->moment_y = 0.0;
        }
        if (array_key_exists('moment_z', $values)) { $this->moment_z = $values['moment_z']; }
        else
        {
            $this->moment_z = 0.0;
        }
        if (array_key_exists('fs_type', $values)) { $this->fs_type = $values['fs_type']; }
        else
        {
            $this->fs_type = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgForceSensor', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgForceSensor', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/Frame field; extent 24..24 bytes. */
final class Ros2Fanuc_msgsMsgFrame
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgFrame',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb',
        "minimum" => 24,
        "maximum" => 24,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/Frame',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'w',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'p',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'r',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original x: float32; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float32; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float32; scalar; bound/count 0. */
    public mixed $z;
    /** @brief Original w: float32; scalar; bound/count 0. */
    public mixed $w;
    /** @brief Original p: float32; scalar; bound/count 0. */
    public mixed $p;
    /** @brief Original r: float32; scalar; bound/count 0. */
    public mixed $r;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('x', $values)) { $this->x = $values['x']; }
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) { $this->y = $values['y']; }
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) { $this->z = $values['z']; }
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('w', $values)) { $this->w = $values['w']; }
        else
        {
            $this->w = 0.0;
        }
        if (array_key_exists('p', $values)) { $this->p = $values['p']; }
        else
        {
            $this->p = 0.0;
        }
        if (array_key_exists('r', $values)) { $this->r = $values['r']; }
        else
        {
            $this->r = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgFrame', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgFrame', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/IOCmd field; extent 4..2276 bytes. */
final class Ros2Fanuc_msgsMsgIOCmd
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgIOCmd',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d',
        "minimum" => 4,
        "maximum" => 2276,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/IOCmd',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'values',
                "type" => 'Ros2Fanuc_msgsMsgBoolIO',
                "array" => 'sequence',
                "count" => 32,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 7
            ]
        ]
    ];
    /** @brief Original values: Ros2Fanuc_msgsMsgBoolIO; sequence; bound/count 32. */
    public mixed $values;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('values', $values)) { $this->values = $values['values']; }
        else
        {
            $this->values = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgIOCmd', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgIOCmd', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/IOState field; extent 4..2276 bytes. */
final class Ros2Fanuc_msgsMsgIOState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgIOState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8',
        "minimum" => 4,
        "maximum" => 2276,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/IOState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'values',
                "type" => 'Ros2Fanuc_msgsMsgBoolIO',
                "array" => 'sequence',
                "count" => 32,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 7
            ]
        ]
    ];
    /** @brief Original values: Ros2Fanuc_msgsMsgBoolIO; sequence; bound/count 32. */
    public mixed $values;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('values', $values)) { $this->values = $values['values']; }
        else
        {
            $this->values = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgIOState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgIOState', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/NumReg field; extent 6..6 bytes. */
final class Ros2Fanuc_msgsMsgNumReg
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgNumReg',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc',
        "minimum" => 6,
        "maximum" => 6,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/NumReg',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'value',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Original value: float32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgNumReg', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgNumReg', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/NumRegCmd field; extent 4..196 bytes. */
final class Ros2Fanuc_msgsMsgNumRegCmd
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgNumRegCmd',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6',
        "minimum" => 4,
        "maximum" => 196,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/NumRegCmd',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'values',
                "type" => 'Ros2Fanuc_msgsMsgNumReg',
                "array" => 'sequence',
                "count" => 32,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 6
            ]
        ]
    ];
    /** @brief Original values: Ros2Fanuc_msgsMsgNumReg; sequence; bound/count 32. */
    public mixed $values;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('values', $values)) { $this->values = $values['values']; }
        else
        {
            $this->values = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgNumRegCmd', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgNumRegCmd', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/NumRegState field; extent 4..196 bytes. */
final class Ros2Fanuc_msgsMsgNumRegState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgNumRegState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a',
        "minimum" => 4,
        "maximum" => 196,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/NumRegState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'values',
                "type" => 'Ros2Fanuc_msgsMsgNumReg',
                "array" => 'sequence',
                "count" => 32,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 6
            ]
        ]
    ];
    /** @brief Original values: Ros2Fanuc_msgsMsgNumReg; sequence; bound/count 32. */
    public mixed $values;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('values', $values)) { $this->values = $values['values']; }
        else
        {
            $this->values = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgNumRegState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgNumRegState', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/RMIStatus field; extent 24..1048 bytes. */
final class Ros2Fanuc_msgsMsgRMIStatus
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgRMIStatus',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8',
        "minimum" => 24,
        "maximum" => 1048,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/RMIStatus',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'program_status',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'next_sequence',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'last_sequence',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'last_sequence_error',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'last_sequence_instruction',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'last_sequence_error_message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original program_status: uint32; scalar; bound/count 0. */
    public mixed $program_status;
    /** @brief Original next_sequence: uint32; scalar; bound/count 0. */
    public mixed $next_sequence;
    /** @brief Original last_sequence: uint32; scalar; bound/count 0. */
    public mixed $last_sequence;
    /** @brief Original last_sequence_error: int32; scalar; bound/count 0. */
    public mixed $last_sequence_error;
    /** @brief Original last_sequence_instruction: string; scalar; bound/count 0. */
    public mixed $last_sequence_instruction;
    /** @brief Original last_sequence_error_message: string; scalar; bound/count 0. */
    public mixed $last_sequence_error_message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('program_status', $values)) { $this->program_status = $values['program_status']; }
        else
        {
            $this->program_status = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('next_sequence', $values)) { $this->next_sequence = $values['next_sequence']; }
        else
        {
            $this->next_sequence = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('last_sequence', $values)) { $this->last_sequence = $values['last_sequence']; }
        else
        {
            $this->last_sequence = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('last_sequence_error', $values)) { $this->last_sequence_error = $values['last_sequence_error']; }
        else
        {
            $this->last_sequence_error = 0;
        }
        if (array_key_exists('last_sequence_instruction', $values)) { $this->last_sequence_instruction = $values['last_sequence_instruction']; }
        else
        {
            $this->last_sequence_instruction = '';
        }
        if (array_key_exists('last_sequence_error_message', $values)) { $this->last_sequence_error_message = $values['last_sequence_error_message']; }
        else
        {
            $this->last_sequence_error_message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgRMIStatus', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgRMIStatus', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/RobotStatus field; extent 5..5 bytes. */
final class Ros2Fanuc_msgsMsgRobotStatus
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgRobotStatus',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31',
        "minimum" => 5,
        "maximum" => 5,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/RobotStatus',
        "constants" => [
            "CONTACT_STOP_MODE_NONE" => 0,
            "CONTACT_STOP_MODE_SAFE" => 1,
            "CONTACT_STOP_MODE_STOP" => 2,
            "CONTACT_STOP_MODE_DSBL" => 3,
            "CONTACT_STOP_MODE_ESCP" => 4
        ],
        "fields" => [
            [
                "name" => 'in_error',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'tp_enabled',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'e_stopped',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'motion_possible',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'contact_stop_mode',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original CONTACT_STOP_MODE_NONE constant; consumes no instance bytes. */
    public const CONTACT_STOP_MODE_NONE = 0;
    /** @brief Original CONTACT_STOP_MODE_SAFE constant; consumes no instance bytes. */
    public const CONTACT_STOP_MODE_SAFE = 1;
    /** @brief Original CONTACT_STOP_MODE_STOP constant; consumes no instance bytes. */
    public const CONTACT_STOP_MODE_STOP = 2;
    /** @brief Original CONTACT_STOP_MODE_DSBL constant; consumes no instance bytes. */
    public const CONTACT_STOP_MODE_DSBL = 3;
    /** @brief Original CONTACT_STOP_MODE_ESCP constant; consumes no instance bytes. */
    public const CONTACT_STOP_MODE_ESCP = 4;
    /** @brief Original in_error: bool; scalar; bound/count 0. */
    public mixed $in_error;
    /** @brief Original tp_enabled: bool; scalar; bound/count 0. */
    public mixed $tp_enabled;
    /** @brief Original e_stopped: bool; scalar; bound/count 0. */
    public mixed $e_stopped;
    /** @brief Original motion_possible: bool; scalar; bound/count 0. */
    public mixed $motion_possible;
    /** @brief Original contact_stop_mode: uint8; scalar; bound/count 0. */
    public mixed $contact_stop_mode;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('in_error', $values)) { $this->in_error = $values['in_error']; }
        else
        {
            $this->in_error = false;
        }
        if (array_key_exists('tp_enabled', $values)) { $this->tp_enabled = $values['tp_enabled']; }
        else
        {
            $this->tp_enabled = false;
        }
        if (array_key_exists('e_stopped', $values)) { $this->e_stopped = $values['e_stopped']; }
        else
        {
            $this->e_stopped = false;
        }
        if (array_key_exists('motion_possible', $values)) { $this->motion_possible = $values['motion_possible']; }
        else
        {
            $this->motion_possible = false;
        }
        if (array_key_exists('contact_stop_mode', $values)) { $this->contact_stop_mode = $values['contact_stop_mode']; }
        else
        {
            $this->contact_stop_mode = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgRobotStatus', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgRobotStatus', $bytes); }
}

/** @brief Own every original fanuc_msgs/msg/RobotStatusExt field; extent 18..1042 bytes. */
final class Ros2Fanuc_msgsMsgRobotStatusExt
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsMsgRobotStatusExt',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648',
        "minimum" => 18,
        "maximum" => 1042,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/msg/RobotStatusExt',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'error_code',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_motion',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'drives_powered',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'gen_override',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'speed_clamp_limit',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'control_mode',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original error_code: string; scalar; bound/count 0. */
    public mixed $error_code;
    /** @brief Original in_motion: bool; scalar; bound/count 0. */
    public mixed $in_motion;
    /** @brief Original drives_powered: bool; scalar; bound/count 0. */
    public mixed $drives_powered;
    /** @brief Original gen_override: int32; scalar; bound/count 0. */
    public mixed $gen_override;
    /** @brief Original speed_clamp_limit: float32; scalar; bound/count 0. */
    public mixed $speed_clamp_limit;
    /** @brief Original control_mode: string; scalar; bound/count 0. */
    public mixed $control_mode;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('error_code', $values)) { $this->error_code = $values['error_code']; }
        else
        {
            $this->error_code = '';
        }
        if (array_key_exists('in_motion', $values)) { $this->in_motion = $values['in_motion']; }
        else
        {
            $this->in_motion = false;
        }
        if (array_key_exists('drives_powered', $values)) { $this->drives_powered = $values['drives_powered']; }
        else
        {
            $this->drives_powered = false;
        }
        if (array_key_exists('gen_override', $values)) { $this->gen_override = $values['gen_override']; }
        else
        {
            $this->gen_override = 0;
        }
        if (array_key_exists('speed_clamp_limit', $values)) { $this->speed_clamp_limit = $values['speed_clamp_limit']; }
        else
        {
            $this->speed_clamp_limit = 0.0;
        }
        if (array_key_exists('control_mode', $values)) { $this->control_mode = $values['control_mode']; }
        else
        {
            $this->control_mode = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsMsgRobotStatusExt', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsMsgRobotStatusExt', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/CfgForceSensor_Request field; extent 8..8 bytes. */
final class Ros2Fanuc_msgsSrvCfgForceSensor_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvCfgForceSensor_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_01973ed21546cb747ad2ce2a990a8ec4e70efb66e1c8fc8856cf1082870984ff',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/CfgForceSensor_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'do_reset',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'fs_type',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original do_reset: uint32; scalar; bound/count 0. */
    public mixed $do_reset;
    /** @brief Original fs_type: uint32; scalar; bound/count 0. */
    public mixed $fs_type;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('do_reset', $values)) { $this->do_reset = $values['do_reset']; }
        else
        {
            $this->do_reset = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('fs_type', $values)) { $this->fs_type = $values['fs_type']; }
        else
        {
            $this->fs_type = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvCfgForceSensor_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvCfgForceSensor_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/CfgForceSensor_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvCfgForceSensor_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvCfgForceSensor_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_41799ce44c937b1524889391db61e2b4d35795055cb4bbacfe5cc8bbd5b9a37b',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/CfgForceSensor_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvCfgForceSensor_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvCfgForceSensor_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetAnalogIO_Request field; extent 6..70 bytes. */
final class Ros2Fanuc_msgsSrvGetAnalogIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetAnalogIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_cd567f97de2de581975c3d4f280eec545dea37c941d316fc3708bbc4d3af94d9',
        "minimum" => 6,
        "maximum" => 70,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetAnalogIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'io_type',
                "type" => 'Ros2Fanuc_msgsMsgIOType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original io_type: Ros2Fanuc_msgsMsgIOType; scalar; bound/count 0. */
    public mixed $io_type;
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('io_type', $values)) { $this->io_type = $values['io_type']; }
        else
        {
            $this->io_type = new Ros2Fanuc_msgsMsgIOType();
        }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetAnalogIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetAnalogIO_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetAnalogIO_Response field; extent 8..8 bytes. */
final class Ros2Fanuc_msgsSrvGetAnalogIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetAnalogIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3b53d3ce95d95454a782778c160fcc102ead869c5681c9c67224c373fef1b217',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetAnalogIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'value',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original value: float32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetAnalogIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetAnalogIO_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetBoolIO_Request field; extent 6..70 bytes. */
final class Ros2Fanuc_msgsSrvGetBoolIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetBoolIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ce8c4b1efd2828e92656e897baf041e8965367a236079231101807c898d4b50c',
        "minimum" => 6,
        "maximum" => 70,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetBoolIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'io_type',
                "type" => 'Ros2Fanuc_msgsMsgIOType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original io_type: Ros2Fanuc_msgsMsgIOType; scalar; bound/count 0. */
    public mixed $io_type;
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('io_type', $values)) { $this->io_type = $values['io_type']; }
        else
        {
            $this->io_type = new Ros2Fanuc_msgsMsgIOType();
        }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetBoolIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetBoolIO_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetBoolIO_Response field; extent 5..5 bytes. */
final class Ros2Fanuc_msgsSrvGetBoolIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetBoolIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7dbdcdde8d76c4ef422ea158551dd912273220c25a08f28fc8d19fdf8bc8a01c',
        "minimum" => 5,
        "maximum" => 5,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetBoolIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'value',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original value: bool; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetBoolIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetBoolIO_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetCartesianPosition_Request field; extent 1..1 bytes. */
final class Ros2Fanuc_msgsSrvGetCartesianPosition_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetCartesianPosition_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a694a17bde88131efcadac4f134464a7777beab4b09e17624ae7b173ab62c3e4',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetCartesianPosition_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetCartesianPosition_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetCartesianPosition_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetCartesianPosition_Response field; extent 54..54 bytes. */
final class Ros2Fanuc_msgsSrvGetCartesianPosition_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetCartesianPosition_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329',
        "minimum" => 54,
        "maximum" => 54,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetCartesianPosition_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'timetag',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'utool',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'uframe',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'front',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'up',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'left',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'flip',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'turn4',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'turn5',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'turn6',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'w',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'p',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'r',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext1',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext2',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext3',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original timetag: int32; scalar; bound/count 0. */
    public mixed $timetag;
    /** @brief Original utool: uint8; scalar; bound/count 0. */
    public mixed $utool;
    /** @brief Original uframe: uint8; scalar; bound/count 0. */
    public mixed $uframe;
    /** @brief Original front: uint8; scalar; bound/count 0. */
    public mixed $front;
    /** @brief Original up: uint8; scalar; bound/count 0. */
    public mixed $up;
    /** @brief Original left: uint8; scalar; bound/count 0. */
    public mixed $left;
    /** @brief Original flip: uint8; scalar; bound/count 0. */
    public mixed $flip;
    /** @brief Original turn4: int8; scalar; bound/count 0. */
    public mixed $turn4;
    /** @brief Original turn5: int8; scalar; bound/count 0. */
    public mixed $turn5;
    /** @brief Original turn6: int8; scalar; bound/count 0. */
    public mixed $turn6;
    /** @brief Original x: float32; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float32; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float32; scalar; bound/count 0. */
    public mixed $z;
    /** @brief Original w: float32; scalar; bound/count 0. */
    public mixed $w;
    /** @brief Original p: float32; scalar; bound/count 0. */
    public mixed $p;
    /** @brief Original r: float32; scalar; bound/count 0. */
    public mixed $r;
    /** @brief Original ext1: float32; scalar; bound/count 0. */
    public mixed $ext1;
    /** @brief Original ext2: float32; scalar; bound/count 0. */
    public mixed $ext2;
    /** @brief Original ext3: float32; scalar; bound/count 0. */
    public mixed $ext3;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('timetag', $values)) { $this->timetag = $values['timetag']; }
        else
        {
            $this->timetag = 0;
        }
        if (array_key_exists('utool', $values)) { $this->utool = $values['utool']; }
        else
        {
            $this->utool = 0;
        }
        if (array_key_exists('uframe', $values)) { $this->uframe = $values['uframe']; }
        else
        {
            $this->uframe = 0;
        }
        if (array_key_exists('front', $values)) { $this->front = $values['front']; }
        else
        {
            $this->front = 0;
        }
        if (array_key_exists('up', $values)) { $this->up = $values['up']; }
        else
        {
            $this->up = 0;
        }
        if (array_key_exists('left', $values)) { $this->left = $values['left']; }
        else
        {
            $this->left = 0;
        }
        if (array_key_exists('flip', $values)) { $this->flip = $values['flip']; }
        else
        {
            $this->flip = 0;
        }
        if (array_key_exists('turn4', $values)) { $this->turn4 = $values['turn4']; }
        else
        {
            $this->turn4 = 0;
        }
        if (array_key_exists('turn5', $values)) { $this->turn5 = $values['turn5']; }
        else
        {
            $this->turn5 = 0;
        }
        if (array_key_exists('turn6', $values)) { $this->turn6 = $values['turn6']; }
        else
        {
            $this->turn6 = 0;
        }
        if (array_key_exists('x', $values)) { $this->x = $values['x']; }
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) { $this->y = $values['y']; }
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) { $this->z = $values['z']; }
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('w', $values)) { $this->w = $values['w']; }
        else
        {
            $this->w = 0.0;
        }
        if (array_key_exists('p', $values)) { $this->p = $values['p']; }
        else
        {
            $this->p = 0.0;
        }
        if (array_key_exists('r', $values)) { $this->r = $values['r']; }
        else
        {
            $this->r = 0.0;
        }
        if (array_key_exists('ext1', $values)) { $this->ext1 = $values['ext1']; }
        else
        {
            $this->ext1 = 0.0;
        }
        if (array_key_exists('ext2', $values)) { $this->ext2 = $values['ext2']; }
        else
        {
            $this->ext2 = 0.0;
        }
        if (array_key_exists('ext3', $values)) { $this->ext3 = $values['ext3']; }
        else
        {
            $this->ext3 = 0.0;
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetCartesianPosition_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetCartesianPosition_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetGroupIO_Request field; extent 6..70 bytes. */
final class Ros2Fanuc_msgsSrvGetGroupIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetGroupIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_dbd2e8e791e8debc745843827ed296b51bf84159f4c4fe5d912c231d621de216',
        "minimum" => 6,
        "maximum" => 70,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetGroupIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'io_type',
                "type" => 'Ros2Fanuc_msgsMsgIOType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original io_type: Ros2Fanuc_msgsMsgIOType; scalar; bound/count 0. */
    public mixed $io_type;
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('io_type', $values)) { $this->io_type = $values['io_type']; }
        else
        {
            $this->io_type = new Ros2Fanuc_msgsMsgIOType();
        }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetGroupIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetGroupIO_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetGroupIO_Response field; extent 6..6 bytes. */
final class Ros2Fanuc_msgsSrvGetGroupIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetGroupIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9e131b91f36badc90ddae54a9855095241ab86c51b419b684d62879fae0bda7f',
        "minimum" => 6,
        "maximum" => 6,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetGroupIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'value',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original value: uint16; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetGroupIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetGroupIO_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetNumReg_Request field; extent 2..2 bytes. */
final class Ros2Fanuc_msgsSrvGetNumReg_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetNumReg_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_727b5ff4ab9c8976280df12e80d3aee03b31288087adb94ee82161574fc8dcb5',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetNumReg_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetNumReg_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetNumReg_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetNumReg_Response field; extent 8..8 bytes. */
final class Ros2Fanuc_msgsSrvGetNumReg_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetNumReg_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_78ae7ff82b3b2cd7d512fee8335f14a0759a71425fcf3d1b150dbe5e2a0179b3',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetNumReg_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'value',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original value: float32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetNumReg_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetNumReg_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetPayloadComp_Request field; extent 2..2 bytes. */
final class Ros2Fanuc_msgsSrvGetPayloadComp_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetPayloadComp_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d48b88619f4a68ceeed02336e9ef078c27905707a21d977448fbbfbd560f398d',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetPayloadComp_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'payload_schedule_id',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original payload_schedule_id: uint16; scalar; bound/count 0. */
    public mixed $payload_schedule_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('payload_schedule_id', $values)) { $this->payload_schedule_id = $values['payload_schedule_id']; }
        else
        {
            $this->payload_schedule_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetPayloadComp_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetPayloadComp_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetPayloadComp_Response field; extent 32..32 bytes. */
final class Ros2Fanuc_msgsSrvGetPayloadComp_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetPayloadComp_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_012b216c949f99755a36678b6be28d032f698b472ce4fa9ba975bc6d453ae4e4',
        "minimum" => 32,
        "maximum" => 32,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetPayloadComp_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'mass',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original mass: float32; scalar; bound/count 0. */
    public mixed $mass;
    /** @brief Original cg_x: float32; scalar; bound/count 0. */
    public mixed $cg_x;
    /** @brief Original cg_y: float32; scalar; bound/count 0. */
    public mixed $cg_y;
    /** @brief Original cg_z: float32; scalar; bound/count 0. */
    public mixed $cg_z;
    /** @brief Original in_x: float32; scalar; bound/count 0. */
    public mixed $in_x;
    /** @brief Original in_y: float32; scalar; bound/count 0. */
    public mixed $in_y;
    /** @brief Original in_z: float32; scalar; bound/count 0. */
    public mixed $in_z;
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('mass', $values)) { $this->mass = $values['mass']; }
        else
        {
            $this->mass = 0.0;
        }
        if (array_key_exists('cg_x', $values)) { $this->cg_x = $values['cg_x']; }
        else
        {
            $this->cg_x = 0.0;
        }
        if (array_key_exists('cg_y', $values)) { $this->cg_y = $values['cg_y']; }
        else
        {
            $this->cg_y = 0.0;
        }
        if (array_key_exists('cg_z', $values)) { $this->cg_z = $values['cg_z']; }
        else
        {
            $this->cg_z = 0.0;
        }
        if (array_key_exists('in_x', $values)) { $this->in_x = $values['in_x']; }
        else
        {
            $this->in_x = 0.0;
        }
        if (array_key_exists('in_y', $values)) { $this->in_y = $values['in_y']; }
        else
        {
            $this->in_y = 0.0;
        }
        if (array_key_exists('in_z', $values)) { $this->in_z = $values['in_z']; }
        else
        {
            $this->in_z = 0.0;
        }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetPayloadComp_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetPayloadComp_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetPayloadID_Request field; extent 0..0 bytes. */
final class Ros2Fanuc_msgsSrvGetPayloadID_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetPayloadID_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6c943659905c8adc7aa4b73832584994c83bfe009d18dc30a11d99b9fc0d6eef',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetPayloadID_Request',
        "constants" => [

        ],
        "fields" => [

        ]
    ];
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetPayloadID_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetPayloadID_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetPayloadID_Response field; extent 6..6 bytes. */
final class Ros2Fanuc_msgsSrvGetPayloadID_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetPayloadID_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5551f4eab590c87fd7679d593c9c446903bdaa02aa1ed2512b146768122a950c',
        "minimum" => 6,
        "maximum" => 6,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetPayloadID_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'payload_schedule_id',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original payload_schedule_id: uint16; scalar; bound/count 0. */
    public mixed $payload_schedule_id;
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('payload_schedule_id', $values)) { $this->payload_schedule_id = $values['payload_schedule_id']; }
        else
        {
            $this->payload_schedule_id = 0;
        }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetPayloadID_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetPayloadID_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetPayloadValue_Request field; extent 2..2 bytes. */
final class Ros2Fanuc_msgsSrvGetPayloadValue_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetPayloadValue_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d82667bd644873ae4fa5de0289ed94791eb2a7af49c1b8f86ed7f91cf875407a',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetPayloadValue_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'payload_schedule_id',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original payload_schedule_id: uint16; scalar; bound/count 0. */
    public mixed $payload_schedule_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('payload_schedule_id', $values)) { $this->payload_schedule_id = $values['payload_schedule_id']; }
        else
        {
            $this->payload_schedule_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetPayloadValue_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetPayloadValue_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetPayloadValue_Response field; extent 32..32 bytes. */
final class Ros2Fanuc_msgsSrvGetPayloadValue_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetPayloadValue_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c3361ceec2ccd5b4d3ef566cbd885f8cddba75b4f1dc1712144147827689f06d',
        "minimum" => 32,
        "maximum" => 32,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetPayloadValue_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'mass',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original mass: float32; scalar; bound/count 0. */
    public mixed $mass;
    /** @brief Original cg_x: float32; scalar; bound/count 0. */
    public mixed $cg_x;
    /** @brief Original cg_y: float32; scalar; bound/count 0. */
    public mixed $cg_y;
    /** @brief Original cg_z: float32; scalar; bound/count 0. */
    public mixed $cg_z;
    /** @brief Original in_x: float32; scalar; bound/count 0. */
    public mixed $in_x;
    /** @brief Original in_y: float32; scalar; bound/count 0. */
    public mixed $in_y;
    /** @brief Original in_z: float32; scalar; bound/count 0. */
    public mixed $in_z;
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('mass', $values)) { $this->mass = $values['mass']; }
        else
        {
            $this->mass = 0.0;
        }
        if (array_key_exists('cg_x', $values)) { $this->cg_x = $values['cg_x']; }
        else
        {
            $this->cg_x = 0.0;
        }
        if (array_key_exists('cg_y', $values)) { $this->cg_y = $values['cg_y']; }
        else
        {
            $this->cg_y = 0.0;
        }
        if (array_key_exists('cg_z', $values)) { $this->cg_z = $values['cg_z']; }
        else
        {
            $this->cg_z = 0.0;
        }
        if (array_key_exists('in_x', $values)) { $this->in_x = $values['in_x']; }
        else
        {
            $this->in_x = 0.0;
        }
        if (array_key_exists('in_y', $values)) { $this->in_y = $values['in_y']; }
        else
        {
            $this->in_y = 0.0;
        }
        if (array_key_exists('in_z', $values)) { $this->in_z = $values['in_z']; }
        else
        {
            $this->in_z = 0.0;
        }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetPayloadValue_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetPayloadValue_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetPosReg_Request field; extent 2..2 bytes. */
final class Ros2Fanuc_msgsSrvGetPosReg_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetPosReg_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f7f1391c5ea385bff615d95c5e38f01a809828b142112829dc436916b063505a',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetPosReg_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetPosReg_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetPosReg_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetPosReg_Response field; extent 89..601 bytes. */
final class Ros2Fanuc_msgsSrvGetPosReg_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetPosReg_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e540225b0d532c460905582ad99ee175dd771e971c7e75f5dfb9325d39ed6b27',
        "minimum" => 89,
        "maximum" => 601,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetPosReg_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'representation',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'utool',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'uframe',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'front',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'up',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'left',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'flip',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'turn4',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'turn5',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'turn6',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'w',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'p',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'r',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext1',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext2',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext3',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j1',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j2',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j3',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j4',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j5',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j6',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j7',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j8',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j9',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original representation: string; scalar; bound/count 0. */
    public mixed $representation;
    /** @brief Original utool: uint8; scalar; bound/count 0. */
    public mixed $utool;
    /** @brief Original uframe: uint8; scalar; bound/count 0. */
    public mixed $uframe;
    /** @brief Original front: uint8; scalar; bound/count 0. */
    public mixed $front;
    /** @brief Original up: uint8; scalar; bound/count 0. */
    public mixed $up;
    /** @brief Original left: uint8; scalar; bound/count 0. */
    public mixed $left;
    /** @brief Original flip: uint8; scalar; bound/count 0. */
    public mixed $flip;
    /** @brief Original turn4: int8; scalar; bound/count 0. */
    public mixed $turn4;
    /** @brief Original turn5: int8; scalar; bound/count 0. */
    public mixed $turn5;
    /** @brief Original turn6: int8; scalar; bound/count 0. */
    public mixed $turn6;
    /** @brief Original x: float32; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float32; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float32; scalar; bound/count 0. */
    public mixed $z;
    /** @brief Original w: float32; scalar; bound/count 0. */
    public mixed $w;
    /** @brief Original p: float32; scalar; bound/count 0. */
    public mixed $p;
    /** @brief Original r: float32; scalar; bound/count 0. */
    public mixed $r;
    /** @brief Original ext1: float32; scalar; bound/count 0. */
    public mixed $ext1;
    /** @brief Original ext2: float32; scalar; bound/count 0. */
    public mixed $ext2;
    /** @brief Original ext3: float32; scalar; bound/count 0. */
    public mixed $ext3;
    /** @brief Original j1: float32; scalar; bound/count 0. */
    public mixed $j1;
    /** @brief Original j2: float32; scalar; bound/count 0. */
    public mixed $j2;
    /** @brief Original j3: float32; scalar; bound/count 0. */
    public mixed $j3;
    /** @brief Original j4: float32; scalar; bound/count 0. */
    public mixed $j4;
    /** @brief Original j5: float32; scalar; bound/count 0. */
    public mixed $j5;
    /** @brief Original j6: float32; scalar; bound/count 0. */
    public mixed $j6;
    /** @brief Original j7: float32; scalar; bound/count 0. */
    public mixed $j7;
    /** @brief Original j8: float32; scalar; bound/count 0. */
    public mixed $j8;
    /** @brief Original j9: float32; scalar; bound/count 0. */
    public mixed $j9;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('representation', $values)) { $this->representation = $values['representation']; }
        else
        {
            $this->representation = '';
        }
        if (array_key_exists('utool', $values)) { $this->utool = $values['utool']; }
        else
        {
            $this->utool = 0;
        }
        if (array_key_exists('uframe', $values)) { $this->uframe = $values['uframe']; }
        else
        {
            $this->uframe = 0;
        }
        if (array_key_exists('front', $values)) { $this->front = $values['front']; }
        else
        {
            $this->front = 0;
        }
        if (array_key_exists('up', $values)) { $this->up = $values['up']; }
        else
        {
            $this->up = 0;
        }
        if (array_key_exists('left', $values)) { $this->left = $values['left']; }
        else
        {
            $this->left = 0;
        }
        if (array_key_exists('flip', $values)) { $this->flip = $values['flip']; }
        else
        {
            $this->flip = 0;
        }
        if (array_key_exists('turn4', $values)) { $this->turn4 = $values['turn4']; }
        else
        {
            $this->turn4 = 0;
        }
        if (array_key_exists('turn5', $values)) { $this->turn5 = $values['turn5']; }
        else
        {
            $this->turn5 = 0;
        }
        if (array_key_exists('turn6', $values)) { $this->turn6 = $values['turn6']; }
        else
        {
            $this->turn6 = 0;
        }
        if (array_key_exists('x', $values)) { $this->x = $values['x']; }
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) { $this->y = $values['y']; }
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) { $this->z = $values['z']; }
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('w', $values)) { $this->w = $values['w']; }
        else
        {
            $this->w = 0.0;
        }
        if (array_key_exists('p', $values)) { $this->p = $values['p']; }
        else
        {
            $this->p = 0.0;
        }
        if (array_key_exists('r', $values)) { $this->r = $values['r']; }
        else
        {
            $this->r = 0.0;
        }
        if (array_key_exists('ext1', $values)) { $this->ext1 = $values['ext1']; }
        else
        {
            $this->ext1 = 0.0;
        }
        if (array_key_exists('ext2', $values)) { $this->ext2 = $values['ext2']; }
        else
        {
            $this->ext2 = 0.0;
        }
        if (array_key_exists('ext3', $values)) { $this->ext3 = $values['ext3']; }
        else
        {
            $this->ext3 = 0.0;
        }
        if (array_key_exists('j1', $values)) { $this->j1 = $values['j1']; }
        else
        {
            $this->j1 = 0.0;
        }
        if (array_key_exists('j2', $values)) { $this->j2 = $values['j2']; }
        else
        {
            $this->j2 = 0.0;
        }
        if (array_key_exists('j3', $values)) { $this->j3 = $values['j3']; }
        else
        {
            $this->j3 = 0.0;
        }
        if (array_key_exists('j4', $values)) { $this->j4 = $values['j4']; }
        else
        {
            $this->j4 = 0.0;
        }
        if (array_key_exists('j5', $values)) { $this->j5 = $values['j5']; }
        else
        {
            $this->j5 = 0.0;
        }
        if (array_key_exists('j6', $values)) { $this->j6 = $values['j6']; }
        else
        {
            $this->j6 = 0.0;
        }
        if (array_key_exists('j7', $values)) { $this->j7 = $values['j7']; }
        else
        {
            $this->j7 = 0.0;
        }
        if (array_key_exists('j8', $values)) { $this->j8 = $values['j8']; }
        else
        {
            $this->j8 = 0.0;
        }
        if (array_key_exists('j9', $values)) { $this->j9 = $values['j9']; }
        else
        {
            $this->j9 = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetPosReg_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetPosReg_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetTCPSpeed_Request field; extent 1..1 bytes. */
final class Ros2Fanuc_msgsSrvGetTCPSpeed_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetTCPSpeed_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6bdfd44465b75bbd4e232f802dbd3c0bfa28e90a93f9a28b3c15fb150bce7ac7',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetTCPSpeed_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetTCPSpeed_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetTCPSpeed_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetTCPSpeed_Response field; extent 13..13 bytes. */
final class Ros2Fanuc_msgsSrvGetTCPSpeed_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetTCPSpeed_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3ec07d99342f275506452f32076f9e1ea01bf32f43662311708a9b44ca951147',
        "minimum" => 13,
        "maximum" => 13,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetTCPSpeed_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'timetag',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'speed',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original timetag: int32; scalar; bound/count 0. */
    public mixed $timetag;
    /** @brief Original speed: float32; scalar; bound/count 0. */
    public mixed $speed;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('timetag', $values)) { $this->timetag = $values['timetag']; }
        else
        {
            $this->timetag = 0;
        }
        if (array_key_exists('speed', $values)) { $this->speed = $values['speed']; }
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetTCPSpeed_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetTCPSpeed_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetUFrameData_Request field; extent 2..2 bytes. */
final class Ros2Fanuc_msgsSrvGetUFrameData_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetUFrameData_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c1ef7077fd7f61ed8ff46931c8e39c5950658cfe1d36cffac10083ab304307be',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetUFrameData_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'uframe_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original uframe_number: uint8; scalar; bound/count 0. */
    public mixed $uframe_number;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('uframe_number', $values)) { $this->uframe_number = $values['uframe_number']; }
        else
        {
            $this->uframe_number = 0;
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetUFrameData_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetUFrameData_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetUFrameData_Response field; extent 30..30 bytes. */
final class Ros2Fanuc_msgsSrvGetUFrameData_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetUFrameData_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f956e1447bd4a15f547fdf5d6775836018d50153270fe8863c4b30d83422fd2e',
        "minimum" => 30,
        "maximum" => 30,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetUFrameData_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'uframe_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'frame',
                "type" => 'Ros2Fanuc_msgsMsgFrame',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original uframe_number: uint8; scalar; bound/count 0. */
    public mixed $uframe_number;
    /** @brief Original frame: Ros2Fanuc_msgsMsgFrame; scalar; bound/count 0. */
    public mixed $frame;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('uframe_number', $values)) { $this->uframe_number = $values['uframe_number']; }
        else
        {
            $this->uframe_number = 0;
        }
        if (array_key_exists('frame', $values)) { $this->frame = $values['frame']; }
        else
        {
            $this->frame = new Ros2Fanuc_msgsMsgFrame();
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetUFrameData_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetUFrameData_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetUFrameUTool_Request field; extent 1..1 bytes. */
final class Ros2Fanuc_msgsSrvGetUFrameUTool_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetUFrameUTool_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3d57da6f8003b33b2a079d4f284eb0f182d7e088074112b7f4ee25d3113bd443',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetUFrameUTool_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetUFrameUTool_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetUFrameUTool_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetUFrameUTool_Response field; extent 7..7 bytes. */
final class Ros2Fanuc_msgsSrvGetUFrameUTool_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetUFrameUTool_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f9cb64b89f17b6811e4073b9f94d0fd6844d21ec4b846f78bfd13cb14a35a6b3',
        "minimum" => 7,
        "maximum" => 7,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetUFrameUTool_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'uframe_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'utool_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original uframe_number: uint8; scalar; bound/count 0. */
    public mixed $uframe_number;
    /** @brief Original utool_number: uint8; scalar; bound/count 0. */
    public mixed $utool_number;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('uframe_number', $values)) { $this->uframe_number = $values['uframe_number']; }
        else
        {
            $this->uframe_number = 0;
        }
        if (array_key_exists('utool_number', $values)) { $this->utool_number = $values['utool_number']; }
        else
        {
            $this->utool_number = 0;
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetUFrameUTool_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetUFrameUTool_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetUToolData_Request field; extent 2..2 bytes. */
final class Ros2Fanuc_msgsSrvGetUToolData_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetUToolData_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_10c3799dcb1b09dbcb6d1b794a00ecfaf69a8f457d95eeb92855f79dba7be1bc',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetUToolData_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'utool_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original utool_number: uint8; scalar; bound/count 0. */
    public mixed $utool_number;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('utool_number', $values)) { $this->utool_number = $values['utool_number']; }
        else
        {
            $this->utool_number = 0;
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetUToolData_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetUToolData_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/GetUToolData_Response field; extent 30..30 bytes. */
final class Ros2Fanuc_msgsSrvGetUToolData_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvGetUToolData_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f3a2b94f337cec9c58156b803675f38885350cc3fc3171234c0d361afc800d81',
        "minimum" => 30,
        "maximum" => 30,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/GetUToolData_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'utool_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'frame',
                "type" => 'Ros2Fanuc_msgsMsgFrame',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original utool_number: uint8; scalar; bound/count 0. */
    public mixed $utool_number;
    /** @brief Original frame: Ros2Fanuc_msgsMsgFrame; scalar; bound/count 0. */
    public mixed $frame;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('utool_number', $values)) { $this->utool_number = $values['utool_number']; }
        else
        {
            $this->utool_number = 0;
        }
        if (array_key_exists('frame', $values)) { $this->frame = $values['frame']; }
        else
        {
            $this->frame = new Ros2Fanuc_msgsMsgFrame();
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvGetUToolData_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvGetUToolData_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/ReadError_Request field; extent 1..1 bytes. */
final class Ros2Fanuc_msgsSrvReadError_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvReadError_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4b67ed8e2ecccefb6bdead80249f5916e6ea192d822183292db43351839fb6f9',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/ReadError_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'count',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '1',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 1
            ]
        ]
    ];
    /** @brief Original count: uint8; scalar; bound/count 0. */
    public mixed $count;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('count', $values)) { $this->count = $values['count']; }
        else
        {
            $this->count = 1;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvReadError_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvReadError_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/ReadError_Response field; extent 25..2585 bytes. */
final class Ros2Fanuc_msgsSrvReadError_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvReadError_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6e28db10c7afb06cb1256f6d74a43e26c5efa6c13fec8826ae0e623a5eb954b6',
        "minimum" => 25,
        "maximum" => 2585,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/ReadError_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'count',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'error_data',
                "type" => 'string',
                "array" => 'array',
                "count" => 5,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original count: uint8; scalar; bound/count 0. */
    public mixed $count;
    /** @brief Original error_data: string; array; bound/count 5. */
    public mixed $error_data;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('count', $values)) { $this->count = $values['count']; }
        else
        {
            $this->count = 0;
        }
        if (array_key_exists('error_data', $values)) { $this->error_data = $values['error_data']; }
        else
        {
            $this->error_data = [];
            for ($i = 0; $i < 5; ++$i) { $this->error_data[] = ''; }
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvReadError_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvReadError_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/Reset_Request field; extent 0..0 bytes. */
final class Ros2Fanuc_msgsSrvReset_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvReset_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b73f661d569f6af8dad1cd6625f4c0c55ef2c14c79b3e9af0f17fdc02736abc4',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/Reset_Request',
        "constants" => [

        ],
        "fields" => [

        ]
    ];
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvReset_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvReset_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/Reset_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvReset_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvReset_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5e9b92e5a112b4934ce0893afaa09156fdb47c26b0aa6ae9a27d61920d308ab8',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/Reset_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvReset_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvReset_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetAnalogIO_Request field; extent 10..74 bytes. */
final class Ros2Fanuc_msgsSrvSetAnalogIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetAnalogIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a6bb4acfae23db79464faff849f359657537026d7c79f8a6c60259caec5e87f4',
        "minimum" => 10,
        "maximum" => 74,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetAnalogIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'io_type',
                "type" => 'Ros2Fanuc_msgsMsgIOType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'value',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original io_type: Ros2Fanuc_msgsMsgIOType; scalar; bound/count 0. */
    public mixed $io_type;
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Original value: float32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('io_type', $values)) { $this->io_type = $values['io_type']; }
        else
        {
            $this->io_type = new Ros2Fanuc_msgsMsgIOType();
        }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetAnalogIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetAnalogIO_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetAnalogIO_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSetAnalogIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetAnalogIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_aeac383e2c4a292f1237494bff5b261cd0197542e00456b4ee0edf9b7fe8a39b',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetAnalogIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetAnalogIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetAnalogIO_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetBoolIO_Request field; extent 7..71 bytes. */
final class Ros2Fanuc_msgsSrvSetBoolIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetBoolIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0e8ace58c769670a2519e733d020a3ca902bff99982514d5cd9ecda391c1a4cf',
        "minimum" => 7,
        "maximum" => 71,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetBoolIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'io_type',
                "type" => 'Ros2Fanuc_msgsMsgIOType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'value',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original io_type: Ros2Fanuc_msgsMsgIOType; scalar; bound/count 0. */
    public mixed $io_type;
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Original value: bool; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('io_type', $values)) { $this->io_type = $values['io_type']; }
        else
        {
            $this->io_type = new Ros2Fanuc_msgsMsgIOType();
        }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetBoolIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetBoolIO_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetBoolIO_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSetBoolIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetBoolIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c9c68ca577dd6e4d1743385d9c69c8f1c6e0780ae247877d823ab97a68e675a0',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetBoolIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetBoolIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetBoolIO_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetGenOverride_Request field; extent 1..1 bytes. */
final class Ros2Fanuc_msgsSrvSetGenOverride_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetGenOverride_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7d321e33aaf6f58013c33ffc012c1ddbd27aefff3f21d7456030a1d590362039',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetGenOverride_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'value',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original value: int8; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetGenOverride_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetGenOverride_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetGenOverride_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSetGenOverride_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetGenOverride_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1ffcb25cad7dbf51c216753dac2c117a191fb081a5a562e63d34d447e61f0a59',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetGenOverride_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetGenOverride_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetGenOverride_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetGroupIO_Request field; extent 8..72 bytes. */
final class Ros2Fanuc_msgsSrvSetGroupIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetGroupIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_42a76aec283e26e3a2c99bb27a23778e34effb6c3328754793f783038a2b84bd',
        "minimum" => 8,
        "maximum" => 72,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetGroupIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'io_type',
                "type" => 'Ros2Fanuc_msgsMsgIOType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'value',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original io_type: Ros2Fanuc_msgsMsgIOType; scalar; bound/count 0. */
    public mixed $io_type;
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Original value: uint16; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('io_type', $values)) { $this->io_type = $values['io_type']; }
        else
        {
            $this->io_type = new Ros2Fanuc_msgsMsgIOType();
        }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetGroupIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetGroupIO_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetGroupIO_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSetGroupIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetGroupIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_aa6d2c99e8817273f8f2ab179df61d60efd8ee2cee0e1ec76c647956e22bff17',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetGroupIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetGroupIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetGroupIO_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetNumReg_Request field; extent 6..6 bytes. */
final class Ros2Fanuc_msgsSrvSetNumReg_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetNumReg_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7e362b671b8770db33f3876308c41a930863a0805771fa05fcbb170782207e36',
        "minimum" => 6,
        "maximum" => 6,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetNumReg_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'value',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Original value: float32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetNumReg_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetNumReg_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetNumReg_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSetNumReg_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetNumReg_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7c7850ad8bb5c861d9b436311a8cf985e2e029d362877be80c5a6cb19021e482',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetNumReg_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetNumReg_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetNumReg_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetPayloadComp_Request field; extent 30..30 bytes. */
final class Ros2Fanuc_msgsSrvSetPayloadComp_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetPayloadComp_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_92c495d71657249e15c172e850aa91869929a25817437567778df1b01d9037a8',
        "minimum" => 30,
        "maximum" => 30,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetPayloadComp_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'payload_schedule_id',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'mass',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original payload_schedule_id: uint16; scalar; bound/count 0. */
    public mixed $payload_schedule_id;
    /** @brief Original mass: float32; scalar; bound/count 0. */
    public mixed $mass;
    /** @brief Original cg_x: float32; scalar; bound/count 0. */
    public mixed $cg_x;
    /** @brief Original cg_y: float32; scalar; bound/count 0. */
    public mixed $cg_y;
    /** @brief Original cg_z: float32; scalar; bound/count 0. */
    public mixed $cg_z;
    /** @brief Original in_x: float32; scalar; bound/count 0. */
    public mixed $in_x;
    /** @brief Original in_y: float32; scalar; bound/count 0. */
    public mixed $in_y;
    /** @brief Original in_z: float32; scalar; bound/count 0. */
    public mixed $in_z;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('payload_schedule_id', $values)) { $this->payload_schedule_id = $values['payload_schedule_id']; }
        else
        {
            $this->payload_schedule_id = 0;
        }
        if (array_key_exists('mass', $values)) { $this->mass = $values['mass']; }
        else
        {
            $this->mass = 0.0;
        }
        if (array_key_exists('cg_x', $values)) { $this->cg_x = $values['cg_x']; }
        else
        {
            $this->cg_x = 0.0;
        }
        if (array_key_exists('cg_y', $values)) { $this->cg_y = $values['cg_y']; }
        else
        {
            $this->cg_y = 0.0;
        }
        if (array_key_exists('cg_z', $values)) { $this->cg_z = $values['cg_z']; }
        else
        {
            $this->cg_z = 0.0;
        }
        if (array_key_exists('in_x', $values)) { $this->in_x = $values['in_x']; }
        else
        {
            $this->in_x = 0.0;
        }
        if (array_key_exists('in_y', $values)) { $this->in_y = $values['in_y']; }
        else
        {
            $this->in_y = 0.0;
        }
        if (array_key_exists('in_z', $values)) { $this->in_z = $values['in_z']; }
        else
        {
            $this->in_z = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetPayloadComp_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetPayloadComp_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetPayloadComp_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSetPayloadComp_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetPayloadComp_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_37a9876e2a9c514fa8c4337ff1351f778d350318bdc6d8aa5d569b4039a2f76b',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetPayloadComp_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetPayloadComp_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetPayloadComp_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetPayloadID_Request field; extent 2..2 bytes. */
final class Ros2Fanuc_msgsSrvSetPayloadID_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetPayloadID_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_aa15b59db17d2afb7ef9e74676a9b744763954ae063efafb91a3ab3c9852a1c0',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetPayloadID_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'payload_schedule_id',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ]
        ]
    ];
    /** @brief Original payload_schedule_id: uint16; scalar; bound/count 0. */
    public mixed $payload_schedule_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('payload_schedule_id', $values)) { $this->payload_schedule_id = $values['payload_schedule_id']; }
        else
        {
            $this->payload_schedule_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetPayloadID_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetPayloadID_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetPayloadID_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSetPayloadID_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetPayloadID_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7b704b36da10dc71b4cfaad92ea02ed22e4966077dc0940b03b8b8e49c5769c7',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetPayloadID_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetPayloadID_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetPayloadID_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetPayloadValue_Request field; extent 31..31 bytes. */
final class Ros2Fanuc_msgsSrvSetPayloadValue_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetPayloadValue_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5d56ce8f2f8df9c3450d6a5dc77e9e77861471805aa6b9c6f8815c2e7c324974',
        "minimum" => 31,
        "maximum" => 31,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetPayloadValue_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'payload_schedule_id',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'mass',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cg_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'use_in',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'in_x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'in_z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original payload_schedule_id: uint16; scalar; bound/count 0. */
    public mixed $payload_schedule_id;
    /** @brief Original mass: float32; scalar; bound/count 0. */
    public mixed $mass;
    /** @brief Original cg_x: float32; scalar; bound/count 0. */
    public mixed $cg_x;
    /** @brief Original cg_y: float32; scalar; bound/count 0. */
    public mixed $cg_y;
    /** @brief Original cg_z: float32; scalar; bound/count 0. */
    public mixed $cg_z;
    /** @brief Original use_in: bool; scalar; bound/count 0. */
    public mixed $use_in;
    /** @brief Original in_x: float32; scalar; bound/count 0. */
    public mixed $in_x;
    /** @brief Original in_y: float32; scalar; bound/count 0. */
    public mixed $in_y;
    /** @brief Original in_z: float32; scalar; bound/count 0. */
    public mixed $in_z;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('payload_schedule_id', $values)) { $this->payload_schedule_id = $values['payload_schedule_id']; }
        else
        {
            $this->payload_schedule_id = 0;
        }
        if (array_key_exists('mass', $values)) { $this->mass = $values['mass']; }
        else
        {
            $this->mass = 0.0;
        }
        if (array_key_exists('cg_x', $values)) { $this->cg_x = $values['cg_x']; }
        else
        {
            $this->cg_x = 0.0;
        }
        if (array_key_exists('cg_y', $values)) { $this->cg_y = $values['cg_y']; }
        else
        {
            $this->cg_y = 0.0;
        }
        if (array_key_exists('cg_z', $values)) { $this->cg_z = $values['cg_z']; }
        else
        {
            $this->cg_z = 0.0;
        }
        if (array_key_exists('use_in', $values)) { $this->use_in = $values['use_in']; }
        else
        {
            $this->use_in = false;
        }
        if (array_key_exists('in_x', $values)) { $this->in_x = $values['in_x']; }
        else
        {
            $this->in_x = 0.0;
        }
        if (array_key_exists('in_y', $values)) { $this->in_y = $values['in_y']; }
        else
        {
            $this->in_y = 0.0;
        }
        if (array_key_exists('in_z', $values)) { $this->in_z = $values['in_z']; }
        else
        {
            $this->in_z = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetPayloadValue_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetPayloadValue_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetPayloadValue_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSetPayloadValue_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetPayloadValue_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_09f30071b49ac57353429e8a2862ee80d3dcab9237e8192d008c12a3628cc6ab',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetPayloadValue_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetPayloadValue_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetPayloadValue_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetPosReg_Request field; extent 87..599 bytes. */
final class Ros2Fanuc_msgsSrvSetPosReg_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetPosReg_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f9af742e55a044a1a363a45cbe4a0a8ce4ca62fcaf43759041cef89149d96d30',
        "minimum" => 87,
        "maximum" => 599,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetPosReg_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'index',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'representation',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'utool',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'uframe',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'front',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'up',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'left',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'flip',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'turn4',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'turn5',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'turn6',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'w',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'p',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'r',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext1',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext2',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext3',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j1',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j2',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j3',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j4',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j5',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j6',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j7',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j8',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'j9',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original index: uint16; scalar; bound/count 0. */
    public mixed $index;
    /** @brief Original representation: string; scalar; bound/count 0. */
    public mixed $representation;
    /** @brief Original utool: uint8; scalar; bound/count 0. */
    public mixed $utool;
    /** @brief Original uframe: uint8; scalar; bound/count 0. */
    public mixed $uframe;
    /** @brief Original front: uint8; scalar; bound/count 0. */
    public mixed $front;
    /** @brief Original up: uint8; scalar; bound/count 0. */
    public mixed $up;
    /** @brief Original left: uint8; scalar; bound/count 0. */
    public mixed $left;
    /** @brief Original flip: uint8; scalar; bound/count 0. */
    public mixed $flip;
    /** @brief Original turn4: int8; scalar; bound/count 0. */
    public mixed $turn4;
    /** @brief Original turn5: int8; scalar; bound/count 0. */
    public mixed $turn5;
    /** @brief Original turn6: int8; scalar; bound/count 0. */
    public mixed $turn6;
    /** @brief Original x: float32; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float32; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float32; scalar; bound/count 0. */
    public mixed $z;
    /** @brief Original w: float32; scalar; bound/count 0. */
    public mixed $w;
    /** @brief Original p: float32; scalar; bound/count 0. */
    public mixed $p;
    /** @brief Original r: float32; scalar; bound/count 0. */
    public mixed $r;
    /** @brief Original ext1: float32; scalar; bound/count 0. */
    public mixed $ext1;
    /** @brief Original ext2: float32; scalar; bound/count 0. */
    public mixed $ext2;
    /** @brief Original ext3: float32; scalar; bound/count 0. */
    public mixed $ext3;
    /** @brief Original j1: float32; scalar; bound/count 0. */
    public mixed $j1;
    /** @brief Original j2: float32; scalar; bound/count 0. */
    public mixed $j2;
    /** @brief Original j3: float32; scalar; bound/count 0. */
    public mixed $j3;
    /** @brief Original j4: float32; scalar; bound/count 0. */
    public mixed $j4;
    /** @brief Original j5: float32; scalar; bound/count 0. */
    public mixed $j5;
    /** @brief Original j6: float32; scalar; bound/count 0. */
    public mixed $j6;
    /** @brief Original j7: float32; scalar; bound/count 0. */
    public mixed $j7;
    /** @brief Original j8: float32; scalar; bound/count 0. */
    public mixed $j8;
    /** @brief Original j9: float32; scalar; bound/count 0. */
    public mixed $j9;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('index', $values)) { $this->index = $values['index']; }
        else
        {
            $this->index = 0;
        }
        if (array_key_exists('representation', $values)) { $this->representation = $values['representation']; }
        else
        {
            $this->representation = '';
        }
        if (array_key_exists('utool', $values)) { $this->utool = $values['utool']; }
        else
        {
            $this->utool = 0;
        }
        if (array_key_exists('uframe', $values)) { $this->uframe = $values['uframe']; }
        else
        {
            $this->uframe = 0;
        }
        if (array_key_exists('front', $values)) { $this->front = $values['front']; }
        else
        {
            $this->front = 0;
        }
        if (array_key_exists('up', $values)) { $this->up = $values['up']; }
        else
        {
            $this->up = 0;
        }
        if (array_key_exists('left', $values)) { $this->left = $values['left']; }
        else
        {
            $this->left = 0;
        }
        if (array_key_exists('flip', $values)) { $this->flip = $values['flip']; }
        else
        {
            $this->flip = 0;
        }
        if (array_key_exists('turn4', $values)) { $this->turn4 = $values['turn4']; }
        else
        {
            $this->turn4 = 0;
        }
        if (array_key_exists('turn5', $values)) { $this->turn5 = $values['turn5']; }
        else
        {
            $this->turn5 = 0;
        }
        if (array_key_exists('turn6', $values)) { $this->turn6 = $values['turn6']; }
        else
        {
            $this->turn6 = 0;
        }
        if (array_key_exists('x', $values)) { $this->x = $values['x']; }
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) { $this->y = $values['y']; }
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) { $this->z = $values['z']; }
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('w', $values)) { $this->w = $values['w']; }
        else
        {
            $this->w = 0.0;
        }
        if (array_key_exists('p', $values)) { $this->p = $values['p']; }
        else
        {
            $this->p = 0.0;
        }
        if (array_key_exists('r', $values)) { $this->r = $values['r']; }
        else
        {
            $this->r = 0.0;
        }
        if (array_key_exists('ext1', $values)) { $this->ext1 = $values['ext1']; }
        else
        {
            $this->ext1 = 0.0;
        }
        if (array_key_exists('ext2', $values)) { $this->ext2 = $values['ext2']; }
        else
        {
            $this->ext2 = 0.0;
        }
        if (array_key_exists('ext3', $values)) { $this->ext3 = $values['ext3']; }
        else
        {
            $this->ext3 = 0.0;
        }
        if (array_key_exists('j1', $values)) { $this->j1 = $values['j1']; }
        else
        {
            $this->j1 = 0.0;
        }
        if (array_key_exists('j2', $values)) { $this->j2 = $values['j2']; }
        else
        {
            $this->j2 = 0.0;
        }
        if (array_key_exists('j3', $values)) { $this->j3 = $values['j3']; }
        else
        {
            $this->j3 = 0.0;
        }
        if (array_key_exists('j4', $values)) { $this->j4 = $values['j4']; }
        else
        {
            $this->j4 = 0.0;
        }
        if (array_key_exists('j5', $values)) { $this->j5 = $values['j5']; }
        else
        {
            $this->j5 = 0.0;
        }
        if (array_key_exists('j6', $values)) { $this->j6 = $values['j6']; }
        else
        {
            $this->j6 = 0.0;
        }
        if (array_key_exists('j7', $values)) { $this->j7 = $values['j7']; }
        else
        {
            $this->j7 = 0.0;
        }
        if (array_key_exists('j8', $values)) { $this->j8 = $values['j8']; }
        else
        {
            $this->j8 = 0.0;
        }
        if (array_key_exists('j9', $values)) { $this->j9 = $values['j9']; }
        else
        {
            $this->j9 = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetPosReg_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetPosReg_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetPosReg_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSetPosReg_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetPosReg_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_fb6f889d30c921df31f55cdc760346eb0d655816e71b52d4aac7a1e56d4e9cb2',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetPosReg_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetPosReg_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetPosReg_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetUFrameData_Request field; extent 26..26 bytes. */
final class Ros2Fanuc_msgsSrvSetUFrameData_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetUFrameData_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a067808d8fe5ca1418e18ac492313ad9211cc8f3bf402ad0ac51a2850a2bc169',
        "minimum" => 26,
        "maximum" => 26,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetUFrameData_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'uframe_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'frame',
                "type" => 'Ros2Fanuc_msgsMsgFrame',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original uframe_number: uint8; scalar; bound/count 0. */
    public mixed $uframe_number;
    /** @brief Original frame: Ros2Fanuc_msgsMsgFrame; scalar; bound/count 0. */
    public mixed $frame;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('uframe_number', $values)) { $this->uframe_number = $values['uframe_number']; }
        else
        {
            $this->uframe_number = 0;
        }
        if (array_key_exists('frame', $values)) { $this->frame = $values['frame']; }
        else
        {
            $this->frame = new Ros2Fanuc_msgsMsgFrame();
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetUFrameData_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetUFrameData_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetUFrameData_Response field; extent 5..5 bytes. */
final class Ros2Fanuc_msgsSrvSetUFrameData_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetUFrameData_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f436e4fe5bd06b048f4f53d2df4933ac8eac5a784f31b42ccf13f5eaf1696eee',
        "minimum" => 5,
        "maximum" => 5,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetUFrameData_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetUFrameData_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetUFrameData_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetUFrameUTool_Request field; extent 3..3 bytes. */
final class Ros2Fanuc_msgsSrvSetUFrameUTool_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetUFrameUTool_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0b86b0a37e4dc23e0ff651df867f5958e7440bf4712b47779d69ca699af4c09f',
        "minimum" => 3,
        "maximum" => 3,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetUFrameUTool_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'uframe_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'utool_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original uframe_number: uint8; scalar; bound/count 0. */
    public mixed $uframe_number;
    /** @brief Original utool_number: uint8; scalar; bound/count 0. */
    public mixed $utool_number;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('uframe_number', $values)) { $this->uframe_number = $values['uframe_number']; }
        else
        {
            $this->uframe_number = 0;
        }
        if (array_key_exists('utool_number', $values)) { $this->utool_number = $values['utool_number']; }
        else
        {
            $this->utool_number = 0;
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetUFrameUTool_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetUFrameUTool_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetUFrameUTool_Response field; extent 5..5 bytes. */
final class Ros2Fanuc_msgsSrvSetUFrameUTool_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetUFrameUTool_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b77837445c9663f29f23465cc7178a183d245486f74bcff732fc2f4025b82a67',
        "minimum" => 5,
        "maximum" => 5,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetUFrameUTool_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetUFrameUTool_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetUFrameUTool_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetUToolData_Request field; extent 26..26 bytes. */
final class Ros2Fanuc_msgsSrvSetUToolData_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetUToolData_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7d5b911133645744c8def79bc16c8b7c4ee4e87a057ea33741031d6a94e620ab',
        "minimum" => 26,
        "maximum" => 26,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetUToolData_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'utool_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'frame',
                "type" => 'Ros2Fanuc_msgsMsgFrame',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original utool_number: uint8; scalar; bound/count 0. */
    public mixed $utool_number;
    /** @brief Original frame: Ros2Fanuc_msgsMsgFrame; scalar; bound/count 0. */
    public mixed $frame;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('utool_number', $values)) { $this->utool_number = $values['utool_number']; }
        else
        {
            $this->utool_number = 0;
        }
        if (array_key_exists('frame', $values)) { $this->frame = $values['frame']; }
        else
        {
            $this->frame = new Ros2Fanuc_msgsMsgFrame();
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetUToolData_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetUToolData_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SetUToolData_Response field; extent 5..5 bytes. */
final class Ros2Fanuc_msgsSrvSetUToolData_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSetUToolData_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b33d265f275dfcb5fe20432d5e38b55574c85260135bded477c2d5fa2c85c7cb',
        "minimum" => 5,
        "maximum" => 5,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SetUToolData_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'group',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original group: uint8; scalar; bound/count 0. */
    public mixed $group;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('group', $values)) { $this->group = $values['group']; }
        else
        {
            $this->group = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSetUToolData_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSetUToolData_Response', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SwitchControlState_Request field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSwitchControlState_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSwitchControlState_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b485b7071fe2737c7dc8f0360a15b7be30f997430142d8260454fd423172cc21',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SwitchControlState_Request',
        "constants" => [
            "STOP" => 0,
            "START" => 1
        ],
        "fields" => [
            [
                "name" => 'status',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original exact-width STOP constant as a decimal word constructor input. */
    public const STOP = '0';
    /** @brief Original exact-width START constant as a decimal word constructor input. */
    public const START = '1';
    /** @brief Original status: uint32; scalar; bound/count 0. */
    public mixed $status;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('status', $values)) { $this->status = $values['status']; }
        else
        {
            $this->status = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSwitchControlState_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSwitchControlState_Request', $bytes); }
}

/** @brief Own every original fanuc_msgs/srv/SwitchControlState_Response field; extent 4..4 bytes. */
final class Ros2Fanuc_msgsSrvSwitchControlState_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Fanuc_msgsSrvSwitchControlState_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8a3d7a3c1037174f4118843e34222ef8811eff3cc885a0c688d98071e1a9496c',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'fanuc_msgs/srv/SwitchControlState_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Fanuc_msgsSrvSwitchControlState_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Fanuc_msgsSrvSwitchControlState_Response', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/CallParam field; extent 16..592 bytes. */
final class Ros2Rmi_msgsMsgCallParam
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgCallParam',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255',
        "minimum" => 16,
        "maximum" => 592,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/CallParam',
        "constants" => [
            "AR" => 'AR',
            "PR" => 'PR',
            "SR" => 'SR',
            "R" => 'R',
            "P" => 'P',
            "INT" => 'INT',
            "INTEGER" => 'INT',
            "FLOAT" => 'FLOAT',
            "STRING" => 'String',
            "STR" => 'String'
        ],
        "fields" => [
            [
                "name" => 'type',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'int_value',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'float_value',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'string_value',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original AR constant; consumes no instance bytes. */
    public const AR = 'AR';
    /** @brief Original PR constant; consumes no instance bytes. */
    public const PR = 'PR';
    /** @brief Original SR constant; consumes no instance bytes. */
    public const SR = 'SR';
    /** @brief Original R constant; consumes no instance bytes. */
    public const R = 'R';
    /** @brief Original P constant; consumes no instance bytes. */
    public const P = 'P';
    /** @brief Original INT constant; consumes no instance bytes. */
    public const INT = 'INT';
    /** @brief Original INTEGER constant; consumes no instance bytes. */
    public const INTEGER = 'INT';
    /** @brief Original FLOAT constant; consumes no instance bytes. */
    public const FLOAT = 'FLOAT';
    /** @brief Original STRING constant; consumes no instance bytes. */
    public const STRING = 'String';
    /** @brief Original STR constant; consumes no instance bytes. */
    public const STR = 'String';
    /** @brief Original type: string; scalar; bound/count 0. */
    public mixed $type;
    /** @brief Original int_value: int32; scalar; bound/count 0. */
    public mixed $int_value;
    /** @brief Original float_value: float32; scalar; bound/count 0. */
    public mixed $float_value;
    /** @brief Original string_value: string; scalar; bound/count 0. */
    public mixed $string_value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('type', $values)) { $this->type = $values['type']; }
        else
        {
            $this->type = '';
        }
        if (array_key_exists('int_value', $values)) { $this->int_value = $values['int_value']; }
        else
        {
            $this->int_value = 0;
        }
        if (array_key_exists('float_value', $values)) { $this->float_value = $values['float_value']; }
        else
        {
            $this->float_value = 0.0;
        }
        if (array_key_exists('string_value', $values)) { $this->string_value = $values['string_value']; }
        else
        {
            $this->string_value = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgCallParam', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgCallParam', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/Cartesian field; extent 45..45 bytes. */
final class Ros2Rmi_msgsMsgCartesian
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgCartesian',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40',
        "minimum" => 45,
        "maximum" => 45,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/Cartesian',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'utool',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '1',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 1
            ],
            [
                "name" => 'uframe',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 0
            ],
            [
                "name" => 'front',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '1',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 1
            ],
            [
                "name" => 'up',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '1',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 1
            ],
            [
                "name" => 'left',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 0
            ],
            [
                "name" => 'flip',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 0
            ],
            [
                "name" => 'turn4',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 0
            ],
            [
                "name" => 'turn5',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 0
            ],
            [
                "name" => 'turn6',
                "type" => 'int8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 0
            ],
            [
                "name" => 'x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'w',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'p',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'r',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext1',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext2',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ext3',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original utool: int8; scalar; bound/count 0. */
    public mixed $utool;
    /** @brief Original uframe: int8; scalar; bound/count 0. */
    public mixed $uframe;
    /** @brief Original front: uint8; scalar; bound/count 0. */
    public mixed $front;
    /** @brief Original up: uint8; scalar; bound/count 0. */
    public mixed $up;
    /** @brief Original left: uint8; scalar; bound/count 0. */
    public mixed $left;
    /** @brief Original flip: uint8; scalar; bound/count 0. */
    public mixed $flip;
    /** @brief Original turn4: int8; scalar; bound/count 0. */
    public mixed $turn4;
    /** @brief Original turn5: int8; scalar; bound/count 0. */
    public mixed $turn5;
    /** @brief Original turn6: int8; scalar; bound/count 0. */
    public mixed $turn6;
    /** @brief Original x: float32; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float32; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float32; scalar; bound/count 0. */
    public mixed $z;
    /** @brief Original w: float32; scalar; bound/count 0. */
    public mixed $w;
    /** @brief Original p: float32; scalar; bound/count 0. */
    public mixed $p;
    /** @brief Original r: float32; scalar; bound/count 0. */
    public mixed $r;
    /** @brief Original ext1: float32; scalar; bound/count 0. */
    public mixed $ext1;
    /** @brief Original ext2: float32; scalar; bound/count 0. */
    public mixed $ext2;
    /** @brief Original ext3: float32; scalar; bound/count 0. */
    public mixed $ext3;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('utool', $values)) { $this->utool = $values['utool']; }
        else
        {
            $this->utool = 1;
        }
        if (array_key_exists('uframe', $values)) { $this->uframe = $values['uframe']; }
        else
        {
            $this->uframe = 0;
        }
        if (array_key_exists('front', $values)) { $this->front = $values['front']; }
        else
        {
            $this->front = 1;
        }
        if (array_key_exists('up', $values)) { $this->up = $values['up']; }
        else
        {
            $this->up = 1;
        }
        if (array_key_exists('left', $values)) { $this->left = $values['left']; }
        else
        {
            $this->left = 0;
        }
        if (array_key_exists('flip', $values)) { $this->flip = $values['flip']; }
        else
        {
            $this->flip = 0;
        }
        if (array_key_exists('turn4', $values)) { $this->turn4 = $values['turn4']; }
        else
        {
            $this->turn4 = 0;
        }
        if (array_key_exists('turn5', $values)) { $this->turn5 = $values['turn5']; }
        else
        {
            $this->turn5 = 0;
        }
        if (array_key_exists('turn6', $values)) { $this->turn6 = $values['turn6']; }
        else
        {
            $this->turn6 = 0;
        }
        if (array_key_exists('x', $values)) { $this->x = $values['x']; }
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) { $this->y = $values['y']; }
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) { $this->z = $values['z']; }
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('w', $values)) { $this->w = $values['w']; }
        else
        {
            $this->w = 0.0;
        }
        if (array_key_exists('p', $values)) { $this->p = $values['p']; }
        else
        {
            $this->p = 0.0;
        }
        if (array_key_exists('r', $values)) { $this->r = $values['r']; }
        else
        {
            $this->r = 0.0;
        }
        if (array_key_exists('ext1', $values)) { $this->ext1 = $values['ext1']; }
        else
        {
            $this->ext1 = 0.0;
        }
        if (array_key_exists('ext2', $values)) { $this->ext2 = $values['ext2']; }
        else
        {
            $this->ext2 = 0.0;
        }
        if (array_key_exists('ext3', $values)) { $this->ext3 = $values['ext3']; }
        else
        {
            $this->ext3 = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgCartesian', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgCartesian', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/Command field; extent 4..68 bytes. */
final class Ros2Rmi_msgsMsgCommand
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgCommand',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c',
        "minimum" => 4,
        "maximum" => 68,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/Command',
        "constants" => [
            "INITIAZLIE" => 'INITIALIZE',
            "INIT" => 'INITIALIZE',
            "ABORT" => 'ABORT',
            "PAUSE" => 'PAUSE',
            "RESUME" => 'RESUME'
        ],
        "fields" => [
            [
                "name" => 'type',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original INITIAZLIE constant; consumes no instance bytes. */
    public const INITIAZLIE = 'INITIALIZE';
    /** @brief Original INIT constant; consumes no instance bytes. */
    public const INIT = 'INITIALIZE';
    /** @brief Original ABORT constant; consumes no instance bytes. */
    public const ABORT = 'ABORT';
    /** @brief Original PAUSE constant; consumes no instance bytes. */
    public const PAUSE = 'PAUSE';
    /** @brief Original RESUME constant; consumes no instance bytes. */
    public const RESUME = 'RESUME';
    /** @brief Original type: string; scalar; bound/count 0. */
    public mixed $type;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('type', $values)) { $this->type = $values['type']; }
        else
        {
            $this->type = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgCommand', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgCommand', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/CommandOptions field; extent 12..1036 bytes. */
final class Ros2Rmi_msgsMsgCommandOptions
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgCommandOptions',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147',
        "minimum" => 12,
        "maximum" => 1036,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/CommandOptions',
        "constants" => [
            "RTSA_ON" => 'ON',
            "RTSA_OFF" => 'OFF',
            "PLTZ_ZERODN" => 'ZERODN',
            "PLTZ_ZEROUP" => 'ZEROUP',
            "PLTZ_PSPIDN" => 'PSPIDN',
            "PLTZ_PSPIUP" => 'PSPIUP',
            "PLTZ_MSPIDN" => 'MSPIDN',
            "PLTZ_MSPIUP" => 'MSPIUP'
        ],
        "fields" => [
            [
                "name" => 'use_group_mask',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'group_mask',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '1',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => 1
            ],
            [
                "name" => 'use_rtsa',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'rtsa',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'ON',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4,
                "default" => 'ON'
            ],
            [
                "name" => 'use_pltzmode',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'pltzmode',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'ZERODN',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4,
                "default" => 'ZERODN'
            ]
        ]
    ];
    /** @brief Original RTSA_ON constant; consumes no instance bytes. */
    public const RTSA_ON = 'ON';
    /** @brief Original RTSA_OFF constant; consumes no instance bytes. */
    public const RTSA_OFF = 'OFF';
    /** @brief Original PLTZ_ZERODN constant; consumes no instance bytes. */
    public const PLTZ_ZERODN = 'ZERODN';
    /** @brief Original PLTZ_ZEROUP constant; consumes no instance bytes. */
    public const PLTZ_ZEROUP = 'ZEROUP';
    /** @brief Original PLTZ_PSPIDN constant; consumes no instance bytes. */
    public const PLTZ_PSPIDN = 'PSPIDN';
    /** @brief Original PLTZ_PSPIUP constant; consumes no instance bytes. */
    public const PLTZ_PSPIUP = 'PSPIUP';
    /** @brief Original PLTZ_MSPIDN constant; consumes no instance bytes. */
    public const PLTZ_MSPIDN = 'MSPIDN';
    /** @brief Original PLTZ_MSPIUP constant; consumes no instance bytes. */
    public const PLTZ_MSPIUP = 'MSPIUP';
    /** @brief Original use_group_mask: bool; scalar; bound/count 0. */
    public mixed $use_group_mask;
    /** @brief Original group_mask: uint8; scalar; bound/count 0. */
    public mixed $group_mask;
    /** @brief Original use_rtsa: bool; scalar; bound/count 0. */
    public mixed $use_rtsa;
    /** @brief Original rtsa: string; scalar; bound/count 0. */
    public mixed $rtsa;
    /** @brief Original use_pltzmode: bool; scalar; bound/count 0. */
    public mixed $use_pltzmode;
    /** @brief Original pltzmode: string; scalar; bound/count 0. */
    public mixed $pltzmode;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('use_group_mask', $values)) { $this->use_group_mask = $values['use_group_mask']; }
        else
        {
            $this->use_group_mask = false;
        }
        if (array_key_exists('group_mask', $values)) { $this->group_mask = $values['group_mask']; }
        else
        {
            $this->group_mask = 1;
        }
        if (array_key_exists('use_rtsa', $values)) { $this->use_rtsa = $values['use_rtsa']; }
        else
        {
            $this->use_rtsa = false;
        }
        if (array_key_exists('rtsa', $values)) { $this->rtsa = $values['rtsa']; }
        else
        {
            $this->rtsa = 'ON';
        }
        if (array_key_exists('use_pltzmode', $values)) { $this->use_pltzmode = $values['use_pltzmode']; }
        else
        {
            $this->use_pltzmode = false;
        }
        if (array_key_exists('pltzmode', $values)) { $this->pltzmode = $values['pltzmode']; }
        else
        {
            $this->pltzmode = 'ZERODN';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgCommandOptions', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgCommandOptions', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/Joint field; extent 36..36 bytes. */
final class Ros2Rmi_msgsMsgJoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgJoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d',
        "minimum" => 36,
        "maximum" => 36,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/Joint',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'positions',
                "type" => 'float32',
                "array" => 'array',
                "count" => 9,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original positions: float32; array; bound/count 9. */
    public mixed $positions;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('positions', $values)) { $this->positions = $values['positions']; }
        else
        {
            $this->positions = [];
            for ($i = 0; $i < 9; ++$i) { $this->positions[] = 0.0; }
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgJoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgJoint', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/MotionInstructionOptions field; extent 52..2612 bytes. */
final class Ros2Rmi_msgsMsgMotionInstructionOptions
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgMotionInstructionOptions',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6',
        "minimum" => 52,
        "maximum" => 2612,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/MotionInstructionOptions',
        "constants" => [
            "LCB_TYPE_TB" => 'TB',
            "LCB_TYPE_TA" => 'TA',
            "LCB_TYPE_DB" => 'DB',
            "PORT_TYPE_DOUT" => 1,
            "PORT_TYPE_DO" => 1,
            "PORT_TYPE_ROUT" => 2,
            "PORT_TYPE_RO" => 2
        ],
        "fields" => [
            [
                "name" => 'use_acc',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'acc',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'use_offset_pr_number',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'offset_pr_number',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'use_vision_pr_number',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'vision_pr_number',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'use_wrist_joint',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'wrist_joint',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'ON',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4,
                "default" => 'ON'
            ],
            [
                "name" => 'use_mrot',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'mrot',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'ON',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4,
                "default" => 'ON'
            ],
            [
                "name" => 'use_lcb_type',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'lcb_type',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'use_lcb_value',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'lcb_value',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'use_port_type',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'port_type',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'use_port_number',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'port_number',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'use_port_value',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'port_value',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'use_tool_offset_pr_number',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'tool_offset_pr_number',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'use_alim',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'alim',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'use_alim_reg',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'alim_reg',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'use_no_blend',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'no_blend',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'ON',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4,
                "default" => 'ON'
            ]
        ]
    ];
    /** @brief Original LCB_TYPE_TB constant; consumes no instance bytes. */
    public const LCB_TYPE_TB = 'TB';
    /** @brief Original LCB_TYPE_TA constant; consumes no instance bytes. */
    public const LCB_TYPE_TA = 'TA';
    /** @brief Original LCB_TYPE_DB constant; consumes no instance bytes. */
    public const LCB_TYPE_DB = 'DB';
    /** @brief Original PORT_TYPE_DOUT constant; consumes no instance bytes. */
    public const PORT_TYPE_DOUT = 1;
    /** @brief Original PORT_TYPE_DO constant; consumes no instance bytes. */
    public const PORT_TYPE_DO = 1;
    /** @brief Original PORT_TYPE_ROUT constant; consumes no instance bytes. */
    public const PORT_TYPE_ROUT = 2;
    /** @brief Original PORT_TYPE_RO constant; consumes no instance bytes. */
    public const PORT_TYPE_RO = 2;
    /** @brief Original use_acc: bool; scalar; bound/count 0. */
    public mixed $use_acc;
    /** @brief Original acc: uint8; scalar; bound/count 0. */
    public mixed $acc;
    /** @brief Original use_offset_pr_number: bool; scalar; bound/count 0. */
    public mixed $use_offset_pr_number;
    /** @brief Original offset_pr_number: uint16; scalar; bound/count 0. */
    public mixed $offset_pr_number;
    /** @brief Original use_vision_pr_number: bool; scalar; bound/count 0. */
    public mixed $use_vision_pr_number;
    /** @brief Original vision_pr_number: uint16; scalar; bound/count 0. */
    public mixed $vision_pr_number;
    /** @brief Original use_wrist_joint: bool; scalar; bound/count 0. */
    public mixed $use_wrist_joint;
    /** @brief Original wrist_joint: string; scalar; bound/count 0. */
    public mixed $wrist_joint;
    /** @brief Original use_mrot: bool; scalar; bound/count 0. */
    public mixed $use_mrot;
    /** @brief Original mrot: string; scalar; bound/count 0. */
    public mixed $mrot;
    /** @brief Original use_lcb_type: bool; scalar; bound/count 0. */
    public mixed $use_lcb_type;
    /** @brief Original lcb_type: string; scalar; bound/count 0. */
    public mixed $lcb_type;
    /** @brief Original use_lcb_value: bool; scalar; bound/count 0. */
    public mixed $use_lcb_value;
    /** @brief Original lcb_value: uint16; scalar; bound/count 0. */
    public mixed $lcb_value;
    /** @brief Original use_port_type: bool; scalar; bound/count 0. */
    public mixed $use_port_type;
    /** @brief Original port_type: uint8; scalar; bound/count 0. */
    public mixed $port_type;
    /** @brief Original use_port_number: bool; scalar; bound/count 0. */
    public mixed $use_port_number;
    /** @brief Original port_number: uint16; scalar; bound/count 0. */
    public mixed $port_number;
    /** @brief Original use_port_value: bool; scalar; bound/count 0. */
    public mixed $use_port_value;
    /** @brief Original port_value: string; scalar; bound/count 0. */
    public mixed $port_value;
    /** @brief Original use_tool_offset_pr_number: bool; scalar; bound/count 0. */
    public mixed $use_tool_offset_pr_number;
    /** @brief Original tool_offset_pr_number: uint16; scalar; bound/count 0. */
    public mixed $tool_offset_pr_number;
    /** @brief Original use_alim: bool; scalar; bound/count 0. */
    public mixed $use_alim;
    /** @brief Original alim: int32; scalar; bound/count 0. */
    public mixed $alim;
    /** @brief Original use_alim_reg: bool; scalar; bound/count 0. */
    public mixed $use_alim_reg;
    /** @brief Original alim_reg: uint16; scalar; bound/count 0. */
    public mixed $alim_reg;
    /** @brief Original use_no_blend: bool; scalar; bound/count 0. */
    public mixed $use_no_blend;
    /** @brief Original no_blend: string; scalar; bound/count 0. */
    public mixed $no_blend;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('use_acc', $values)) { $this->use_acc = $values['use_acc']; }
        else
        {
            $this->use_acc = false;
        }
        if (array_key_exists('acc', $values)) { $this->acc = $values['acc']; }
        else
        {
            $this->acc = 0;
        }
        if (array_key_exists('use_offset_pr_number', $values)) { $this->use_offset_pr_number = $values['use_offset_pr_number']; }
        else
        {
            $this->use_offset_pr_number = false;
        }
        if (array_key_exists('offset_pr_number', $values)) { $this->offset_pr_number = $values['offset_pr_number']; }
        else
        {
            $this->offset_pr_number = 0;
        }
        if (array_key_exists('use_vision_pr_number', $values)) { $this->use_vision_pr_number = $values['use_vision_pr_number']; }
        else
        {
            $this->use_vision_pr_number = false;
        }
        if (array_key_exists('vision_pr_number', $values)) { $this->vision_pr_number = $values['vision_pr_number']; }
        else
        {
            $this->vision_pr_number = 0;
        }
        if (array_key_exists('use_wrist_joint', $values)) { $this->use_wrist_joint = $values['use_wrist_joint']; }
        else
        {
            $this->use_wrist_joint = false;
        }
        if (array_key_exists('wrist_joint', $values)) { $this->wrist_joint = $values['wrist_joint']; }
        else
        {
            $this->wrist_joint = 'ON';
        }
        if (array_key_exists('use_mrot', $values)) { $this->use_mrot = $values['use_mrot']; }
        else
        {
            $this->use_mrot = false;
        }
        if (array_key_exists('mrot', $values)) { $this->mrot = $values['mrot']; }
        else
        {
            $this->mrot = 'ON';
        }
        if (array_key_exists('use_lcb_type', $values)) { $this->use_lcb_type = $values['use_lcb_type']; }
        else
        {
            $this->use_lcb_type = false;
        }
        if (array_key_exists('lcb_type', $values)) { $this->lcb_type = $values['lcb_type']; }
        else
        {
            $this->lcb_type = '';
        }
        if (array_key_exists('use_lcb_value', $values)) { $this->use_lcb_value = $values['use_lcb_value']; }
        else
        {
            $this->use_lcb_value = false;
        }
        if (array_key_exists('lcb_value', $values)) { $this->lcb_value = $values['lcb_value']; }
        else
        {
            $this->lcb_value = 0;
        }
        if (array_key_exists('use_port_type', $values)) { $this->use_port_type = $values['use_port_type']; }
        else
        {
            $this->use_port_type = false;
        }
        if (array_key_exists('port_type', $values)) { $this->port_type = $values['port_type']; }
        else
        {
            $this->port_type = 0;
        }
        if (array_key_exists('use_port_number', $values)) { $this->use_port_number = $values['use_port_number']; }
        else
        {
            $this->use_port_number = false;
        }
        if (array_key_exists('port_number', $values)) { $this->port_number = $values['port_number']; }
        else
        {
            $this->port_number = 0;
        }
        if (array_key_exists('use_port_value', $values)) { $this->use_port_value = $values['use_port_value']; }
        else
        {
            $this->use_port_value = false;
        }
        if (array_key_exists('port_value', $values)) { $this->port_value = $values['port_value']; }
        else
        {
            $this->port_value = '';
        }
        if (array_key_exists('use_tool_offset_pr_number', $values)) { $this->use_tool_offset_pr_number = $values['use_tool_offset_pr_number']; }
        else
        {
            $this->use_tool_offset_pr_number = false;
        }
        if (array_key_exists('tool_offset_pr_number', $values)) { $this->tool_offset_pr_number = $values['tool_offset_pr_number']; }
        else
        {
            $this->tool_offset_pr_number = 0;
        }
        if (array_key_exists('use_alim', $values)) { $this->use_alim = $values['use_alim']; }
        else
        {
            $this->use_alim = false;
        }
        if (array_key_exists('alim', $values)) { $this->alim = $values['alim']; }
        else
        {
            $this->alim = 0;
        }
        if (array_key_exists('use_alim_reg', $values)) { $this->use_alim_reg = $values['use_alim_reg']; }
        else
        {
            $this->use_alim_reg = false;
        }
        if (array_key_exists('alim_reg', $values)) { $this->alim_reg = $values['alim_reg']; }
        else
        {
            $this->alim_reg = 0;
        }
        if (array_key_exists('use_no_blend', $values)) { $this->use_no_blend = $values['use_no_blend']; }
        else
        {
            $this->use_no_blend = false;
        }
        if (array_key_exists('no_blend', $values)) { $this->no_blend = $values['no_blend']; }
        else
        {
            $this->no_blend = 'ON';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgMotionInstructionOptions', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgMotionInstructionOptions', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/MotionType field; extent 4..68 bytes. */
final class Ros2Rmi_msgsMsgMotionType
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgMotionType',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a',
        "minimum" => 4,
        "maximum" => 68,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/MotionType',
        "constants" => [
            "J" => 'J',
            "JOINT" => 'J',
            "L" => 'L',
            "LINEAR" => 'L',
            "C" => 'C',
            "CIRCULAR" => 'C',
            "S" => 'S',
            "SPLINE" => 'S'
        ],
        "fields" => [
            [
                "name" => 'type',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'J',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4,
                "default" => 'J'
            ]
        ]
    ];
    /** @brief Original J constant; consumes no instance bytes. */
    public const J = 'J';
    /** @brief Original JOINT constant; consumes no instance bytes. */
    public const JOINT = 'J';
    /** @brief Original L constant; consumes no instance bytes. */
    public const L = 'L';
    /** @brief Original LINEAR constant; consumes no instance bytes. */
    public const LINEAR = 'L';
    /** @brief Original C constant; consumes no instance bytes. */
    public const C = 'C';
    /** @brief Original CIRCULAR constant; consumes no instance bytes. */
    public const CIRCULAR = 'C';
    /** @brief Original S constant; consumes no instance bytes. */
    public const S = 'S';
    /** @brief Original SPLINE constant; consumes no instance bytes. */
    public const SPLINE = 'S';
    /** @brief Original type: string; scalar; bound/count 0. */
    public mixed $type;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('type', $values)) { $this->type = $values['type']; }
        else
        {
            $this->type = 'J';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgMotionType', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgMotionType', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/Representation field; extent 4..516 bytes. */
final class Ros2Rmi_msgsMsgRepresentation
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgRepresentation',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f',
        "minimum" => 4,
        "maximum" => 516,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/Representation',
        "constants" => [
            "JOINT" => 'JOINT',
            "J" => 'JOINT',
            "CARTESIAN" => 'CARTESIAN',
            "CART" => 'CARTESIAN',
            "C" => 'CARTESIAN'
        ],
        "fields" => [
            [
                "name" => 'representation',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'JOINT',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4,
                "default" => 'JOINT'
            ]
        ]
    ];
    /** @brief Original JOINT constant; consumes no instance bytes. */
    public const JOINT = 'JOINT';
    /** @brief Original J constant; consumes no instance bytes. */
    public const J = 'JOINT';
    /** @brief Original CARTESIAN constant; consumes no instance bytes. */
    public const CARTESIAN = 'CARTESIAN';
    /** @brief Original CART constant; consumes no instance bytes. */
    public const CART = 'CARTESIAN';
    /** @brief Original C constant; consumes no instance bytes. */
    public const C = 'CARTESIAN';
    /** @brief Original representation: string; scalar; bound/count 0. */
    public mixed $representation;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('representation', $values)) { $this->representation = $values['representation']; }
        else
        {
            $this->representation = 'JOINT';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgRepresentation', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgRepresentation', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/SpeedType field; extent 4..68 bytes. */
final class Ros2Rmi_msgsMsgSpeedType
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgSpeedType',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282',
        "minimum" => 4,
        "maximum" => 68,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/SpeedType',
        "constants" => [
            "PERCENT" => 'Percent',
            "PERCENTAGE" => 'Percent',
            "MMSEC" => 'mmSec',
            "INCHMIN" => 'InchMin',
            "TIME" => 'Time',
            "SECONDS" => 'Time',
            "SEC" => 'Time',
            "MSEC" => 'mSec'
        ],
        "fields" => [
            [
                "name" => 'type',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'Percent',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4,
                "default" => 'Percent'
            ]
        ]
    ];
    /** @brief Original PERCENT constant; consumes no instance bytes. */
    public const PERCENT = 'Percent';
    /** @brief Original PERCENTAGE constant; consumes no instance bytes. */
    public const PERCENTAGE = 'Percent';
    /** @brief Original MMSEC constant; consumes no instance bytes. */
    public const MMSEC = 'mmSec';
    /** @brief Original INCHMIN constant; consumes no instance bytes. */
    public const INCHMIN = 'InchMin';
    /** @brief Original TIME constant; consumes no instance bytes. */
    public const TIME = 'Time';
    /** @brief Original SECONDS constant; consumes no instance bytes. */
    public const SECONDS = 'Time';
    /** @brief Original SEC constant; consumes no instance bytes. */
    public const SEC = 'Time';
    /** @brief Original MSEC constant; consumes no instance bytes. */
    public const MSEC = 'mSec';
    /** @brief Original type: string; scalar; bound/count 0. */
    public mixed $type;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('type', $values)) { $this->type = $values['type']; }
        else
        {
            $this->type = 'Percent';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgSpeedType', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgSpeedType', $bytes); }
}

/** @brief Own every original rmi_msgs/msg/TermType field; extent 4..68 bytes. */
final class Ros2Rmi_msgsMsgTermType
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsMsgTermType',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535',
        "minimum" => 4,
        "maximum" => 68,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/msg/TermType',
        "constants" => [
            "FINE" => 'FINE',
            "CNT" => 'CNT',
            "CR" => 'CR',
            "CD" => 'CD'
        ],
        "fields" => [
            [
                "name" => 'type',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'FINE',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4,
                "default" => 'FINE'
            ]
        ]
    ];
    /** @brief Original FINE constant; consumes no instance bytes. */
    public const FINE = 'FINE';
    /** @brief Original CNT constant; consumes no instance bytes. */
    public const CNT = 'CNT';
    /** @brief Original CR constant; consumes no instance bytes. */
    public const CR = 'CR';
    /** @brief Original CD constant; consumes no instance bytes. */
    public const CD = 'CD';
    /** @brief Original type: string; scalar; bound/count 0. */
    public mixed $type;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('type', $values)) { $this->type = $values['type']; }
        else
        {
            $this->type = 'FINE';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsMsgTermType', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsMsgTermType', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddCall_Request field; extent 8..9992 bytes. */
final class Ros2Rmi_msgsSrvAddCall_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddCall_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4d652cfbaef29487a0a688932ee926d7a4026c5e7ac8a0eace583b503c37bcd8',
        "minimum" => 8,
        "maximum" => 9992,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddCall_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'program_name',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'params',
                "type" => 'Ros2Rmi_msgsMsgCallParam',
                "array" => 'sequence',
                "count" => 16,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ]
        ]
    ];
    /** @brief Original program_name: string; scalar; bound/count 0. */
    public mixed $program_name;
    /** @brief Original params: Ros2Rmi_msgsMsgCallParam; sequence; bound/count 16. */
    public mixed $params;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('program_name', $values)) { $this->program_name = $values['program_name']; }
        else
        {
            $this->program_name = '';
        }
        if (array_key_exists('params', $values)) { $this->params = $values['params']; }
        else
        {
            $this->params = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddCall_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddCall_Request', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddCall_Response field; extent 8..8 bytes. */
final class Ros2Rmi_msgsSrvAddCall_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddCall_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4f8495dfc3c69ec640444fd24843a7bb3e30008d90945bdd64817d8acb7964e1',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddCall_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'sequence_id',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original sequence_id: int32; scalar; bound/count 0. */
    public mixed $sequence_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('sequence_id', $values)) { $this->sequence_id = $values['sequence_id']; }
        else
        {
            $this->sequence_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddCall_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddCall_Response', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddMotionInstruction_Request field; extent 238..4014 bytes. */
final class Ros2Rmi_msgsSrvAddMotionInstruction_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddMotionInstruction_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391',
        "minimum" => 238,
        "maximum" => 4014,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddMotionInstruction_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'motion_type',
                "type" => 'Ros2Rmi_msgsMsgMotionType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'incremental',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => 'False',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1,
                "default" => false
            ],
            [
                "name" => 'representation',
                "type" => 'Ros2Rmi_msgsMsgRepresentation',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'joint',
                "type" => 'Ros2Rmi_msgsMsgJoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 36
            ],
            [
                "name" => 'cartesian',
                "type" => 'Ros2Rmi_msgsMsgCartesian',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 45
            ],
            [
                "name" => 'speed_type',
                "type" => 'Ros2Rmi_msgsMsgSpeedType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'speed_value',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'term_type',
                "type" => 'Ros2Rmi_msgsMsgTermType',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'term_value',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'via_representation',
                "type" => 'Ros2Rmi_msgsMsgRepresentation',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'via_joint',
                "type" => 'Ros2Rmi_msgsMsgJoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 36
            ],
            [
                "name" => 'via_cartesian',
                "type" => 'Ros2Rmi_msgsMsgCartesian',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 45
            ],
            [
                "name" => 'options',
                "type" => 'Ros2Rmi_msgsMsgMotionInstructionOptions',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 52
            ]
        ]
    ];
    /** @brief Original motion_type: Ros2Rmi_msgsMsgMotionType; scalar; bound/count 0. */
    public mixed $motion_type;
    /** @brief Original incremental: bool; scalar; bound/count 0. */
    public mixed $incremental;
    /** @brief Original representation: Ros2Rmi_msgsMsgRepresentation; scalar; bound/count 0. */
    public mixed $representation;
    /** @brief Original joint: Ros2Rmi_msgsMsgJoint; scalar; bound/count 0. */
    public mixed $joint;
    /** @brief Original cartesian: Ros2Rmi_msgsMsgCartesian; scalar; bound/count 0. */
    public mixed $cartesian;
    /** @brief Original speed_type: Ros2Rmi_msgsMsgSpeedType; scalar; bound/count 0. */
    public mixed $speed_type;
    /** @brief Original speed_value: uint16; scalar; bound/count 0. */
    public mixed $speed_value;
    /** @brief Original term_type: Ros2Rmi_msgsMsgTermType; scalar; bound/count 0. */
    public mixed $term_type;
    /** @brief Original term_value: uint8; scalar; bound/count 0. */
    public mixed $term_value;
    /** @brief Original via_representation: Ros2Rmi_msgsMsgRepresentation; scalar; bound/count 0. */
    public mixed $via_representation;
    /** @brief Original via_joint: Ros2Rmi_msgsMsgJoint; scalar; bound/count 0. */
    public mixed $via_joint;
    /** @brief Original via_cartesian: Ros2Rmi_msgsMsgCartesian; scalar; bound/count 0. */
    public mixed $via_cartesian;
    /** @brief Original options: Ros2Rmi_msgsMsgMotionInstructionOptions; scalar; bound/count 0. */
    public mixed $options;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('motion_type', $values)) { $this->motion_type = $values['motion_type']; }
        else
        {
            $this->motion_type = new Ros2Rmi_msgsMsgMotionType();
        }
        if (array_key_exists('incremental', $values)) { $this->incremental = $values['incremental']; }
        else
        {
            $this->incremental = false;
        }
        if (array_key_exists('representation', $values)) { $this->representation = $values['representation']; }
        else
        {
            $this->representation = new Ros2Rmi_msgsMsgRepresentation();
        }
        if (array_key_exists('joint', $values)) { $this->joint = $values['joint']; }
        else
        {
            $this->joint = new Ros2Rmi_msgsMsgJoint();
        }
        if (array_key_exists('cartesian', $values)) { $this->cartesian = $values['cartesian']; }
        else
        {
            $this->cartesian = new Ros2Rmi_msgsMsgCartesian();
        }
        if (array_key_exists('speed_type', $values)) { $this->speed_type = $values['speed_type']; }
        else
        {
            $this->speed_type = new Ros2Rmi_msgsMsgSpeedType();
        }
        if (array_key_exists('speed_value', $values)) { $this->speed_value = $values['speed_value']; }
        else
        {
            $this->speed_value = 0;
        }
        if (array_key_exists('term_type', $values)) { $this->term_type = $values['term_type']; }
        else
        {
            $this->term_type = new Ros2Rmi_msgsMsgTermType();
        }
        if (array_key_exists('term_value', $values)) { $this->term_value = $values['term_value']; }
        else
        {
            $this->term_value = 0;
        }
        if (array_key_exists('via_representation', $values)) { $this->via_representation = $values['via_representation']; }
        else
        {
            $this->via_representation = new Ros2Rmi_msgsMsgRepresentation();
        }
        if (array_key_exists('via_joint', $values)) { $this->via_joint = $values['via_joint']; }
        else
        {
            $this->via_joint = new Ros2Rmi_msgsMsgJoint();
        }
        if (array_key_exists('via_cartesian', $values)) { $this->via_cartesian = $values['via_cartesian']; }
        else
        {
            $this->via_cartesian = new Ros2Rmi_msgsMsgCartesian();
        }
        if (array_key_exists('options', $values)) { $this->options = $values['options']; }
        else
        {
            $this->options = new Ros2Rmi_msgsMsgMotionInstructionOptions();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddMotionInstruction_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddMotionInstruction_Request', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddMotionInstruction_Response field; extent 8..8 bytes. */
final class Ros2Rmi_msgsSrvAddMotionInstruction_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddMotionInstruction_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_79fee3e965fda63c3a53ad2178ff48614878acc9f6af74cc27a8c2812b68ac6b',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddMotionInstruction_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'sequence_id',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original sequence_id: int32; scalar; bound/count 0. */
    public mixed $sequence_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('sequence_id', $values)) { $this->sequence_id = $values['sequence_id']; }
        else
        {
            $this->sequence_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddMotionInstruction_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddMotionInstruction_Response', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddSetPayload_Request field; extent 1..1 bytes. */
final class Ros2Rmi_msgsSrvAddSetPayload_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddSetPayload_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_45da9f81e8c26f49490a4e6eba5c8be0ee67285124540eb1c3e1f2c3e0fd821b',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddSetPayload_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'schedule_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original schedule_number: uint8; scalar; bound/count 0. */
    public mixed $schedule_number;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('schedule_number', $values)) { $this->schedule_number = $values['schedule_number']; }
        else
        {
            $this->schedule_number = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddSetPayload_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddSetPayload_Request', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddSetPayload_Response field; extent 8..8 bytes. */
final class Ros2Rmi_msgsSrvAddSetPayload_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddSetPayload_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bfc5bc7b92f292c2980496cb18fbe953ea1b49d45f7950f0125bbbf880bdf72a',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddSetPayload_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'sequence_id',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original sequence_id: int32; scalar; bound/count 0. */
    public mixed $sequence_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('sequence_id', $values)) { $this->sequence_id = $values['sequence_id']; }
        else
        {
            $this->sequence_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddSetPayload_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddSetPayload_Response', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddSetUFrame_Request field; extent 1..1 bytes. */
final class Ros2Rmi_msgsSrvAddSetUFrame_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddSetUFrame_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_64c83dd2be89b4b6dcf3b3c2ea70184971e6a359914ff1a5cd26d4b114d35475',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddSetUFrame_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'frame_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original frame_number: uint8; scalar; bound/count 0. */
    public mixed $frame_number;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('frame_number', $values)) { $this->frame_number = $values['frame_number']; }
        else
        {
            $this->frame_number = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddSetUFrame_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddSetUFrame_Request', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddSetUFrame_Response field; extent 8..8 bytes. */
final class Ros2Rmi_msgsSrvAddSetUFrame_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddSetUFrame_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e344ef6efacc8d569111d1c6ef4028e1a5bb54af49d3e8f486ae89b83c674647',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddSetUFrame_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'sequence_id',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original sequence_id: int32; scalar; bound/count 0. */
    public mixed $sequence_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('sequence_id', $values)) { $this->sequence_id = $values['sequence_id']; }
        else
        {
            $this->sequence_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddSetUFrame_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddSetUFrame_Response', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddSetUTool_Request field; extent 1..1 bytes. */
final class Ros2Rmi_msgsSrvAddSetUTool_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddSetUTool_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d1327022326cd41caed6001449517a41f589e148c38d6db30923922175f05c46',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddSetUTool_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'tool_number',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original tool_number: uint8; scalar; bound/count 0. */
    public mixed $tool_number;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('tool_number', $values)) { $this->tool_number = $values['tool_number']; }
        else
        {
            $this->tool_number = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddSetUTool_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddSetUTool_Request', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddSetUTool_Response field; extent 8..8 bytes. */
final class Ros2Rmi_msgsSrvAddSetUTool_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddSetUTool_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_dd4c36458027b87559200cf5f6aa72a60af2d103f663f2fa9daca47ce8020ff6',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddSetUTool_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'sequence_id',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original sequence_id: int32; scalar; bound/count 0. */
    public mixed $sequence_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('sequence_id', $values)) { $this->sequence_id = $values['sequence_id']; }
        else
        {
            $this->sequence_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddSetUTool_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddSetUTool_Response', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddWaitDIN_Request field; extent 6..518 bytes. */
final class Ros2Rmi_msgsSrvAddWaitDIN_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddWaitDIN_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c32214f1ff1b0b6980583fc3088f412e856efb5eaa9c336cf798ef8ad85c61ab',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddWaitDIN_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'port_number',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'port_value',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original port_number: uint16; scalar; bound/count 0. */
    public mixed $port_number;
    /** @brief Original port_value: string; scalar; bound/count 0. */
    public mixed $port_value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('port_number', $values)) { $this->port_number = $values['port_number']; }
        else
        {
            $this->port_number = 0;
        }
        if (array_key_exists('port_value', $values)) { $this->port_value = $values['port_value']; }
        else
        {
            $this->port_value = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddWaitDIN_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddWaitDIN_Request', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddWaitDIN_Response field; extent 8..8 bytes. */
final class Ros2Rmi_msgsSrvAddWaitDIN_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddWaitDIN_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7d3933f573619ba49f19df7c11f1d73ef211c17581f660f8c0fbcc152cd519d4',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddWaitDIN_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'sequence_id',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original sequence_id: int32; scalar; bound/count 0. */
    public mixed $sequence_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('sequence_id', $values)) { $this->sequence_id = $values['sequence_id']; }
        else
        {
            $this->sequence_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddWaitDIN_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddWaitDIN_Response', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddWaitTime_Request field; extent 4..4 bytes. */
final class Ros2Rmi_msgsSrvAddWaitTime_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddWaitTime_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8487f4b7dcfb044c72f7fb62a31ffe9cdc4321a9ebdaa0550a363e32acbadc46',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddWaitTime_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'time',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original time: float32; scalar; bound/count 0. */
    public mixed $time;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('time', $values)) { $this->time = $values['time']; }
        else
        {
            $this->time = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddWaitTime_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddWaitTime_Request', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/AddWaitTime_Response field; extent 8..8 bytes. */
final class Ros2Rmi_msgsSrvAddWaitTime_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvAddWaitTime_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f9578c08b971f32f91d1c94b8713cafe648e25147394e20c85bb335254fa20c8',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/AddWaitTime_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'sequence_id',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Original sequence_id: int32; scalar; bound/count 0. */
    public mixed $sequence_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
        if (array_key_exists('sequence_id', $values)) { $this->sequence_id = $values['sequence_id']; }
        else
        {
            $this->sequence_id = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvAddWaitTime_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvAddWaitTime_Response', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/CallCommand_Request field; extent 16..1104 bytes. */
final class Ros2Rmi_msgsSrvCallCommand_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvCallCommand_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d1f890a2beec0ca9294ff4f641d1738855d576a917ed05eb34517886c73f381c',
        "minimum" => 16,
        "maximum" => 1104,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/CallCommand_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'command',
                "type" => 'Ros2Rmi_msgsMsgCommand',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'options',
                "type" => 'Ros2Rmi_msgsMsgCommandOptions',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ]
        ]
    ];
    /** @brief Original command: Ros2Rmi_msgsMsgCommand; scalar; bound/count 0. */
    public mixed $command;
    /** @brief Original options: Ros2Rmi_msgsMsgCommandOptions; scalar; bound/count 0. */
    public mixed $options;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('command', $values)) { $this->command = $values['command']; }
        else
        {
            $this->command = new Ros2Rmi_msgsMsgCommand();
        }
        if (array_key_exists('options', $values)) { $this->options = $values['options']; }
        else
        {
            $this->options = new Ros2Rmi_msgsMsgCommandOptions();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvCallCommand_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvCallCommand_Request', $bytes); }
}

/** @brief Own every original rmi_msgs/srv/CallCommand_Response field; extent 4..4 bytes. */
final class Ros2Rmi_msgsSrvCallCommand_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Rmi_msgsSrvCallCommand_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_64d92e6fadc651073469318ad15d2e98ec3d059c629838cefc5820b17ab6f1bc',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'rmi_msgs/srv/CallCommand_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result: int32; scalar; bound/count 0. */
    public mixed $result;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result', $values)) { $this->result = $values['result']; }
        else
        {
            $this->result = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Rmi_msgsSrvCallCommand_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Rmi_msgsSrvCallCommand_Response', $bytes); }
}

/** @brief Own every original sensor_msgs/msg/JointState field; extent 28..1196 bytes. */
final class Ros2Sensor_msgsMsgJointState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Sensor_msgsMsgJointState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884',
        "minimum" => 28,
        "maximum" => 1196,
        "semantics" => 'joint-state-optional-equal-length-arrays',
        "ros_version" => 2,
        "native_type" => 'sensor_msgs/msg/JointState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'name',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'position',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'velocity',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'effort',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original name: string; sequence; bound/count 12. */
    public mixed $name;
    /** @brief Original position: float64; sequence; bound/count 12. */
    public mixed $position;
    /** @brief Original velocity: float64; sequence; bound/count 12. */
    public mixed $velocity;
    /** @brief Original effort: float64; sequence; bound/count 12. */
    public mixed $effort;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('name', $values)) { $this->name = $values['name']; }
        else
        {
            $this->name = [];
        }
        if (array_key_exists('position', $values)) { $this->position = $values['position']; }
        else
        {
            $this->position = [];
        }
        if (array_key_exists('velocity', $values)) { $this->velocity = $values['velocity']; }
        else
        {
            $this->velocity = [];
        }
        if (array_key_exists('effort', $values)) { $this->effort = $values['effort']; }
        else
        {
            $this->effort = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Sensor_msgsMsgJointState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Sensor_msgsMsgJointState', $bytes); }
}

/** @brief Own every original std_srvs/srv/Trigger_Request field; extent 0..0 bytes. */
final class Ros2Std_srvsSrvTrigger_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Std_srvsSrvTrigger_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'std_srvs/srv/Trigger_Request',
        "constants" => [

        ],
        "fields" => [

        ]
    ];
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Std_srvsSrvTrigger_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Std_srvsSrvTrigger_Request', $bytes); }
}

/** @brief Own every original std_srvs/srv/Trigger_Response field; extent 5..517 bytes. */
final class Ros2Std_srvsSrvTrigger_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Std_srvsSrvTrigger_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d',
        "minimum" => 5,
        "maximum" => 517,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'std_srvs/srv/Trigger_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'success',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original success: bool; scalar; bound/count 0. */
    public mixed $success;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('success', $values)) { $this->success = $values['success']; }
        else
        {
            $this->success = false;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Std_srvsSrvTrigger_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Std_srvsSrvTrigger_Response', $bytes); }
}

/** @brief Borrow the module's pure codec registry; construction opens no ROS resource.
 * @return Wire One lazily constructed registry over exact complete class schemas. */
function registry(): Wire
{
    static $wire = null;
    if ($wire === null)
    {
        $wire = new Wire([
            'Ros2Builtin_interfacesMsgDuration' =>
                Ros2Builtin_interfacesMsgDuration::SCHEMA + ['class' => Ros2Builtin_interfacesMsgDuration::class],
            'Ros2Builtin_interfacesMsgTime' =>
                Ros2Builtin_interfacesMsgTime::SCHEMA + ['class' => Ros2Builtin_interfacesMsgTime::class],
            'Ros2Std_msgsMsgHeader' =>
                Ros2Std_msgsMsgHeader::SCHEMA + ['class' => Ros2Std_msgsMsgHeader::class],
            'Ros2Trajectory_msgsMsgJointTrajectoryPoint' =>
                Ros2Trajectory_msgsMsgJointTrajectoryPoint::SCHEMA + ['class' => Ros2Trajectory_msgsMsgJointTrajectoryPoint::class],
            'Ros2Trajectory_msgsMsgJointTrajectory' =>
                Ros2Trajectory_msgsMsgJointTrajectory::SCHEMA + ['class' => Ros2Trajectory_msgsMsgJointTrajectory::class],
            'Ros2Geometry_msgsMsgVector3' =>
                Ros2Geometry_msgsMsgVector3::SCHEMA + ['class' => Ros2Geometry_msgsMsgVector3::class],
            'Ros2Geometry_msgsMsgQuaternion' =>
                Ros2Geometry_msgsMsgQuaternion::SCHEMA + ['class' => Ros2Geometry_msgsMsgQuaternion::class],
            'Ros2Geometry_msgsMsgTransform' =>
                Ros2Geometry_msgsMsgTransform::SCHEMA + ['class' => Ros2Geometry_msgsMsgTransform::class],
            'Ros2Geometry_msgsMsgTwist' =>
                Ros2Geometry_msgsMsgTwist::SCHEMA + ['class' => Ros2Geometry_msgsMsgTwist::class],
            'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint' =>
                Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::SCHEMA + ['class' => Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::class],
            'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory' =>
                Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::SCHEMA + ['class' => Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::class],
            'Ros2Control_msgsMsgJointTolerance' =>
                Ros2Control_msgsMsgJointTolerance::SCHEMA + ['class' => Ros2Control_msgsMsgJointTolerance::class],
            'Ros2Control_msgsMsgJointComponentTolerance' =>
                Ros2Control_msgsMsgJointComponentTolerance::SCHEMA + ['class' => Ros2Control_msgsMsgJointComponentTolerance::class],
            'Ros2Control_msgsActionFollowJointTrajectory_Goal' =>
                Ros2Control_msgsActionFollowJointTrajectory_Goal::SCHEMA + ['class' => Ros2Control_msgsActionFollowJointTrajectory_Goal::class],
            'Ros2Control_msgsActionFollowJointTrajectory_Result' =>
                Ros2Control_msgsActionFollowJointTrajectory_Result::SCHEMA + ['class' => Ros2Control_msgsActionFollowJointTrajectory_Result::class],
            'Ros2Control_msgsActionFollowJointTrajectory_Feedback' =>
                Ros2Control_msgsActionFollowJointTrajectory_Feedback::SCHEMA + ['class' => Ros2Control_msgsActionFollowJointTrajectory_Feedback::class],
            'Ros2Fanuc_msgsMsgIOType' =>
                Ros2Fanuc_msgsMsgIOType::SCHEMA + ['class' => Ros2Fanuc_msgsMsgIOType::class],
            'Ros2Fanuc_msgsMsgAnalogIO' =>
                Ros2Fanuc_msgsMsgAnalogIO::SCHEMA + ['class' => Ros2Fanuc_msgsMsgAnalogIO::class],
            'Ros2Fanuc_msgsMsgAnalogIOCmd' =>
                Ros2Fanuc_msgsMsgAnalogIOCmd::SCHEMA + ['class' => Ros2Fanuc_msgsMsgAnalogIOCmd::class],
            'Ros2Fanuc_msgsMsgAnalogIOState' =>
                Ros2Fanuc_msgsMsgAnalogIOState::SCHEMA + ['class' => Ros2Fanuc_msgsMsgAnalogIOState::class],
            'Ros2Fanuc_msgsMsgBoolIO' =>
                Ros2Fanuc_msgsMsgBoolIO::SCHEMA + ['class' => Ros2Fanuc_msgsMsgBoolIO::class],
            'Ros2Fanuc_msgsMsgCollaborativeSpeedScaling' =>
                Ros2Fanuc_msgsMsgCollaborativeSpeedScaling::SCHEMA + ['class' => Ros2Fanuc_msgsMsgCollaborativeSpeedScaling::class],
            'Ros2Fanuc_msgsMsgConnectionStatus' =>
                Ros2Fanuc_msgsMsgConnectionStatus::SCHEMA + ['class' => Ros2Fanuc_msgsMsgConnectionStatus::class],
            'Ros2Fanuc_msgsMsgForceSensor' =>
                Ros2Fanuc_msgsMsgForceSensor::SCHEMA + ['class' => Ros2Fanuc_msgsMsgForceSensor::class],
            'Ros2Fanuc_msgsMsgFrame' =>
                Ros2Fanuc_msgsMsgFrame::SCHEMA + ['class' => Ros2Fanuc_msgsMsgFrame::class],
            'Ros2Fanuc_msgsMsgIOCmd' =>
                Ros2Fanuc_msgsMsgIOCmd::SCHEMA + ['class' => Ros2Fanuc_msgsMsgIOCmd::class],
            'Ros2Fanuc_msgsMsgIOState' =>
                Ros2Fanuc_msgsMsgIOState::SCHEMA + ['class' => Ros2Fanuc_msgsMsgIOState::class],
            'Ros2Fanuc_msgsMsgNumReg' =>
                Ros2Fanuc_msgsMsgNumReg::SCHEMA + ['class' => Ros2Fanuc_msgsMsgNumReg::class],
            'Ros2Fanuc_msgsMsgNumRegCmd' =>
                Ros2Fanuc_msgsMsgNumRegCmd::SCHEMA + ['class' => Ros2Fanuc_msgsMsgNumRegCmd::class],
            'Ros2Fanuc_msgsMsgNumRegState' =>
                Ros2Fanuc_msgsMsgNumRegState::SCHEMA + ['class' => Ros2Fanuc_msgsMsgNumRegState::class],
            'Ros2Fanuc_msgsMsgRMIStatus' =>
                Ros2Fanuc_msgsMsgRMIStatus::SCHEMA + ['class' => Ros2Fanuc_msgsMsgRMIStatus::class],
            'Ros2Fanuc_msgsMsgRobotStatus' =>
                Ros2Fanuc_msgsMsgRobotStatus::SCHEMA + ['class' => Ros2Fanuc_msgsMsgRobotStatus::class],
            'Ros2Fanuc_msgsMsgRobotStatusExt' =>
                Ros2Fanuc_msgsMsgRobotStatusExt::SCHEMA + ['class' => Ros2Fanuc_msgsMsgRobotStatusExt::class],
            'Ros2Fanuc_msgsSrvCfgForceSensor_Request' =>
                Ros2Fanuc_msgsSrvCfgForceSensor_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvCfgForceSensor_Request::class],
            'Ros2Fanuc_msgsSrvCfgForceSensor_Response' =>
                Ros2Fanuc_msgsSrvCfgForceSensor_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvCfgForceSensor_Response::class],
            'Ros2Fanuc_msgsSrvGetAnalogIO_Request' =>
                Ros2Fanuc_msgsSrvGetAnalogIO_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetAnalogIO_Request::class],
            'Ros2Fanuc_msgsSrvGetAnalogIO_Response' =>
                Ros2Fanuc_msgsSrvGetAnalogIO_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetAnalogIO_Response::class],
            'Ros2Fanuc_msgsSrvGetBoolIO_Request' =>
                Ros2Fanuc_msgsSrvGetBoolIO_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetBoolIO_Request::class],
            'Ros2Fanuc_msgsSrvGetBoolIO_Response' =>
                Ros2Fanuc_msgsSrvGetBoolIO_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetBoolIO_Response::class],
            'Ros2Fanuc_msgsSrvGetCartesianPosition_Request' =>
                Ros2Fanuc_msgsSrvGetCartesianPosition_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetCartesianPosition_Request::class],
            'Ros2Fanuc_msgsSrvGetCartesianPosition_Response' =>
                Ros2Fanuc_msgsSrvGetCartesianPosition_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetCartesianPosition_Response::class],
            'Ros2Fanuc_msgsSrvGetGroupIO_Request' =>
                Ros2Fanuc_msgsSrvGetGroupIO_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetGroupIO_Request::class],
            'Ros2Fanuc_msgsSrvGetGroupIO_Response' =>
                Ros2Fanuc_msgsSrvGetGroupIO_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetGroupIO_Response::class],
            'Ros2Fanuc_msgsSrvGetNumReg_Request' =>
                Ros2Fanuc_msgsSrvGetNumReg_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetNumReg_Request::class],
            'Ros2Fanuc_msgsSrvGetNumReg_Response' =>
                Ros2Fanuc_msgsSrvGetNumReg_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetNumReg_Response::class],
            'Ros2Fanuc_msgsSrvGetPayloadComp_Request' =>
                Ros2Fanuc_msgsSrvGetPayloadComp_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetPayloadComp_Request::class],
            'Ros2Fanuc_msgsSrvGetPayloadComp_Response' =>
                Ros2Fanuc_msgsSrvGetPayloadComp_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetPayloadComp_Response::class],
            'Ros2Fanuc_msgsSrvGetPayloadID_Request' =>
                Ros2Fanuc_msgsSrvGetPayloadID_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetPayloadID_Request::class],
            'Ros2Fanuc_msgsSrvGetPayloadID_Response' =>
                Ros2Fanuc_msgsSrvGetPayloadID_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetPayloadID_Response::class],
            'Ros2Fanuc_msgsSrvGetPayloadValue_Request' =>
                Ros2Fanuc_msgsSrvGetPayloadValue_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetPayloadValue_Request::class],
            'Ros2Fanuc_msgsSrvGetPayloadValue_Response' =>
                Ros2Fanuc_msgsSrvGetPayloadValue_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetPayloadValue_Response::class],
            'Ros2Fanuc_msgsSrvGetPosReg_Request' =>
                Ros2Fanuc_msgsSrvGetPosReg_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetPosReg_Request::class],
            'Ros2Fanuc_msgsSrvGetPosReg_Response' =>
                Ros2Fanuc_msgsSrvGetPosReg_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetPosReg_Response::class],
            'Ros2Fanuc_msgsSrvGetTCPSpeed_Request' =>
                Ros2Fanuc_msgsSrvGetTCPSpeed_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetTCPSpeed_Request::class],
            'Ros2Fanuc_msgsSrvGetTCPSpeed_Response' =>
                Ros2Fanuc_msgsSrvGetTCPSpeed_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetTCPSpeed_Response::class],
            'Ros2Fanuc_msgsSrvGetUFrameData_Request' =>
                Ros2Fanuc_msgsSrvGetUFrameData_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetUFrameData_Request::class],
            'Ros2Fanuc_msgsSrvGetUFrameData_Response' =>
                Ros2Fanuc_msgsSrvGetUFrameData_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetUFrameData_Response::class],
            'Ros2Fanuc_msgsSrvGetUFrameUTool_Request' =>
                Ros2Fanuc_msgsSrvGetUFrameUTool_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetUFrameUTool_Request::class],
            'Ros2Fanuc_msgsSrvGetUFrameUTool_Response' =>
                Ros2Fanuc_msgsSrvGetUFrameUTool_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetUFrameUTool_Response::class],
            'Ros2Fanuc_msgsSrvGetUToolData_Request' =>
                Ros2Fanuc_msgsSrvGetUToolData_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetUToolData_Request::class],
            'Ros2Fanuc_msgsSrvGetUToolData_Response' =>
                Ros2Fanuc_msgsSrvGetUToolData_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvGetUToolData_Response::class],
            'Ros2Fanuc_msgsSrvReadError_Request' =>
                Ros2Fanuc_msgsSrvReadError_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvReadError_Request::class],
            'Ros2Fanuc_msgsSrvReadError_Response' =>
                Ros2Fanuc_msgsSrvReadError_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvReadError_Response::class],
            'Ros2Fanuc_msgsSrvReset_Request' =>
                Ros2Fanuc_msgsSrvReset_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvReset_Request::class],
            'Ros2Fanuc_msgsSrvReset_Response' =>
                Ros2Fanuc_msgsSrvReset_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvReset_Response::class],
            'Ros2Fanuc_msgsSrvSetAnalogIO_Request' =>
                Ros2Fanuc_msgsSrvSetAnalogIO_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetAnalogIO_Request::class],
            'Ros2Fanuc_msgsSrvSetAnalogIO_Response' =>
                Ros2Fanuc_msgsSrvSetAnalogIO_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetAnalogIO_Response::class],
            'Ros2Fanuc_msgsSrvSetBoolIO_Request' =>
                Ros2Fanuc_msgsSrvSetBoolIO_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetBoolIO_Request::class],
            'Ros2Fanuc_msgsSrvSetBoolIO_Response' =>
                Ros2Fanuc_msgsSrvSetBoolIO_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetBoolIO_Response::class],
            'Ros2Fanuc_msgsSrvSetGenOverride_Request' =>
                Ros2Fanuc_msgsSrvSetGenOverride_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetGenOverride_Request::class],
            'Ros2Fanuc_msgsSrvSetGenOverride_Response' =>
                Ros2Fanuc_msgsSrvSetGenOverride_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetGenOverride_Response::class],
            'Ros2Fanuc_msgsSrvSetGroupIO_Request' =>
                Ros2Fanuc_msgsSrvSetGroupIO_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetGroupIO_Request::class],
            'Ros2Fanuc_msgsSrvSetGroupIO_Response' =>
                Ros2Fanuc_msgsSrvSetGroupIO_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetGroupIO_Response::class],
            'Ros2Fanuc_msgsSrvSetNumReg_Request' =>
                Ros2Fanuc_msgsSrvSetNumReg_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetNumReg_Request::class],
            'Ros2Fanuc_msgsSrvSetNumReg_Response' =>
                Ros2Fanuc_msgsSrvSetNumReg_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetNumReg_Response::class],
            'Ros2Fanuc_msgsSrvSetPayloadComp_Request' =>
                Ros2Fanuc_msgsSrvSetPayloadComp_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetPayloadComp_Request::class],
            'Ros2Fanuc_msgsSrvSetPayloadComp_Response' =>
                Ros2Fanuc_msgsSrvSetPayloadComp_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetPayloadComp_Response::class],
            'Ros2Fanuc_msgsSrvSetPayloadID_Request' =>
                Ros2Fanuc_msgsSrvSetPayloadID_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetPayloadID_Request::class],
            'Ros2Fanuc_msgsSrvSetPayloadID_Response' =>
                Ros2Fanuc_msgsSrvSetPayloadID_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetPayloadID_Response::class],
            'Ros2Fanuc_msgsSrvSetPayloadValue_Request' =>
                Ros2Fanuc_msgsSrvSetPayloadValue_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetPayloadValue_Request::class],
            'Ros2Fanuc_msgsSrvSetPayloadValue_Response' =>
                Ros2Fanuc_msgsSrvSetPayloadValue_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetPayloadValue_Response::class],
            'Ros2Fanuc_msgsSrvSetPosReg_Request' =>
                Ros2Fanuc_msgsSrvSetPosReg_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetPosReg_Request::class],
            'Ros2Fanuc_msgsSrvSetPosReg_Response' =>
                Ros2Fanuc_msgsSrvSetPosReg_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetPosReg_Response::class],
            'Ros2Fanuc_msgsSrvSetUFrameData_Request' =>
                Ros2Fanuc_msgsSrvSetUFrameData_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetUFrameData_Request::class],
            'Ros2Fanuc_msgsSrvSetUFrameData_Response' =>
                Ros2Fanuc_msgsSrvSetUFrameData_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetUFrameData_Response::class],
            'Ros2Fanuc_msgsSrvSetUFrameUTool_Request' =>
                Ros2Fanuc_msgsSrvSetUFrameUTool_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetUFrameUTool_Request::class],
            'Ros2Fanuc_msgsSrvSetUFrameUTool_Response' =>
                Ros2Fanuc_msgsSrvSetUFrameUTool_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetUFrameUTool_Response::class],
            'Ros2Fanuc_msgsSrvSetUToolData_Request' =>
                Ros2Fanuc_msgsSrvSetUToolData_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetUToolData_Request::class],
            'Ros2Fanuc_msgsSrvSetUToolData_Response' =>
                Ros2Fanuc_msgsSrvSetUToolData_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSetUToolData_Response::class],
            'Ros2Fanuc_msgsSrvSwitchControlState_Request' =>
                Ros2Fanuc_msgsSrvSwitchControlState_Request::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSwitchControlState_Request::class],
            'Ros2Fanuc_msgsSrvSwitchControlState_Response' =>
                Ros2Fanuc_msgsSrvSwitchControlState_Response::SCHEMA + ['class' => Ros2Fanuc_msgsSrvSwitchControlState_Response::class],
            'Ros2Rmi_msgsMsgCallParam' =>
                Ros2Rmi_msgsMsgCallParam::SCHEMA + ['class' => Ros2Rmi_msgsMsgCallParam::class],
            'Ros2Rmi_msgsMsgCartesian' =>
                Ros2Rmi_msgsMsgCartesian::SCHEMA + ['class' => Ros2Rmi_msgsMsgCartesian::class],
            'Ros2Rmi_msgsMsgCommand' =>
                Ros2Rmi_msgsMsgCommand::SCHEMA + ['class' => Ros2Rmi_msgsMsgCommand::class],
            'Ros2Rmi_msgsMsgCommandOptions' =>
                Ros2Rmi_msgsMsgCommandOptions::SCHEMA + ['class' => Ros2Rmi_msgsMsgCommandOptions::class],
            'Ros2Rmi_msgsMsgJoint' =>
                Ros2Rmi_msgsMsgJoint::SCHEMA + ['class' => Ros2Rmi_msgsMsgJoint::class],
            'Ros2Rmi_msgsMsgMotionInstructionOptions' =>
                Ros2Rmi_msgsMsgMotionInstructionOptions::SCHEMA + ['class' => Ros2Rmi_msgsMsgMotionInstructionOptions::class],
            'Ros2Rmi_msgsMsgMotionType' =>
                Ros2Rmi_msgsMsgMotionType::SCHEMA + ['class' => Ros2Rmi_msgsMsgMotionType::class],
            'Ros2Rmi_msgsMsgRepresentation' =>
                Ros2Rmi_msgsMsgRepresentation::SCHEMA + ['class' => Ros2Rmi_msgsMsgRepresentation::class],
            'Ros2Rmi_msgsMsgSpeedType' =>
                Ros2Rmi_msgsMsgSpeedType::SCHEMA + ['class' => Ros2Rmi_msgsMsgSpeedType::class],
            'Ros2Rmi_msgsMsgTermType' =>
                Ros2Rmi_msgsMsgTermType::SCHEMA + ['class' => Ros2Rmi_msgsMsgTermType::class],
            'Ros2Rmi_msgsSrvAddCall_Request' =>
                Ros2Rmi_msgsSrvAddCall_Request::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddCall_Request::class],
            'Ros2Rmi_msgsSrvAddCall_Response' =>
                Ros2Rmi_msgsSrvAddCall_Response::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddCall_Response::class],
            'Ros2Rmi_msgsSrvAddMotionInstruction_Request' =>
                Ros2Rmi_msgsSrvAddMotionInstruction_Request::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddMotionInstruction_Request::class],
            'Ros2Rmi_msgsSrvAddMotionInstruction_Response' =>
                Ros2Rmi_msgsSrvAddMotionInstruction_Response::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddMotionInstruction_Response::class],
            'Ros2Rmi_msgsSrvAddSetPayload_Request' =>
                Ros2Rmi_msgsSrvAddSetPayload_Request::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddSetPayload_Request::class],
            'Ros2Rmi_msgsSrvAddSetPayload_Response' =>
                Ros2Rmi_msgsSrvAddSetPayload_Response::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddSetPayload_Response::class],
            'Ros2Rmi_msgsSrvAddSetUFrame_Request' =>
                Ros2Rmi_msgsSrvAddSetUFrame_Request::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddSetUFrame_Request::class],
            'Ros2Rmi_msgsSrvAddSetUFrame_Response' =>
                Ros2Rmi_msgsSrvAddSetUFrame_Response::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddSetUFrame_Response::class],
            'Ros2Rmi_msgsSrvAddSetUTool_Request' =>
                Ros2Rmi_msgsSrvAddSetUTool_Request::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddSetUTool_Request::class],
            'Ros2Rmi_msgsSrvAddSetUTool_Response' =>
                Ros2Rmi_msgsSrvAddSetUTool_Response::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddSetUTool_Response::class],
            'Ros2Rmi_msgsSrvAddWaitDIN_Request' =>
                Ros2Rmi_msgsSrvAddWaitDIN_Request::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddWaitDIN_Request::class],
            'Ros2Rmi_msgsSrvAddWaitDIN_Response' =>
                Ros2Rmi_msgsSrvAddWaitDIN_Response::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddWaitDIN_Response::class],
            'Ros2Rmi_msgsSrvAddWaitTime_Request' =>
                Ros2Rmi_msgsSrvAddWaitTime_Request::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddWaitTime_Request::class],
            'Ros2Rmi_msgsSrvAddWaitTime_Response' =>
                Ros2Rmi_msgsSrvAddWaitTime_Response::SCHEMA + ['class' => Ros2Rmi_msgsSrvAddWaitTime_Response::class],
            'Ros2Rmi_msgsSrvCallCommand_Request' =>
                Ros2Rmi_msgsSrvCallCommand_Request::SCHEMA + ['class' => Ros2Rmi_msgsSrvCallCommand_Request::class],
            'Ros2Rmi_msgsSrvCallCommand_Response' =>
                Ros2Rmi_msgsSrvCallCommand_Response::SCHEMA + ['class' => Ros2Rmi_msgsSrvCallCommand_Response::class],
            'Ros2Sensor_msgsMsgJointState' =>
                Ros2Sensor_msgsMsgJointState::SCHEMA + ['class' => Ros2Sensor_msgsMsgJointState::class],
            'Ros2Std_srvsSrvTrigger_Request' =>
                Ros2Std_srvsSrvTrigger_Request::SCHEMA + ['class' => Ros2Std_srvsSrvTrigger_Request::class],
            'Ros2Std_srvsSrvTrigger_Response' =>
                Ros2Std_srvsSrvTrigger_Response::SCHEMA + ['class' => Ros2Std_srvsSrvTrigger_Response::class],
        ]);
    }
    return $wire;
}
/** @brief Original complete interface roles and identities; source metadata creates no transport authority. */
const INTERFACES = [
    "builtin_interfaces/msg/Duration" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Builtin_interfacesMsgDuration'
        ]
    ],
    "builtin_interfaces/msg/Time" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Builtin_interfacesMsgTime'
        ]
    ],
    "control_msgs/action/FollowJointTrajectory" => [
        "kind" => 'action',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bd40771444c5441b79e63bdf5f2d5829d2c8b7ea0ccfd285baba8867cdc43757',
        "registered" => true,
        "components" => [
            "goal" => 'Ros2Control_msgsActionFollowJointTrajectory_Goal',
            "result" => 'Ros2Control_msgsActionFollowJointTrajectory_Result',
            "feedback" => 'Ros2Control_msgsActionFollowJointTrajectory_Feedback'
        ]
    ],
    "control_msgs/msg/JointComponentTolerance" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Control_msgsMsgJointComponentTolerance'
        ]
    ],
    "control_msgs/msg/JointTolerance" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Control_msgsMsgJointTolerance'
        ]
    ],
    "fanuc_msgs/msg/AnalogIO" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgAnalogIO'
        ]
    ],
    "fanuc_msgs/msg/AnalogIOCmd" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgAnalogIOCmd'
        ]
    ],
    "fanuc_msgs/msg/AnalogIOState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgAnalogIOState'
        ]
    ],
    "fanuc_msgs/msg/BoolIO" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgBoolIO'
        ]
    ],
    "fanuc_msgs/msg/CollaborativeSpeedScaling" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgCollaborativeSpeedScaling'
        ]
    ],
    "fanuc_msgs/msg/ConnectionStatus" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgConnectionStatus'
        ]
    ],
    "fanuc_msgs/msg/ForceSensor" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgForceSensor'
        ]
    ],
    "fanuc_msgs/msg/Frame" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgFrame'
        ]
    ],
    "fanuc_msgs/msg/IOCmd" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgIOCmd'
        ]
    ],
    "fanuc_msgs/msg/IOState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgIOState'
        ]
    ],
    "fanuc_msgs/msg/IOType" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgIOType'
        ]
    ],
    "fanuc_msgs/msg/NumReg" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgNumReg'
        ]
    ],
    "fanuc_msgs/msg/NumRegCmd" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgNumRegCmd'
        ]
    ],
    "fanuc_msgs/msg/NumRegState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgNumRegState'
        ]
    ],
    "fanuc_msgs/msg/RMIStatus" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgRMIStatus'
        ]
    ],
    "fanuc_msgs/msg/RobotStatus" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgRobotStatus'
        ]
    ],
    "fanuc_msgs/msg/RobotStatusExt" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Fanuc_msgsMsgRobotStatusExt'
        ]
    ],
    "fanuc_msgs/srv/CfgForceSensor" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0c3d09d5b7a7da6ee5bf2ea22581a0f77a7c4b4960040094e28880696c0631aa',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvCfgForceSensor_Request',
            "response" => 'Ros2Fanuc_msgsSrvCfgForceSensor_Response'
        ]
    ],
    "fanuc_msgs/srv/GetAnalogIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2ef419ee9d2733d5a5a7f0bba7acd91a3df314af1f3562c5b5b43b291b1f8968',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetAnalogIO_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetAnalogIO_Response'
        ]
    ],
    "fanuc_msgs/srv/GetBoolIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_181dbe97f6705b1bd0dda6f86aa7f9ba59555718afb59ab074f7b2e68bb90f34',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetBoolIO_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetBoolIO_Response'
        ]
    ],
    "fanuc_msgs/srv/GetCartesianPosition" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_31c40acb06059b0dd6fbfd7b1bffb1bd336da8696a7f306662763e0a8e060fb0',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetCartesianPosition_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetCartesianPosition_Response'
        ]
    ],
    "fanuc_msgs/srv/GetGroupIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7b069a6b89528ab5d916170981f5892b572a4354244d69ac183b74d86b766439',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetGroupIO_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetGroupIO_Response'
        ]
    ],
    "fanuc_msgs/srv/GetNumReg" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8fc52b682cfce5ce0b3307867e4a6c3fcc9c35cd5b4c924c427ed6956a230530',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetNumReg_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetNumReg_Response'
        ]
    ],
    "fanuc_msgs/srv/GetPayloadComp" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2f4f001ea12c464e2610feebed2149b61e3fb1c232609b4e87c666f2dd0d633c',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetPayloadComp_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetPayloadComp_Response'
        ]
    ],
    "fanuc_msgs/srv/GetPayloadID" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3838f3a5a8c9ef0a40f77abafdfc38c2fd5bc2f6f2fa714f184c904e99f81cd6',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetPayloadID_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetPayloadID_Response'
        ]
    ],
    "fanuc_msgs/srv/GetPayloadValue" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8a309e04e5785a23b077faf5de03a9b2881f19dcb4759b0309612ba9db280b69',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetPayloadValue_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetPayloadValue_Response'
        ]
    ],
    "fanuc_msgs/srv/GetPosReg" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8d2207bd697f119a857d62cb1c2fb474b7664225bf5ffb4059823f44512b552b',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetPosReg_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetPosReg_Response'
        ]
    ],
    "fanuc_msgs/srv/GetTCPSpeed" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_62085ae96ac6ff0485b294f360bfbef3aa19fcef6fdff44f7e7229f4847496d8',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetTCPSpeed_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetTCPSpeed_Response'
        ]
    ],
    "fanuc_msgs/srv/GetUFrameData" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b740b9f568a9e3a6d711e5e9ffd72fe7934418e68c6cc319c3cf364a307911ad',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetUFrameData_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetUFrameData_Response'
        ]
    ],
    "fanuc_msgs/srv/GetUFrameUTool" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4ee97404dfc655adc0f3b0a4fe4dcc741e0498521516965fc373c95cf643b79d',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetUFrameUTool_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetUFrameUTool_Response'
        ]
    ],
    "fanuc_msgs/srv/GetUToolData" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d1d123a1996d42cfa0479379ea2ad521a5ccca5f7d228476594635852b584032',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvGetUToolData_Request',
            "response" => 'Ros2Fanuc_msgsSrvGetUToolData_Response'
        ]
    ],
    "fanuc_msgs/srv/ReadError" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_750f4fa11d8bf6f9970ed32cd0d49956dc489e5d5a7460ff2d4289b56fefb0b8',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvReadError_Request',
            "response" => 'Ros2Fanuc_msgsSrvReadError_Response'
        ]
    ],
    "fanuc_msgs/srv/Reset" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_62854b1e2a815b194eca69240b6a007162601743b7a6ebdea856c0e49067e7fe',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvReset_Request',
            "response" => 'Ros2Fanuc_msgsSrvReset_Response'
        ]
    ],
    "fanuc_msgs/srv/SetAnalogIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2296af5f0b47b644c232fbfbf365bd185effaa1156d762925e46cb9390134f38',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetAnalogIO_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetAnalogIO_Response'
        ]
    ],
    "fanuc_msgs/srv/SetBoolIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b55ede16b8043df85f59d0400528d34841df651d1224746bf4108516ed3c5133',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetBoolIO_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetBoolIO_Response'
        ]
    ],
    "fanuc_msgs/srv/SetGenOverride" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8ad45876cce16ffd23c057d2174b43eb0076f55a07eba4884f354552e11b9874',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetGenOverride_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetGenOverride_Response'
        ]
    ],
    "fanuc_msgs/srv/SetGroupIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1a8395e1034456d563e1a3635c8afa8672bd5a7a66c4581e6ef151a93097c93c',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetGroupIO_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetGroupIO_Response'
        ]
    ],
    "fanuc_msgs/srv/SetNumReg" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_66b9dff6e170a8f55c03134f30a5d16095d6cbd2ab8e1951bd29c66d180abf07',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetNumReg_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetNumReg_Response'
        ]
    ],
    "fanuc_msgs/srv/SetPayloadComp" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9d166af8c15848c01a8e2f78b383083085d3765dface4f346f481ee03864b571',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetPayloadComp_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetPayloadComp_Response'
        ]
    ],
    "fanuc_msgs/srv/SetPayloadID" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6041b6deb6598576e23a3c1fee17a45aeec3d02ce90d7906563c4d951c5c4417',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetPayloadID_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetPayloadID_Response'
        ]
    ],
    "fanuc_msgs/srv/SetPayloadValue" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a4cdbd15320e60d560906abf26c26f2c1e893c1a0ba6a19815c4ea42cca8605d',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetPayloadValue_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetPayloadValue_Response'
        ]
    ],
    "fanuc_msgs/srv/SetPosReg" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_712106c0c91b6fcd728475fb4ca33a1ecb2d351f74863a8ade4d49fdd1092a7c',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetPosReg_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetPosReg_Response'
        ]
    ],
    "fanuc_msgs/srv/SetUFrameData" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_42bfaf10161ebc87ef2b8d6c9cf9e955e1cc8af92af760d9f5df6c3c84b5f05a',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetUFrameData_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetUFrameData_Response'
        ]
    ],
    "fanuc_msgs/srv/SetUFrameUTool" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f4579319b0b6d25efc747aaf3f71169e287d6ceb4ad109841dca5fdce1f8132b',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetUFrameUTool_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetUFrameUTool_Response'
        ]
    ],
    "fanuc_msgs/srv/SetUToolData" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_76b07b3e89e55fe81fad5b87963cc42aa0be9a7d107788207c55f2cdc135976f',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSetUToolData_Request',
            "response" => 'Ros2Fanuc_msgsSrvSetUToolData_Response'
        ]
    ],
    "fanuc_msgs/srv/SwitchControlState" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7f75ef3d22c1e3761a0f83cef64f57372fd3d67f7943583ee42c59c0fb0d45c1',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Fanuc_msgsSrvSwitchControlState_Request',
            "response" => 'Ros2Fanuc_msgsSrvSwitchControlState_Response'
        ]
    ],
    "geometry_msgs/msg/Quaternion" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Geometry_msgsMsgQuaternion'
        ]
    ],
    "geometry_msgs/msg/Transform" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Geometry_msgsMsgTransform'
        ]
    ],
    "geometry_msgs/msg/Twist" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Geometry_msgsMsgTwist'
        ]
    ],
    "geometry_msgs/msg/Vector3" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Geometry_msgsMsgVector3'
        ]
    ],
    "rmi_msgs/msg/CallParam" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgCallParam'
        ]
    ],
    "rmi_msgs/msg/Cartesian" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgCartesian'
        ]
    ],
    "rmi_msgs/msg/Command" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgCommand'
        ]
    ],
    "rmi_msgs/msg/CommandOptions" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgCommandOptions'
        ]
    ],
    "rmi_msgs/msg/Joint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgJoint'
        ]
    ],
    "rmi_msgs/msg/MotionInstructionOptions" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgMotionInstructionOptions'
        ]
    ],
    "rmi_msgs/msg/MotionType" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgMotionType'
        ]
    ],
    "rmi_msgs/msg/Representation" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgRepresentation'
        ]
    ],
    "rmi_msgs/msg/SpeedType" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgSpeedType'
        ]
    ],
    "rmi_msgs/msg/TermType" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Rmi_msgsMsgTermType'
        ]
    ],
    "rmi_msgs/srv/AddCall" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_eb552ee3930f56e6642f1bb0c1908c3078dce69d418269a1478dab02fa86954f',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Rmi_msgsSrvAddCall_Request',
            "response" => 'Ros2Rmi_msgsSrvAddCall_Response'
        ]
    ],
    "rmi_msgs/srv/AddMotionInstruction" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4ac733ef727afcb747248a522d29eb82719f6cc4047bc574518da86bf69c9c83',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Rmi_msgsSrvAddMotionInstruction_Request',
            "response" => 'Ros2Rmi_msgsSrvAddMotionInstruction_Response'
        ]
    ],
    "rmi_msgs/srv/AddSetPayload" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3815103f03508dcdd68e71db6c3e2065cdbedc9893554c29f63e4d1ac3054926',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Rmi_msgsSrvAddSetPayload_Request',
            "response" => 'Ros2Rmi_msgsSrvAddSetPayload_Response'
        ]
    ],
    "rmi_msgs/srv/AddSetUFrame" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ddbb9115787cd7421d40b557b1f11046983de9fc0ded8398d4fed43df6bdfdf2',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Rmi_msgsSrvAddSetUFrame_Request',
            "response" => 'Ros2Rmi_msgsSrvAddSetUFrame_Response'
        ]
    ],
    "rmi_msgs/srv/AddSetUTool" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9fb04e61b75b8c469d261322c544d16bfdb903834b34bac580f26469471e0972',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Rmi_msgsSrvAddSetUTool_Request',
            "response" => 'Ros2Rmi_msgsSrvAddSetUTool_Response'
        ]
    ],
    "rmi_msgs/srv/AddWaitDIN" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e990aaad83a6463867466ab9e9eb70b137d59f2cc4b08e7928a7b1d2b7814b8b',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Rmi_msgsSrvAddWaitDIN_Request',
            "response" => 'Ros2Rmi_msgsSrvAddWaitDIN_Response'
        ]
    ],
    "rmi_msgs/srv/AddWaitTime" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3ebf7bd8e5b7822826d6bacf9ae6c5f3c7d30f56e5d6be2418c2727eb6f23a86',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Rmi_msgsSrvAddWaitTime_Request',
            "response" => 'Ros2Rmi_msgsSrvAddWaitTime_Response'
        ]
    ],
    "rmi_msgs/srv/CallCommand" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f2545dd77939bf2640726d07c8ccdea933bcbd54a24e9bdd39fac3feb9805cde',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Rmi_msgsSrvCallCommand_Request',
            "response" => 'Ros2Rmi_msgsSrvCallCommand_Response'
        ]
    ],
    "sensor_msgs/msg/JointState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Sensor_msgsMsgJointState'
        ]
    ],
    "std_msgs/msg/Header" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Std_msgsMsgHeader'
        ]
    ],
    "std_srvs/srv/Trigger" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2bafba62f4b166a5e736d6b5f0a5db9a8f8c2f02dc21daa0779ff56f8b87e583',
        "registered" => false,
        "components" => [
            "request" => 'Ros2Std_srvsSrvTrigger_Request',
            "response" => 'Ros2Std_srvsSrvTrigger_Response'
        ]
    ],
    "trajectory_msgs/msg/JointTrajectory" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Trajectory_msgsMsgJointTrajectory'
        ]
    ],
    "trajectory_msgs/msg/JointTrajectoryPoint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint'
        ]
    ],
    "trajectory_msgs/msg/MultiDOFJointTrajectory" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory'
        ]
    ],
    "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint'
        ]
    ]
];
