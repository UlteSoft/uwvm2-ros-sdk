<?php
/**
 * @file records.php
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */

declare(strict_types=1);
namespace Uwvm\Yaskawa\Ros2;

/** @file records.php
 * @brief Complete original YASKAWA ROS 2 records and interfaces.
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

/** @brief Own every original geometry_msgs/msg/TransformStamped field; extent 72..648 bytes. */
final class Ros2Geometry_msgsMsgTransformStamped
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Geometry_msgsMsgTransformStamped',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792',
        "minimum" => 72,
        "maximum" => 648,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'geometry_msgs/msg/TransformStamped',
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
                "name" => 'child_frame_id',
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
                "name" => 'transform',
                "type" => 'Ros2Geometry_msgsMsgTransform',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 56
            ]
        ]
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original child_frame_id: string; scalar; bound/count 0. */
    public mixed $child_frame_id;
    /** @brief Original transform: Ros2Geometry_msgsMsgTransform; scalar; bound/count 0. */
    public mixed $transform;
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
        if (array_key_exists('child_frame_id', $values)) { $this->child_frame_id = $values['child_frame_id']; }
        else
        {
            $this->child_frame_id = '';
        }
        if (array_key_exists('transform', $values)) { $this->transform = $values['transform']; }
        else
        {
            $this->transform = new Ros2Geometry_msgsMsgTransform();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Geometry_msgsMsgTransformStamped', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Geometry_msgsMsgTransformStamped', $bytes); }
}

/** @brief Own every original industrial_msgs/msg/DebugLevel field; extent 1..1 bytes. */
final class Ros2Industrial_msgsMsgDebugLevel
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsMsgDebugLevel',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/msg/DebugLevel',
        "constants" => [
            "DEBUG" => 5,
            "INFO" => 4,
            "WARN" => 3,
            "ERROR" => 2,
            "FATAL" => 1,
            "NONE" => 0
        ],
        "fields" => [
            [
                "name" => 'val',
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
    /** @brief Original DEBUG constant; consumes no instance bytes. */
    public const DEBUG = 5;
    /** @brief Original INFO constant; consumes no instance bytes. */
    public const INFO = 4;
    /** @brief Original WARN constant; consumes no instance bytes. */
    public const WARN = 3;
    /** @brief Original ERROR constant; consumes no instance bytes. */
    public const ERROR = 2;
    /** @brief Original FATAL constant; consumes no instance bytes. */
    public const FATAL = 1;
    /** @brief Original NONE constant; consumes no instance bytes. */
    public const NONE = 0;
    /** @brief Original val: uint8; scalar; bound/count 0. */
    public mixed $val;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('val', $values)) { $this->val = $values['val']; }
        else
        {
            $this->val = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsMsgDebugLevel', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsMsgDebugLevel', $bytes); }
}

/** @brief Own every original industrial_msgs/msg/DeviceInfo field; extent 20..2580 bytes. */
final class Ros2Industrial_msgsMsgDeviceInfo
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsMsgDeviceInfo',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b',
        "minimum" => 20,
        "maximum" => 2580,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/msg/DeviceInfo',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'model',
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
                "name" => 'serial_number',
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
                "name" => 'hw_version',
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
                "name" => 'sw_version',
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
                "name" => 'address',
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
    /** @brief Original model: string; scalar; bound/count 0. */
    public mixed $model;
    /** @brief Original serial_number: string; scalar; bound/count 0. */
    public mixed $serial_number;
    /** @brief Original hw_version: string; scalar; bound/count 0. */
    public mixed $hw_version;
    /** @brief Original sw_version: string; scalar; bound/count 0. */
    public mixed $sw_version;
    /** @brief Original address: string; scalar; bound/count 0. */
    public mixed $address;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('model', $values)) { $this->model = $values['model']; }
        else
        {
            $this->model = '';
        }
        if (array_key_exists('serial_number', $values)) { $this->serial_number = $values['serial_number']; }
        else
        {
            $this->serial_number = '';
        }
        if (array_key_exists('hw_version', $values)) { $this->hw_version = $values['hw_version']; }
        else
        {
            $this->hw_version = '';
        }
        if (array_key_exists('sw_version', $values)) { $this->sw_version = $values['sw_version']; }
        else
        {
            $this->sw_version = '';
        }
        if (array_key_exists('address', $values)) { $this->address = $values['address']; }
        else
        {
            $this->address = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsMsgDeviceInfo', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsMsgDeviceInfo', $bytes); }
}

/** @brief Own every original industrial_msgs/msg/RobotMode field; extent 1..1 bytes. */
final class Ros2Industrial_msgsMsgRobotMode
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsMsgRobotMode',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/msg/RobotMode',
        "constants" => [
            "UNKNOWN" => -1,
            "MANUAL" => 1,
            "AUTO" => 2
        ],
        "fields" => [
            [
                "name" => 'val',
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
    /** @brief Original UNKNOWN constant; consumes no instance bytes. */
    public const UNKNOWN = -1;
    /** @brief Original MANUAL constant; consumes no instance bytes. */
    public const MANUAL = 1;
    /** @brief Original AUTO constant; consumes no instance bytes. */
    public const AUTO = 2;
    /** @brief Original val: int8; scalar; bound/count 0. */
    public mixed $val;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('val', $values)) { $this->val = $values['val']; }
        else
        {
            $this->val = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsMsgRobotMode', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsMsgRobotMode', $bytes); }
}

/** @brief Own every original industrial_msgs/msg/TriState field; extent 1..1 bytes. */
final class Ros2Industrial_msgsMsgTriState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsMsgTriState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/msg/TriState',
        "constants" => [
            "UNKNOWN" => -1,
            "TRUE" => 1,
            "ON" => 1,
            "ENABLED" => 1,
            "HIGH" => 1,
            "CLOSED" => 1,
            "FALSE" => 0,
            "OFF" => 0,
            "DISABLED" => 0,
            "LOW" => 0,
            "OPEN" => 0
        ],
        "fields" => [
            [
                "name" => 'val',
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
    /** @brief Original UNKNOWN constant; consumes no instance bytes. */
    public const UNKNOWN = -1;
    /** @brief Original TRUE constant; consumes no instance bytes. */
    public const TRUE = 1;
    /** @brief Original ON constant; consumes no instance bytes. */
    public const ON = 1;
    /** @brief Original ENABLED constant; consumes no instance bytes. */
    public const ENABLED = 1;
    /** @brief Original HIGH constant; consumes no instance bytes. */
    public const HIGH = 1;
    /** @brief Original CLOSED constant; consumes no instance bytes. */
    public const CLOSED = 1;
    /** @brief Original FALSE constant; consumes no instance bytes. */
    public const FALSE = 0;
    /** @brief Original OFF constant; consumes no instance bytes. */
    public const OFF = 0;
    /** @brief Original DISABLED constant; consumes no instance bytes. */
    public const DISABLED = 0;
    /** @brief Original LOW constant; consumes no instance bytes. */
    public const LOW = 0;
    /** @brief Original OPEN constant; consumes no instance bytes. */
    public const OPEN = 0;
    /** @brief Original val: int8; scalar; bound/count 0. */
    public mixed $val;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('val', $values)) { $this->val = $values['val']; }
        else
        {
            $this->val = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsMsgTriState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsMsgTriState', $bytes); }
}

/** @brief Own every original industrial_msgs/msg/RobotStatus field; extent 22..150 bytes. */
final class Ros2Industrial_msgsMsgRobotStatus
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsMsgRobotStatus',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba',
        "minimum" => 22,
        "maximum" => 150,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/msg/RobotStatus',
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
                "name" => 'mode',
                "type" => 'Ros2Industrial_msgsMsgRobotMode',
                "array" => '',
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
                "type" => 'Ros2Industrial_msgsMsgTriState',
                "array" => '',
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
                "type" => 'Ros2Industrial_msgsMsgTriState',
                "array" => '',
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
                "type" => 'Ros2Industrial_msgsMsgTriState',
                "array" => '',
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
                "name" => 'in_motion',
                "type" => 'Ros2Industrial_msgsMsgTriState',
                "array" => '',
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
                "name" => 'in_error',
                "type" => 'Ros2Industrial_msgsMsgTriState',
                "array" => '',
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
                "name" => 'error_codes',
                "type" => 'int32',
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
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original mode: Ros2Industrial_msgsMsgRobotMode; scalar; bound/count 0. */
    public mixed $mode;
    /** @brief Original e_stopped: Ros2Industrial_msgsMsgTriState; scalar; bound/count 0. */
    public mixed $e_stopped;
    /** @brief Original drives_powered: Ros2Industrial_msgsMsgTriState; scalar; bound/count 0. */
    public mixed $drives_powered;
    /** @brief Original motion_possible: Ros2Industrial_msgsMsgTriState; scalar; bound/count 0. */
    public mixed $motion_possible;
    /** @brief Original in_motion: Ros2Industrial_msgsMsgTriState; scalar; bound/count 0. */
    public mixed $in_motion;
    /** @brief Original in_error: Ros2Industrial_msgsMsgTriState; scalar; bound/count 0. */
    public mixed $in_error;
    /** @brief Original error_codes: int32; sequence; bound/count 16. */
    public mixed $error_codes;
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
        if (array_key_exists('mode', $values)) { $this->mode = $values['mode']; }
        else
        {
            $this->mode = new Ros2Industrial_msgsMsgRobotMode();
        }
        if (array_key_exists('e_stopped', $values)) { $this->e_stopped = $values['e_stopped']; }
        else
        {
            $this->e_stopped = new Ros2Industrial_msgsMsgTriState();
        }
        if (array_key_exists('drives_powered', $values)) { $this->drives_powered = $values['drives_powered']; }
        else
        {
            $this->drives_powered = new Ros2Industrial_msgsMsgTriState();
        }
        if (array_key_exists('motion_possible', $values)) { $this->motion_possible = $values['motion_possible']; }
        else
        {
            $this->motion_possible = new Ros2Industrial_msgsMsgTriState();
        }
        if (array_key_exists('in_motion', $values)) { $this->in_motion = $values['in_motion']; }
        else
        {
            $this->in_motion = new Ros2Industrial_msgsMsgTriState();
        }
        if (array_key_exists('in_error', $values)) { $this->in_error = $values['in_error']; }
        else
        {
            $this->in_error = new Ros2Industrial_msgsMsgTriState();
        }
        if (array_key_exists('error_codes', $values)) { $this->error_codes = $values['error_codes']; }
        else
        {
            $this->error_codes = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsMsgRobotStatus', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsMsgRobotStatus', $bytes); }
}

/** @brief Own every original industrial_msgs/msg/ServiceReturnCode field; extent 1..1 bytes. */
final class Ros2Industrial_msgsMsgServiceReturnCode
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsMsgServiceReturnCode',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/msg/ServiceReturnCode',
        "constants" => [
            "SUCCESS" => 1,
            "FAILURE" => -1
        ],
        "fields" => [
            [
                "name" => 'val',
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
    /** @brief Original SUCCESS constant; consumes no instance bytes. */
    public const SUCCESS = 1;
    /** @brief Original FAILURE constant; consumes no instance bytes. */
    public const FAILURE = -1;
    /** @brief Original val: int8; scalar; bound/count 0. */
    public mixed $val;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('val', $values)) { $this->val = $values['val']; }
        else
        {
            $this->val = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsMsgServiceReturnCode', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsMsgServiceReturnCode', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/CmdJointTrajectory_Request field; extent 20..4164 bytes. */
final class Ros2Industrial_msgsSrvCmdJointTrajectory_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvCmdJointTrajectory_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d',
        "minimum" => 20,
        "maximum" => 4164,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/CmdJointTrajectory_Request',
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
            ]
        ]
    ];
    /** @brief Original trajectory: Ros2Trajectory_msgsMsgJointTrajectory; scalar; bound/count 0. */
    public mixed $trajectory;
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
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvCmdJointTrajectory_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvCmdJointTrajectory_Request', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/CmdJointTrajectory_Response field; extent 1..1 bytes. */
final class Ros2Industrial_msgsSrvCmdJointTrajectory_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvCmdJointTrajectory_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/CmdJointTrajectory_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'code',
                "type" => 'Ros2Industrial_msgsMsgServiceReturnCode',
                "array" => '',
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
    /** @brief Original code: Ros2Industrial_msgsMsgServiceReturnCode; scalar; bound/count 0. */
    public mixed $code;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('code', $values)) { $this->code = $values['code']; }
        else
        {
            $this->code = new Ros2Industrial_msgsMsgServiceReturnCode();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvCmdJointTrajectory_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvCmdJointTrajectory_Response', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/GetRobotInfo_Request field; extent 0..0 bytes. */
final class Ros2Industrial_msgsSrvGetRobotInfo_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvGetRobotInfo_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/GetRobotInfo_Request',
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
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvGetRobotInfo_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvGetRobotInfo_Request', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/GetRobotInfo_Response field; extent 25..32768 bytes. */
final class Ros2Industrial_msgsSrvGetRobotInfo_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvGetRobotInfo_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152',
        "minimum" => 25,
        "maximum" => 32768,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/GetRobotInfo_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'controller',
                "type" => 'Ros2Industrial_msgsMsgDeviceInfo',
                "array" => '',
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
                "name" => 'robots',
                "type" => 'Ros2Industrial_msgsMsgDeviceInfo',
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
                "element_minimum" => 20
            ],
            [
                "name" => 'code',
                "type" => 'Ros2Industrial_msgsMsgServiceReturnCode',
                "array" => '',
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
    /** @brief Original controller: Ros2Industrial_msgsMsgDeviceInfo; scalar; bound/count 0. */
    public mixed $controller;
    /** @brief Original robots: Ros2Industrial_msgsMsgDeviceInfo; sequence; bound/count 16. */
    public mixed $robots;
    /** @brief Original code: Ros2Industrial_msgsMsgServiceReturnCode; scalar; bound/count 0. */
    public mixed $code;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('controller', $values)) { $this->controller = $values['controller']; }
        else
        {
            $this->controller = new Ros2Industrial_msgsMsgDeviceInfo();
        }
        if (array_key_exists('robots', $values)) { $this->robots = $values['robots']; }
        else
        {
            $this->robots = [];
        }
        if (array_key_exists('code', $values)) { $this->code = $values['code']; }
        else
        {
            $this->code = new Ros2Industrial_msgsMsgServiceReturnCode();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvGetRobotInfo_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvGetRobotInfo_Response', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/SetDrivePower_Request field; extent 1..1 bytes. */
final class Ros2Industrial_msgsSrvSetDrivePower_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvSetDrivePower_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/SetDrivePower_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'drive_power',
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
    /** @brief Original drive_power: bool; scalar; bound/count 0. */
    public mixed $drive_power;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('drive_power', $values)) { $this->drive_power = $values['drive_power']; }
        else
        {
            $this->drive_power = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvSetDrivePower_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvSetDrivePower_Request', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/SetDrivePower_Response field; extent 1..1 bytes. */
final class Ros2Industrial_msgsSrvSetDrivePower_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvSetDrivePower_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/SetDrivePower_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'code',
                "type" => 'Ros2Industrial_msgsMsgServiceReturnCode',
                "array" => '',
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
    /** @brief Original code: Ros2Industrial_msgsMsgServiceReturnCode; scalar; bound/count 0. */
    public mixed $code;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('code', $values)) { $this->code = $values['code']; }
        else
        {
            $this->code = new Ros2Industrial_msgsMsgServiceReturnCode();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvSetDrivePower_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvSetDrivePower_Response', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/SetRemoteLoggerLevel_Request field; extent 1..1 bytes. */
final class Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/SetRemoteLoggerLevel_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'level',
                "type" => 'Ros2Industrial_msgsMsgDebugLevel',
                "array" => '',
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
    /** @brief Original level: Ros2Industrial_msgsMsgDebugLevel; scalar; bound/count 0. */
    public mixed $level;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('level', $values)) { $this->level = $values['level']; }
        else
        {
            $this->level = new Ros2Industrial_msgsMsgDebugLevel();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/SetRemoteLoggerLevel_Response field; extent 1..1 bytes. */
final class Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/SetRemoteLoggerLevel_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'code',
                "type" => 'Ros2Industrial_msgsMsgServiceReturnCode',
                "array" => '',
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
    /** @brief Original code: Ros2Industrial_msgsMsgServiceReturnCode; scalar; bound/count 0. */
    public mixed $code;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('code', $values)) { $this->code = $values['code']; }
        else
        {
            $this->code = new Ros2Industrial_msgsMsgServiceReturnCode();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/StartMotion_Request field; extent 0..0 bytes. */
final class Ros2Industrial_msgsSrvStartMotion_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvStartMotion_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/StartMotion_Request',
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
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvStartMotion_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvStartMotion_Request', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/StartMotion_Response field; extent 1..1 bytes. */
final class Ros2Industrial_msgsSrvStartMotion_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvStartMotion_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/StartMotion_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'code',
                "type" => 'Ros2Industrial_msgsMsgServiceReturnCode',
                "array" => '',
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
    /** @brief Original code: Ros2Industrial_msgsMsgServiceReturnCode; scalar; bound/count 0. */
    public mixed $code;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('code', $values)) { $this->code = $values['code']; }
        else
        {
            $this->code = new Ros2Industrial_msgsMsgServiceReturnCode();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvStartMotion_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvStartMotion_Response', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/StopMotion_Request field; extent 0..0 bytes. */
final class Ros2Industrial_msgsSrvStopMotion_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvStopMotion_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/StopMotion_Request',
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
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvStopMotion_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvStopMotion_Request', $bytes); }
}

/** @brief Own every original industrial_msgs/srv/StopMotion_Response field; extent 1..1 bytes. */
final class Ros2Industrial_msgsSrvStopMotion_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Industrial_msgsSrvStopMotion_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'industrial_msgs/srv/StopMotion_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'code',
                "type" => 'Ros2Industrial_msgsMsgServiceReturnCode',
                "array" => '',
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
    /** @brief Original code: Ros2Industrial_msgsMsgServiceReturnCode; scalar; bound/count 0. */
    public mixed $code;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('code', $values)) { $this->code = $values['code']; }
        else
        {
            $this->code = new Ros2Industrial_msgsMsgServiceReturnCode();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Industrial_msgsSrvStopMotion_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Industrial_msgsSrvStopMotion_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/msg/AlarmCauseRemedy field; extent 8..1032 bytes. */
final class Ros2Motoros2_interfacesMsgAlarmCauseRemedy
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesMsgAlarmCauseRemedy',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5',
        "minimum" => 8,
        "maximum" => 1032,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/msg/AlarmCauseRemedy',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'cause',
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
                "name" => 'remedy',
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
    /** @brief Original cause: string; scalar; bound/count 0. */
    public mixed $cause;
    /** @brief Original remedy: string; scalar; bound/count 0. */
    public mixed $remedy;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('cause', $values)) { $this->cause = $values['cause']; }
        else
        {
            $this->cause = '';
        }
        if (array_key_exists('remedy', $values)) { $this->remedy = $values['remedy']; }
        else
        {
            $this->remedy = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesMsgAlarmCauseRemedy', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesMsgAlarmCauseRemedy', $bytes); }
}

/** @brief Own every original motoros2_interfaces/msg/AlarmInfo field; extent 32..25248 bytes. */
final class Ros2Motoros2_interfacesMsgAlarmInfo
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesMsgAlarmInfo',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f',
        "minimum" => 32,
        "maximum" => 25248,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/msg/AlarmInfo',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'number',
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
            ],
            [
                "name" => 'sub_code',
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
                "name" => 'datetime',
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
                "name" => 'contents',
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
            ],
            [
                "name" => 'description',
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
            ],
            [
                "name" => 'help',
                "type" => 'Ros2Motoros2_interfacesMsgAlarmCauseRemedy',
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
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original number: uint32; scalar; bound/count 0. */
    public mixed $number;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original sub_code: int32; scalar; bound/count 0. */
    public mixed $sub_code;
    /** @brief Original datetime: Ros2Builtin_interfacesMsgTime; scalar; bound/count 0. */
    public mixed $datetime;
    /** @brief Original contents: string; scalar; bound/count 0. */
    public mixed $contents;
    /** @brief Original description: string; scalar; bound/count 0. */
    public mixed $description;
    /** @brief Original help: Ros2Motoros2_interfacesMsgAlarmCauseRemedy; sequence; bound/count 16. */
    public mixed $help;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('number', $values)) { $this->number = $values['number']; }
        else
        {
            $this->number = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('sub_code', $values)) { $this->sub_code = $values['sub_code']; }
        else
        {
            $this->sub_code = 0;
        }
        if (array_key_exists('datetime', $values)) { $this->datetime = $values['datetime']; }
        else
        {
            $this->datetime = new Ros2Builtin_interfacesMsgTime();
        }
        if (array_key_exists('contents', $values)) { $this->contents = $values['contents']; }
        else
        {
            $this->contents = '';
        }
        if (array_key_exists('description', $values)) { $this->description = $values['description']; }
        else
        {
            $this->description = '';
        }
        if (array_key_exists('help', $values)) { $this->help = $values['help']; }
        else
        {
            $this->help = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesMsgAlarmInfo', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesMsgAlarmInfo', $bytes); }
}

/** @brief Own every original motoros2_interfaces/msg/ErrorInfo field; extent 20..532 bytes. */
final class Ros2Motoros2_interfacesMsgErrorInfo
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesMsgErrorInfo',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67',
        "minimum" => 20,
        "maximum" => 532,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/msg/ErrorInfo',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'number',
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
            ],
            [
                "name" => 'sub_code',
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
                "name" => 'datetime',
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
            ]
        ]
    ];
    /** @brief Original number: uint32; scalar; bound/count 0. */
    public mixed $number;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original sub_code: int32; scalar; bound/count 0. */
    public mixed $sub_code;
    /** @brief Original datetime: Ros2Builtin_interfacesMsgTime; scalar; bound/count 0. */
    public mixed $datetime;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('number', $values)) { $this->number = $values['number']; }
        else
        {
            $this->number = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('sub_code', $values)) { $this->sub_code = $values['sub_code']; }
        else
        {
            $this->sub_code = 0;
        }
        if (array_key_exists('datetime', $values)) { $this->datetime = $values['datetime']; }
        else
        {
            $this->datetime = new Ros2Builtin_interfacesMsgTime();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesMsgErrorInfo', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesMsgErrorInfo', $bytes); }
}

/** @brief Own every original motoros2_interfaces/msg/InformJobCrudResultCodes field; extent 0..0 bytes. */
final class Ros2Motoros2_interfacesMsgInformJobCrudResultCodes
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesMsgInformJobCrudResultCodes',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/msg/InformJobCrudResultCodes',
        "constants" => [
            "RC_OK" => 1,
            "STR_OK" => 'Success',
            "RC_ERR_REFRESHING_JOB_LIST" => 10,
            "STR_ERR_REFRESHING_JOB_LIST" => 'Error refreshing job list',
            "RC_ERR_RETRIEVING_FILE_COUNT" => 11,
            "STR_ERR_RETRIEVING_FILE_COUNT" => 'Error retrieving file count',
            "RC_ERR_TOO_MANY_JOBS" => 12,
            "STR_ERR_TOO_MANY_JOBS" => 'Too many jobs',
            "RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST" => 13,
            "STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST" => 'Failed retrieving job name from list',
            "RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE" => 14,
            "STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE" => 'Error adding job name to service response'
        ],
        "fields" => [

        ]
    ];
    /** @brief Original exact-width RC_OK constant as a decimal word constructor input. */
    public const RC_OK = '1';
    /** @brief Original STR_OK constant; consumes no instance bytes. */
    public const STR_OK = 'Success';
    /** @brief Original exact-width RC_ERR_REFRESHING_JOB_LIST constant as a decimal word constructor input. */
    public const RC_ERR_REFRESHING_JOB_LIST = '10';
    /** @brief Original STR_ERR_REFRESHING_JOB_LIST constant; consumes no instance bytes. */
    public const STR_ERR_REFRESHING_JOB_LIST = 'Error refreshing job list';
    /** @brief Original exact-width RC_ERR_RETRIEVING_FILE_COUNT constant as a decimal word constructor input. */
    public const RC_ERR_RETRIEVING_FILE_COUNT = '11';
    /** @brief Original STR_ERR_RETRIEVING_FILE_COUNT constant; consumes no instance bytes. */
    public const STR_ERR_RETRIEVING_FILE_COUNT = 'Error retrieving file count';
    /** @brief Original exact-width RC_ERR_TOO_MANY_JOBS constant as a decimal word constructor input. */
    public const RC_ERR_TOO_MANY_JOBS = '12';
    /** @brief Original STR_ERR_TOO_MANY_JOBS constant; consumes no instance bytes. */
    public const STR_ERR_TOO_MANY_JOBS = 'Too many jobs';
    /** @brief Original exact-width RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST constant as a decimal word constructor input. */
    public const RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST = '13';
    /** @brief Original STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST constant; consumes no instance bytes. */
    public const STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST = 'Failed retrieving job name from list';
    /** @brief Original exact-width RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE constant as a decimal word constructor input. */
    public const RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE = '14';
    /** @brief Original STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE constant; consumes no instance bytes. */
    public const STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE = 'Error adding job name to service response';
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesMsgInformJobCrudResultCodes', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesMsgInformJobCrudResultCodes', $bytes); }
}

/** @brief Own every original motoros2_interfaces/msg/InitTrajEnum field; extent 2..2 bytes. */
final class Ros2Motoros2_interfacesMsgInitTrajEnum
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesMsgInitTrajEnum',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/msg/InitTrajEnum',
        "constants" => [
            "INIT_TRAJ_OK" => 0,
            "INIT_TRAJ_OK_STR" => 'OK',
            "INIT_TRAJ_UNSPECIFIED" => 200,
            "INIT_TRAJ_UNSPECIFIED_STR" => 'Unspecified failure',
            "INIT_TRAJ_TOO_SMALL" => 201,
            "INIT_TRAJ_TOO_SMALL_STR" => 'Trajectory must contain at least two points.',
            "INIT_TRAJ_TOO_BIG" => 202,
            "INIT_TRAJ_TOO_BIG_STR" => 'Trajectory contains too many points (Not enough memory).',
            "INIT_TRAJ_ALREADY_IN_MOTION" => 203,
            "INIT_TRAJ_ALREADY_IN_MOTION_STR" => 'Already running a trajectory.',
            "INIT_TRAJ_INVALID_STARTING_POS" => 204,
            "INIT_TRAJ_INVALID_STARTING_POS_STR" => 'The first point must match the robot\'s current position.',
            "INIT_TRAJ_INVALID_VELOCITY" => 205,
            "INIT_TRAJ_INVALID_VELOCITY_STR" => 'The commanded velocity is too high.',
            "INIT_TRAJ_INVALID_JOINTNAME" => 206,
            "INIT_TRAJ_INVALID_JOINTNAME_STR" => 'Invalid joint name specified. Check motoros2_config.yaml.',
            "INIT_TRAJ_INCOMPLETE_JOINTLIST" => 207,
            "INIT_TRAJ_INCOMPLETE_JOINTLIST_STR" => 'Trajectory must contain data for all joints.',
            "INIT_TRAJ_INVALID_TIME" => 208,
            "INIT_TRAJ_INVALID_TIME_STR" => 'Invalid time in trajectory.',
            "INIT_TRAJ_WRONG_MODE" => 209,
            "INIT_TRAJ_WRONG_MODE_STR" => 'Must call start_traj_mode service',
            "INIT_TRAJ_BACKWARD_TIME" => 210,
            "INIT_TRAJ_BACKWARD_TIME_STR" => 'Trajectory message contains waypoints that are not strictly increasing in time.',
            "INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS" => 211,
            "INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR" => 'Trajectory did not contain position data for all axes.',
            "INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES" => 212,
            "INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR" => 'Trajectory did not contain velocity data for all axes.',
            "INIT_TRAJ_INVALID_ENDING_VELOCITY" => 213,
            "INIT_TRAJ_INVALID_ENDING_VELOCITY_STR" => 'The final point in the trajectory must have zero velocity.',
            "INIT_TRAJ_INVALID_ENDING_ACCELERATION" => 214,
            "INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR" => 'The final point in the trajectory must have zero acceleration.',
            "INIT_TRAJ_DUPLICATE_JOINT_NAME" => 215,
            "INIT_TRAJ_DUPLICATE_JOINT_NAME_STR" => 'The trajectory contains duplicate joint names.'
        ],
        "fields" => [
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
    /** @brief Original INIT_TRAJ_OK constant; consumes no instance bytes. */
    public const INIT_TRAJ_OK = 0;
    /** @brief Original INIT_TRAJ_OK_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_OK_STR = 'OK';
    /** @brief Original INIT_TRAJ_UNSPECIFIED constant; consumes no instance bytes. */
    public const INIT_TRAJ_UNSPECIFIED = 200;
    /** @brief Original INIT_TRAJ_UNSPECIFIED_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_UNSPECIFIED_STR = 'Unspecified failure';
    /** @brief Original INIT_TRAJ_TOO_SMALL constant; consumes no instance bytes. */
    public const INIT_TRAJ_TOO_SMALL = 201;
    /** @brief Original INIT_TRAJ_TOO_SMALL_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_TOO_SMALL_STR = 'Trajectory must contain at least two points.';
    /** @brief Original INIT_TRAJ_TOO_BIG constant; consumes no instance bytes. */
    public const INIT_TRAJ_TOO_BIG = 202;
    /** @brief Original INIT_TRAJ_TOO_BIG_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_TOO_BIG_STR = 'Trajectory contains too many points (Not enough memory).';
    /** @brief Original INIT_TRAJ_ALREADY_IN_MOTION constant; consumes no instance bytes. */
    public const INIT_TRAJ_ALREADY_IN_MOTION = 203;
    /** @brief Original INIT_TRAJ_ALREADY_IN_MOTION_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_ALREADY_IN_MOTION_STR = 'Already running a trajectory.';
    /** @brief Original INIT_TRAJ_INVALID_STARTING_POS constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_STARTING_POS = 204;
    /** @brief Original INIT_TRAJ_INVALID_STARTING_POS_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_STARTING_POS_STR = 'The first point must match the robot\'s current position.';
    /** @brief Original INIT_TRAJ_INVALID_VELOCITY constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_VELOCITY = 205;
    /** @brief Original INIT_TRAJ_INVALID_VELOCITY_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_VELOCITY_STR = 'The commanded velocity is too high.';
    /** @brief Original INIT_TRAJ_INVALID_JOINTNAME constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_JOINTNAME = 206;
    /** @brief Original INIT_TRAJ_INVALID_JOINTNAME_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_JOINTNAME_STR = 'Invalid joint name specified. Check motoros2_config.yaml.';
    /** @brief Original INIT_TRAJ_INCOMPLETE_JOINTLIST constant; consumes no instance bytes. */
    public const INIT_TRAJ_INCOMPLETE_JOINTLIST = 207;
    /** @brief Original INIT_TRAJ_INCOMPLETE_JOINTLIST_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_INCOMPLETE_JOINTLIST_STR = 'Trajectory must contain data for all joints.';
    /** @brief Original INIT_TRAJ_INVALID_TIME constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_TIME = 208;
    /** @brief Original INIT_TRAJ_INVALID_TIME_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_TIME_STR = 'Invalid time in trajectory.';
    /** @brief Original INIT_TRAJ_WRONG_MODE constant; consumes no instance bytes. */
    public const INIT_TRAJ_WRONG_MODE = 209;
    /** @brief Original INIT_TRAJ_WRONG_MODE_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_WRONG_MODE_STR = 'Must call start_traj_mode service';
    /** @brief Original INIT_TRAJ_BACKWARD_TIME constant; consumes no instance bytes. */
    public const INIT_TRAJ_BACKWARD_TIME = 210;
    /** @brief Original INIT_TRAJ_BACKWARD_TIME_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_BACKWARD_TIME_STR = 'Trajectory message contains waypoints that are not strictly increasing in time.';
    /** @brief Original INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS constant; consumes no instance bytes. */
    public const INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS = 211;
    /** @brief Original INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR = 'Trajectory did not contain position data for all axes.';
    /** @brief Original INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES constant; consumes no instance bytes. */
    public const INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES = 212;
    /** @brief Original INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR = 'Trajectory did not contain velocity data for all axes.';
    /** @brief Original INIT_TRAJ_INVALID_ENDING_VELOCITY constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_ENDING_VELOCITY = 213;
    /** @brief Original INIT_TRAJ_INVALID_ENDING_VELOCITY_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_ENDING_VELOCITY_STR = 'The final point in the trajectory must have zero velocity.';
    /** @brief Original INIT_TRAJ_INVALID_ENDING_ACCELERATION constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_ENDING_ACCELERATION = 214;
    /** @brief Original INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR = 'The final point in the trajectory must have zero acceleration.';
    /** @brief Original INIT_TRAJ_DUPLICATE_JOINT_NAME constant; consumes no instance bytes. */
    public const INIT_TRAJ_DUPLICATE_JOINT_NAME = 215;
    /** @brief Original INIT_TRAJ_DUPLICATE_JOINT_NAME_STR constant; consumes no instance bytes. */
    public const INIT_TRAJ_DUPLICATE_JOINT_NAME_STR = 'The trajectory contains duplicate joint names.';
    /** @brief Original value: uint16; scalar; bound/count 0. */
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
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesMsgInitTrajEnum', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesMsgInitTrajEnum', $bytes); }
}

/** @brief Own every original motoros2_interfaces/msg/IoResultCodes field; extent 0..0 bytes. */
final class Ros2Motoros2_interfacesMsgIoResultCodes
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesMsgIoResultCodes',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/msg/IoResultCodes',
        "constants" => [
            "OK" => 0,
            "OK_STR" => 'Success',
            "READ_ADDRESS_INVALID" => 1001,
            "READ_ADDRESS_INVALID_STR" => 'Address cannot be read from (out of readable range)',
            "WRITE_ADDRESS_INVALID" => 1002,
            "WRITE_ADDRESS_INVALID_STR" => 'Address cannot be written to (out of writable range)',
            "WRITE_VALUE_INVALID" => 1003,
            "WRITE_VALUE_INVALID_STR" => 'Illegal value for the type of IO element addressed',
            "READ_API_ERROR" => 1004,
            "READ_API_ERROR_STR" => 'The MotoPlus function mpReadIO returned -1. No further information is available',
            "WRITE_API_ERROR" => 1005,
            "WRITE_API_ERROR_STR" => 'The MotoPlus function mpWriteIO returned -1. No further information is available',
            "UNKNOWN_API_ERROR_STR" => 'Unknown error accessing I/O. No further information is available'
        ],
        "fields" => [

        ]
    ];
    /** @brief Original exact-width OK constant as a decimal word constructor input. */
    public const OK = '0';
    /** @brief Original OK_STR constant; consumes no instance bytes. */
    public const OK_STR = 'Success';
    /** @brief Original exact-width READ_ADDRESS_INVALID constant as a decimal word constructor input. */
    public const READ_ADDRESS_INVALID = '1001';
    /** @brief Original READ_ADDRESS_INVALID_STR constant; consumes no instance bytes. */
    public const READ_ADDRESS_INVALID_STR = 'Address cannot be read from (out of readable range)';
    /** @brief Original exact-width WRITE_ADDRESS_INVALID constant as a decimal word constructor input. */
    public const WRITE_ADDRESS_INVALID = '1002';
    /** @brief Original WRITE_ADDRESS_INVALID_STR constant; consumes no instance bytes. */
    public const WRITE_ADDRESS_INVALID_STR = 'Address cannot be written to (out of writable range)';
    /** @brief Original exact-width WRITE_VALUE_INVALID constant as a decimal word constructor input. */
    public const WRITE_VALUE_INVALID = '1003';
    /** @brief Original WRITE_VALUE_INVALID_STR constant; consumes no instance bytes. */
    public const WRITE_VALUE_INVALID_STR = 'Illegal value for the type of IO element addressed';
    /** @brief Original exact-width READ_API_ERROR constant as a decimal word constructor input. */
    public const READ_API_ERROR = '1004';
    /** @brief Original READ_API_ERROR_STR constant; consumes no instance bytes. */
    public const READ_API_ERROR_STR = 'The MotoPlus function mpReadIO returned -1. No further information is available';
    /** @brief Original exact-width WRITE_API_ERROR constant as a decimal word constructor input. */
    public const WRITE_API_ERROR = '1005';
    /** @brief Original WRITE_API_ERROR_STR constant; consumes no instance bytes. */
    public const WRITE_API_ERROR_STR = 'The MotoPlus function mpWriteIO returned -1. No further information is available';
    /** @brief Original UNKNOWN_API_ERROR_STR constant; consumes no instance bytes. */
    public const UNKNOWN_API_ERROR_STR = 'Unknown error accessing I/O. No further information is available';
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesMsgIoResultCodes', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesMsgIoResultCodes', $bytes); }
}

/** @brief Own every original motoros2_interfaces/msg/MotionReadyEnum field; extent 2..2 bytes. */
final class Ros2Motoros2_interfacesMsgMotionReadyEnum
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesMsgMotionReadyEnum',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/msg/MotionReadyEnum',
        "constants" => [
            "READY" => 1,
            "READY_STR" => 'Ready',
            "NOT_READY_UNSPECIFIED" => 100,
            "NOT_READY_UNSPECIFIED_STR" => 'Unspecified',
            "NOT_READY_ALARM" => 101,
            "NOT_READY_ALARM_STR" => 'The controller has an active Alarm',
            "NOT_READY_ERROR" => 102,
            "NOT_READY_ERROR_STR" => 'The controller has an active Error',
            "NOT_READY_ESTOP" => 103,
            "NOT_READY_ESTOP_STR" => 'The controller is in E-Stop',
            "NOT_READY_NOT_PLAY" => 104,
            "NOT_READY_NOT_PLAY_STR" => 'The teach pendant must not be in TEACH mode',
            "NOT_READY_NOT_REMOTE" => 105,
            "NOT_READY_NOT_REMOTE_STR" => 'The teach pendant must be in REMOTE mode',
            "NOT_READY_SERVO_OFF" => 106,
            "NOT_READY_SERVO_OFF_STR" => 'Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service',
            "NOT_READY_HOLD" => 107,
            "NOT_READY_HOLD_STR" => 'The controller is in HOLD',
            "NOT_READY_JOB_NOT_STARTED" => 108,
            "NOT_READY_JOB_NOT_STARTED_STR" => 'The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service',
            "NOT_READY_NOT_ON_WAIT_CMD" => 109,
            "NOT_READY_NOT_ON_WAIT_CMD_STR" => 'INFORM job is not on a WAIT command. Check the format of INIT_ROS',
            "NOT_READY_PFL_ACTIVE" => 111,
            "NOT_READY_PFL_ACTIVE_STR" => 'A PFL event has occurred. Please return the robot to a safe state',
            "NOT_READY_INC_MOVE_ERROR" => 112,
            "NOT_READY_INC_MOVE_ERROR_STR" => 'The controller is in an error state. Please call reset_error to attempt to clear the error',
            "NOT_READY_OTHER_PROGRAM_RUNNING" => 113,
            "NOT_READY_OTHER_PROGRAM_RUNNING_STR" => 'Controller is running another job',
            "NOT_READY_OTHER_TRAJ_MODE_ACTIVE" => 114,
            "NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR" => 'Another trajectory mode is already active. Please call stop_traj_mode service',
            "NOT_READY_NOT_CONT_CYCLE_MODE" => 115,
            "NOT_READY_NOT_CONT_CYCLE_MODE_STR" => 'AUTO cycle mode not set. Please set the cycle mode to AUTO',
            "NOT_READY_MAJOR_ALARM" => 116,
            "NOT_READY_MAJOR_ALARM_STR" => 'Major Alarms can\'t be reset. Please check the teach pendant',
            "NOT_READY_ECO_MODE" => 117,
            "NOT_READY_ECO_MODE_STR" => 'Couldn\'t disable eco mode',
            "NOT_READY_SERVO_ON_TIMEOUT" => 118,
            "NOT_READY_SERVO_ON_TIMEOUT_STR" => 'Timed out while waiting for servo on'
        ],
        "fields" => [
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
    /** @brief Original READY constant; consumes no instance bytes. */
    public const READY = 1;
    /** @brief Original READY_STR constant; consumes no instance bytes. */
    public const READY_STR = 'Ready';
    /** @brief Original NOT_READY_UNSPECIFIED constant; consumes no instance bytes. */
    public const NOT_READY_UNSPECIFIED = 100;
    /** @brief Original NOT_READY_UNSPECIFIED_STR constant; consumes no instance bytes. */
    public const NOT_READY_UNSPECIFIED_STR = 'Unspecified';
    /** @brief Original NOT_READY_ALARM constant; consumes no instance bytes. */
    public const NOT_READY_ALARM = 101;
    /** @brief Original NOT_READY_ALARM_STR constant; consumes no instance bytes. */
    public const NOT_READY_ALARM_STR = 'The controller has an active Alarm';
    /** @brief Original NOT_READY_ERROR constant; consumes no instance bytes. */
    public const NOT_READY_ERROR = 102;
    /** @brief Original NOT_READY_ERROR_STR constant; consumes no instance bytes. */
    public const NOT_READY_ERROR_STR = 'The controller has an active Error';
    /** @brief Original NOT_READY_ESTOP constant; consumes no instance bytes. */
    public const NOT_READY_ESTOP = 103;
    /** @brief Original NOT_READY_ESTOP_STR constant; consumes no instance bytes. */
    public const NOT_READY_ESTOP_STR = 'The controller is in E-Stop';
    /** @brief Original NOT_READY_NOT_PLAY constant; consumes no instance bytes. */
    public const NOT_READY_NOT_PLAY = 104;
    /** @brief Original NOT_READY_NOT_PLAY_STR constant; consumes no instance bytes. */
    public const NOT_READY_NOT_PLAY_STR = 'The teach pendant must not be in TEACH mode';
    /** @brief Original NOT_READY_NOT_REMOTE constant; consumes no instance bytes. */
    public const NOT_READY_NOT_REMOTE = 105;
    /** @brief Original NOT_READY_NOT_REMOTE_STR constant; consumes no instance bytes. */
    public const NOT_READY_NOT_REMOTE_STR = 'The teach pendant must be in REMOTE mode';
    /** @brief Original NOT_READY_SERVO_OFF constant; consumes no instance bytes. */
    public const NOT_READY_SERVO_OFF = 106;
    /** @brief Original NOT_READY_SERVO_OFF_STR constant; consumes no instance bytes. */
    public const NOT_READY_SERVO_OFF_STR = 'Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service';
    /** @brief Original NOT_READY_HOLD constant; consumes no instance bytes. */
    public const NOT_READY_HOLD = 107;
    /** @brief Original NOT_READY_HOLD_STR constant; consumes no instance bytes. */
    public const NOT_READY_HOLD_STR = 'The controller is in HOLD';
    /** @brief Original NOT_READY_JOB_NOT_STARTED constant; consumes no instance bytes. */
    public const NOT_READY_JOB_NOT_STARTED = 108;
    /** @brief Original NOT_READY_JOB_NOT_STARTED_STR constant; consumes no instance bytes. */
    public const NOT_READY_JOB_NOT_STARTED_STR = 'The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service';
    /** @brief Original NOT_READY_NOT_ON_WAIT_CMD constant; consumes no instance bytes. */
    public const NOT_READY_NOT_ON_WAIT_CMD = 109;
    /** @brief Original NOT_READY_NOT_ON_WAIT_CMD_STR constant; consumes no instance bytes. */
    public const NOT_READY_NOT_ON_WAIT_CMD_STR = 'INFORM job is not on a WAIT command. Check the format of INIT_ROS';
    /** @brief Original NOT_READY_PFL_ACTIVE constant; consumes no instance bytes. */
    public const NOT_READY_PFL_ACTIVE = 111;
    /** @brief Original NOT_READY_PFL_ACTIVE_STR constant; consumes no instance bytes. */
    public const NOT_READY_PFL_ACTIVE_STR = 'A PFL event has occurred. Please return the robot to a safe state';
    /** @brief Original NOT_READY_INC_MOVE_ERROR constant; consumes no instance bytes. */
    public const NOT_READY_INC_MOVE_ERROR = 112;
    /** @brief Original NOT_READY_INC_MOVE_ERROR_STR constant; consumes no instance bytes. */
    public const NOT_READY_INC_MOVE_ERROR_STR = 'The controller is in an error state. Please call reset_error to attempt to clear the error';
    /** @brief Original NOT_READY_OTHER_PROGRAM_RUNNING constant; consumes no instance bytes. */
    public const NOT_READY_OTHER_PROGRAM_RUNNING = 113;
    /** @brief Original NOT_READY_OTHER_PROGRAM_RUNNING_STR constant; consumes no instance bytes. */
    public const NOT_READY_OTHER_PROGRAM_RUNNING_STR = 'Controller is running another job';
    /** @brief Original NOT_READY_OTHER_TRAJ_MODE_ACTIVE constant; consumes no instance bytes. */
    public const NOT_READY_OTHER_TRAJ_MODE_ACTIVE = 114;
    /** @brief Original NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR constant; consumes no instance bytes. */
    public const NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR = 'Another trajectory mode is already active. Please call stop_traj_mode service';
    /** @brief Original NOT_READY_NOT_CONT_CYCLE_MODE constant; consumes no instance bytes. */
    public const NOT_READY_NOT_CONT_CYCLE_MODE = 115;
    /** @brief Original NOT_READY_NOT_CONT_CYCLE_MODE_STR constant; consumes no instance bytes. */
    public const NOT_READY_NOT_CONT_CYCLE_MODE_STR = 'AUTO cycle mode not set. Please set the cycle mode to AUTO';
    /** @brief Original NOT_READY_MAJOR_ALARM constant; consumes no instance bytes. */
    public const NOT_READY_MAJOR_ALARM = 116;
    /** @brief Original NOT_READY_MAJOR_ALARM_STR constant; consumes no instance bytes. */
    public const NOT_READY_MAJOR_ALARM_STR = 'Major Alarms can\'t be reset. Please check the teach pendant';
    /** @brief Original NOT_READY_ECO_MODE constant; consumes no instance bytes. */
    public const NOT_READY_ECO_MODE = 117;
    /** @brief Original NOT_READY_ECO_MODE_STR constant; consumes no instance bytes. */
    public const NOT_READY_ECO_MODE_STR = 'Couldn\'t disable eco mode';
    /** @brief Original NOT_READY_SERVO_ON_TIMEOUT constant; consumes no instance bytes. */
    public const NOT_READY_SERVO_ON_TIMEOUT = 118;
    /** @brief Original NOT_READY_SERVO_ON_TIMEOUT_STR constant; consumes no instance bytes. */
    public const NOT_READY_SERVO_ON_TIMEOUT_STR = 'Timed out while waiting for servo on';
    /** @brief Original value: uint16; scalar; bound/count 0. */
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
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesMsgMotionReadyEnum', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesMsgMotionReadyEnum', $bytes); }
}

/** @brief Own every original motoros2_interfaces/msg/QueueResultEnum field; extent 2..2 bytes. */
final class Ros2Motoros2_interfacesMsgQueueResultEnum
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesMsgQueueResultEnum',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23',
        "minimum" => 2,
        "maximum" => 2,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/msg/QueueResultEnum',
        "constants" => [
            "SUCCESS" => 1,
            "SUCCESS_STR" => '',
            "WRONG_MODE" => 2,
            "WRONG_MODE_STR" => 'Must call start_point_queue_mode service',
            "INIT_FAILURE" => 3,
            "INIT_FAILURE_STR" => 'Failed to initialize the streaming trajectory',
            "BUSY" => 4,
            "BUSY_STR" => 'Busy processing the previous trajectory point. Please resend the next point shortly',
            "INVALID_JOINT_LIST" => 5,
            "INVALID_JOINT_LIST_STR" => 'Point must contain data for all joints',
            "UNABLE_TO_PROCESS_POINT" => 6,
            "UNABLE_TO_PROCESS_POINT_STR" => 'Error while processing the trajectory point. Check debug log for more details'
        ],
        "fields" => [
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
    /** @brief Original SUCCESS constant; consumes no instance bytes. */
    public const SUCCESS = 1;
    /** @brief Original SUCCESS_STR constant; consumes no instance bytes. */
    public const SUCCESS_STR = '';
    /** @brief Original WRONG_MODE constant; consumes no instance bytes. */
    public const WRONG_MODE = 2;
    /** @brief Original WRONG_MODE_STR constant; consumes no instance bytes. */
    public const WRONG_MODE_STR = 'Must call start_point_queue_mode service';
    /** @brief Original INIT_FAILURE constant; consumes no instance bytes. */
    public const INIT_FAILURE = 3;
    /** @brief Original INIT_FAILURE_STR constant; consumes no instance bytes. */
    public const INIT_FAILURE_STR = 'Failed to initialize the streaming trajectory';
    /** @brief Original BUSY constant; consumes no instance bytes. */
    public const BUSY = 4;
    /** @brief Original BUSY_STR constant; consumes no instance bytes. */
    public const BUSY_STR = 'Busy processing the previous trajectory point. Please resend the next point shortly';
    /** @brief Original INVALID_JOINT_LIST constant; consumes no instance bytes. */
    public const INVALID_JOINT_LIST = 5;
    /** @brief Original INVALID_JOINT_LIST_STR constant; consumes no instance bytes. */
    public const INVALID_JOINT_LIST_STR = 'Point must contain data for all joints';
    /** @brief Original UNABLE_TO_PROCESS_POINT constant; consumes no instance bytes. */
    public const UNABLE_TO_PROCESS_POINT = 6;
    /** @brief Original UNABLE_TO_PROCESS_POINT_STR constant; consumes no instance bytes. */
    public const UNABLE_TO_PROCESS_POINT_STR = 'Error while processing the trajectory point. Check debug log for more details';
    /** @brief Original value: uint16; scalar; bound/count 0. */
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
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesMsgQueueResultEnum', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesMsgQueueResultEnum', $bytes); }
}

/** @brief Own every original motoros2_interfaces/msg/SelectionResultCodes field; extent 4..4 bytes. */
final class Ros2Motoros2_interfacesMsgSelectionResultCodes
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesMsgSelectionResultCodes',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/msg/SelectionResultCodes',
        "constants" => [
            "OK" => 0,
            "OK_STR" => '',
            "INVALID_CONTROLLER_STATE" => 400,
            "INVALID_CONTROLLER_STATE_STR" => 'Pendant is not in REMOTE mode',
            "INVALID_CONTROL_GROUP" => 401,
            "INVALID_CONTROL_GROUP_STR" => 'Invalid control group',
            "INVALID_SELECTION_INDEX" => 402,
            "INVALID_SELECTION_INDEX_STR" => 'Invalid tool selection'
        ],
        "fields" => [
            [
                "name" => 'value',
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
    /** @brief Original exact-width OK constant as a decimal word constructor input. */
    public const OK = '0';
    /** @brief Original OK_STR constant; consumes no instance bytes. */
    public const OK_STR = '';
    /** @brief Original exact-width INVALID_CONTROLLER_STATE constant as a decimal word constructor input. */
    public const INVALID_CONTROLLER_STATE = '400';
    /** @brief Original INVALID_CONTROLLER_STATE_STR constant; consumes no instance bytes. */
    public const INVALID_CONTROLLER_STATE_STR = 'Pendant is not in REMOTE mode';
    /** @brief Original exact-width INVALID_CONTROL_GROUP constant as a decimal word constructor input. */
    public const INVALID_CONTROL_GROUP = '401';
    /** @brief Original INVALID_CONTROL_GROUP_STR constant; consumes no instance bytes. */
    public const INVALID_CONTROL_GROUP_STR = 'Invalid control group';
    /** @brief Original exact-width INVALID_SELECTION_INDEX constant as a decimal word constructor input. */
    public const INVALID_SELECTION_INDEX = '402';
    /** @brief Original INVALID_SELECTION_INDEX_STR constant; consumes no instance bytes. */
    public const INVALID_SELECTION_INDEX_STR = 'Invalid tool selection';
    /** @brief Original value: uint32; scalar; bound/count 0. */
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
            $this->value = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesMsgSelectionResultCodes', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesMsgSelectionResultCodes', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/GetActiveAlarmInfo_Request field; extent 0..0 bytes. */
final class Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/GetActiveAlarmInfo_Request',
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
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/GetActiveAlarmInfo_Response field; extent 16..32768 bytes. */
final class Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567',
        "minimum" => 16,
        "maximum" => 32768,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/GetActiveAlarmInfo_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
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
                "name" => 'result_message',
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
                "name" => 'alarms',
                "type" => 'Ros2Motoros2_interfacesMsgAlarmInfo',
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
                "element_minimum" => 32
            ],
            [
                "name" => 'errors',
                "type" => 'Ros2Motoros2_interfacesMsgErrorInfo',
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
                "element_minimum" => 20
            ]
        ]
    ];
    /** @brief Original result_code: uint32; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original result_message: string; scalar; bound/count 0. */
    public mixed $result_message;
    /** @brief Original alarms: Ros2Motoros2_interfacesMsgAlarmInfo; sequence; bound/count 16. */
    public mixed $alarms;
    /** @brief Original errors: Ros2Motoros2_interfacesMsgErrorInfo; sequence; bound/count 16. */
    public mixed $errors;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('result_message', $values)) { $this->result_message = $values['result_message']; }
        else
        {
            $this->result_message = '';
        }
        if (array_key_exists('alarms', $values)) { $this->alarms = $values['alarms']; }
        else
        {
            $this->alarms = [];
        }
        if (array_key_exists('errors', $values)) { $this->errors = $values['errors']; }
        else
        {
            $this->errors = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ListInformJobs_Request field; extent 0..0 bytes. */
final class Ros2Motoros2_interfacesSrvListInformJobs_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvListInformJobs_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ListInformJobs_Request',
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
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvListInformJobs_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvListInformJobs_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ListInformJobs_Response field; extent 12..8780 bytes. */
final class Ros2Motoros2_interfacesSrvListInformJobs_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvListInformJobs_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc',
        "minimum" => 12,
        "maximum" => 8780,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ListInformJobs_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
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
            ],
            [
                "name" => 'names',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 16,
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
    /** @brief Original result_code: uint32; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original names: string; sequence; bound/count 16. */
    public mixed $names;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('names', $values)) { $this->names = $values['names']; }
        else
        {
            $this->names = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvListInformJobs_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvListInformJobs_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/QueueTrajPoint_Request field; extent 28..1228 bytes. */
final class Ros2Motoros2_interfacesSrvQueueTrajPoint_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvQueueTrajPoint_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0',
        "minimum" => 28,
        "maximum" => 1228,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/QueueTrajPoint_Request',
        "constants" => [

        ],
        "fields" => [
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
                "name" => 'point',
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
            ]
        ]
    ];
    /** @brief Original joint_names: string; sequence; bound/count 12. */
    public mixed $joint_names;
    /** @brief Original point: Ros2Trajectory_msgsMsgJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $point;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('joint_names', $values)) { $this->joint_names = $values['joint_names']; }
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('point', $values)) { $this->point = $values['point']; }
        else
        {
            $this->point = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvQueueTrajPoint_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvQueueTrajPoint_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/QueueTrajPoint_Response field; extent 6..518 bytes. */
final class Ros2Motoros2_interfacesSrvQueueTrajPoint_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvQueueTrajPoint_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/QueueTrajPoint_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'Ros2Motoros2_interfacesMsgQueueResultEnum',
                "array" => '',
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
    /** @brief Original result_code: Ros2Motoros2_interfacesMsgQueueResultEnum; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = new Ros2Motoros2_interfacesMsgQueueResultEnum();
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvQueueTrajPoint_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvQueueTrajPoint_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ReadGroupIO_Request field; extent 4..4 bytes. */
final class Ros2Motoros2_interfacesSrvReadGroupIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvReadGroupIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ReadGroupIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'address',
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
    /** @brief Original address: uint32; scalar; bound/count 0. */
    public mixed $address;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('address', $values)) { $this->address = $values['address']; }
        else
        {
            $this->address = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvReadGroupIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvReadGroupIO_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ReadGroupIO_Response field; extent 10..522 bytes. */
final class Ros2Motoros2_interfacesSrvReadGroupIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvReadGroupIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d',
        "minimum" => 10,
        "maximum" => 522,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ReadGroupIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
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
            ],
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
                "name" => 'value',
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
    /** @brief Original result_code: uint32; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original success: bool; scalar; bound/count 0. */
    public mixed $success;
    /** @brief Original value: uint8; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('success', $values)) { $this->success = $values['success']; }
        else
        {
            $this->success = false;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvReadGroupIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvReadGroupIO_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ReadMRegister_Request field; extent 4..4 bytes. */
final class Ros2Motoros2_interfacesSrvReadMRegister_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvReadMRegister_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ReadMRegister_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'address',
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
    /** @brief Original address: uint32; scalar; bound/count 0. */
    public mixed $address;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('address', $values)) { $this->address = $values['address']; }
        else
        {
            $this->address = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvReadMRegister_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvReadMRegister_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ReadMRegister_Response field; extent 11..523 bytes. */
final class Ros2Motoros2_interfacesSrvReadMRegister_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvReadMRegister_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04',
        "minimum" => 11,
        "maximum" => 523,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ReadMRegister_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
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
            ],
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
    /** @brief Original result_code: uint32; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original success: bool; scalar; bound/count 0. */
    public mixed $success;
    /** @brief Original value: uint16; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('success', $values)) { $this->success = $values['success']; }
        else
        {
            $this->success = false;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvReadMRegister_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvReadMRegister_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ReadSingleIO_Request field; extent 4..4 bytes. */
final class Ros2Motoros2_interfacesSrvReadSingleIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvReadSingleIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ReadSingleIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'address',
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
    /** @brief Original address: uint32; scalar; bound/count 0. */
    public mixed $address;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('address', $values)) { $this->address = $values['address']; }
        else
        {
            $this->address = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvReadSingleIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvReadSingleIO_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ReadSingleIO_Response field; extent 13..525 bytes. */
final class Ros2Motoros2_interfacesSrvReadSingleIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvReadSingleIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082',
        "minimum" => 13,
        "maximum" => 525,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ReadSingleIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
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
            ],
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
                "name" => 'value',
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
    /** @brief Original result_code: uint32; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original success: bool; scalar; bound/count 0. */
    public mixed $success;
    /** @brief Original value: int32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('success', $values)) { $this->success = $values['success']; }
        else
        {
            $this->success = false;
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvReadSingleIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvReadSingleIO_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ResetError_Request field; extent 0..0 bytes. */
final class Ros2Motoros2_interfacesSrvResetError_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvResetError_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ResetError_Request',
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
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvResetError_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvResetError_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/ResetError_Response field; extent 6..518 bytes. */
final class Ros2Motoros2_interfacesSrvResetError_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvResetError_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/ResetError_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'Ros2Motoros2_interfacesMsgMotionReadyEnum',
                "array" => '',
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
    /** @brief Original result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = new Ros2Motoros2_interfacesMsgMotionReadyEnum();
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvResetError_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvResetError_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/SelectMotionTool_Request field; extent 8..8 bytes. */
final class Ros2Motoros2_interfacesSrvSelectMotionTool_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvSelectMotionTool_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/SelectMotionTool_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'group_number',
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
                "name" => 'tool_number',
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
    /** @brief Original group_number: uint32; scalar; bound/count 0. */
    public mixed $group_number;
    /** @brief Original tool_number: uint32; scalar; bound/count 0. */
    public mixed $tool_number;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('group_number', $values)) { $this->group_number = $values['group_number']; }
        else
        {
            $this->group_number = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('tool_number', $values)) { $this->tool_number = $values['tool_number']; }
        else
        {
            $this->tool_number = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvSelectMotionTool_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvSelectMotionTool_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/SelectMotionTool_Response field; extent 9..521 bytes. */
final class Ros2Motoros2_interfacesSrvSelectMotionTool_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvSelectMotionTool_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640',
        "minimum" => 9,
        "maximum" => 521,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/SelectMotionTool_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'Ros2Motoros2_interfacesMsgSelectionResultCodes',
                "array" => '',
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
            ],
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
            ]
        ]
    ];
    /** @brief Original result_code: Ros2Motoros2_interfacesMsgSelectionResultCodes; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original success: bool; scalar; bound/count 0. */
    public mixed $success;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = new Ros2Motoros2_interfacesMsgSelectionResultCodes();
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('success', $values)) { $this->success = $values['success']; }
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvSelectMotionTool_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvSelectMotionTool_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/StartPointQueueMode_Request field; extent 0..0 bytes. */
final class Ros2Motoros2_interfacesSrvStartPointQueueMode_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvStartPointQueueMode_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/StartPointQueueMode_Request',
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
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvStartPointQueueMode_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvStartPointQueueMode_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/StartPointQueueMode_Response field; extent 6..518 bytes. */
final class Ros2Motoros2_interfacesSrvStartPointQueueMode_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvStartPointQueueMode_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/StartPointQueueMode_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'Ros2Motoros2_interfacesMsgMotionReadyEnum',
                "array" => '',
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
    /** @brief Original result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = new Ros2Motoros2_interfacesMsgMotionReadyEnum();
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvStartPointQueueMode_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvStartPointQueueMode_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/StartTrajMode_Request field; extent 0..0 bytes. */
final class Ros2Motoros2_interfacesSrvStartTrajMode_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvStartTrajMode_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/StartTrajMode_Request',
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
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvStartTrajMode_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvStartTrajMode_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/StartTrajMode_Response field; extent 6..518 bytes. */
final class Ros2Motoros2_interfacesSrvStartTrajMode_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvStartTrajMode_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/StartTrajMode_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'Ros2Motoros2_interfacesMsgMotionReadyEnum',
                "array" => '',
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
    /** @brief Original result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = new Ros2Motoros2_interfacesMsgMotionReadyEnum();
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvStartTrajMode_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvStartTrajMode_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/WriteGroupIO_Request field; extent 5..5 bytes. */
final class Ros2Motoros2_interfacesSrvWriteGroupIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvWriteGroupIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c',
        "minimum" => 5,
        "maximum" => 5,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/WriteGroupIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'address',
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
                "name" => 'value',
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
    /** @brief Original address: uint32; scalar; bound/count 0. */
    public mixed $address;
    /** @brief Original value: uint8; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('address', $values)) { $this->address = $values['address']; }
        else
        {
            $this->address = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvWriteGroupIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvWriteGroupIO_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/WriteGroupIO_Response field; extent 9..521 bytes. */
final class Ros2Motoros2_interfacesSrvWriteGroupIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvWriteGroupIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766',
        "minimum" => 9,
        "maximum" => 521,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/WriteGroupIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
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
            ],
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
            ]
        ]
    ];
    /** @brief Original result_code: uint32; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original success: bool; scalar; bound/count 0. */
    public mixed $success;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('success', $values)) { $this->success = $values['success']; }
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvWriteGroupIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvWriteGroupIO_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/WriteMRegister_Request field; extent 6..6 bytes. */
final class Ros2Motoros2_interfacesSrvWriteMRegister_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvWriteMRegister_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef',
        "minimum" => 6,
        "maximum" => 6,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/WriteMRegister_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'address',
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
    /** @brief Original address: uint32; scalar; bound/count 0. */
    public mixed $address;
    /** @brief Original value: uint16; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('address', $values)) { $this->address = $values['address']; }
        else
        {
            $this->address = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvWriteMRegister_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvWriteMRegister_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/WriteMRegister_Response field; extent 9..521 bytes. */
final class Ros2Motoros2_interfacesSrvWriteMRegister_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvWriteMRegister_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a',
        "minimum" => 9,
        "maximum" => 521,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/WriteMRegister_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
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
            ],
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
            ]
        ]
    ];
    /** @brief Original result_code: uint32; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original success: bool; scalar; bound/count 0. */
    public mixed $success;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('success', $values)) { $this->success = $values['success']; }
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvWriteMRegister_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvWriteMRegister_Response', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/WriteSingleIO_Request field; extent 8..8 bytes. */
final class Ros2Motoros2_interfacesSrvWriteSingleIO_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvWriteSingleIO_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/WriteSingleIO_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'address',
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
                "name" => 'value',
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
    /** @brief Original address: uint32; scalar; bound/count 0. */
    public mixed $address;
    /** @brief Original value: int32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('address', $values)) { $this->address = $values['address']; }
        else
        {
            $this->address = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvWriteSingleIO_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvWriteSingleIO_Request', $bytes); }
}

/** @brief Own every original motoros2_interfaces/srv/WriteSingleIO_Response field; extent 9..521 bytes. */
final class Ros2Motoros2_interfacesSrvWriteSingleIO_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Motoros2_interfacesSrvWriteSingleIO_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794',
        "minimum" => 9,
        "maximum" => 521,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'motoros2_interfaces/srv/WriteSingleIO_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
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
            ],
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
            ]
        ]
    ];
    /** @brief Original result_code: uint32; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Original success: bool; scalar; bound/count 0. */
    public mixed $success;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
        if (array_key_exists('success', $values)) { $this->success = $values['success']; }
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Motoros2_interfacesSrvWriteSingleIO_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Motoros2_interfacesSrvWriteSingleIO_Response', $bytes); }
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

/** @brief Own every original tf2_msgs/msg/TFMessage field; extent 4..10372 bytes. */
final class Ros2Tf2_msgsMsgTFMessage
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Tf2_msgsMsgTFMessage',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a',
        "minimum" => 4,
        "maximum" => 10372,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'tf2_msgs/msg/TFMessage',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'transforms',
                "type" => 'Ros2Geometry_msgsMsgTransformStamped',
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
                "element_minimum" => 72
            ]
        ]
    ];
    /** @brief Original transforms: Ros2Geometry_msgsMsgTransformStamped; sequence; bound/count 16. */
    public mixed $transforms;
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
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Tf2_msgsMsgTFMessage', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Tf2_msgsMsgTFMessage', $bytes); }
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
            'Ros2Geometry_msgsMsgTransformStamped' =>
                Ros2Geometry_msgsMsgTransformStamped::SCHEMA + ['class' => Ros2Geometry_msgsMsgTransformStamped::class],
            'Ros2Industrial_msgsMsgDebugLevel' =>
                Ros2Industrial_msgsMsgDebugLevel::SCHEMA + ['class' => Ros2Industrial_msgsMsgDebugLevel::class],
            'Ros2Industrial_msgsMsgDeviceInfo' =>
                Ros2Industrial_msgsMsgDeviceInfo::SCHEMA + ['class' => Ros2Industrial_msgsMsgDeviceInfo::class],
            'Ros2Industrial_msgsMsgRobotMode' =>
                Ros2Industrial_msgsMsgRobotMode::SCHEMA + ['class' => Ros2Industrial_msgsMsgRobotMode::class],
            'Ros2Industrial_msgsMsgTriState' =>
                Ros2Industrial_msgsMsgTriState::SCHEMA + ['class' => Ros2Industrial_msgsMsgTriState::class],
            'Ros2Industrial_msgsMsgRobotStatus' =>
                Ros2Industrial_msgsMsgRobotStatus::SCHEMA + ['class' => Ros2Industrial_msgsMsgRobotStatus::class],
            'Ros2Industrial_msgsMsgServiceReturnCode' =>
                Ros2Industrial_msgsMsgServiceReturnCode::SCHEMA + ['class' => Ros2Industrial_msgsMsgServiceReturnCode::class],
            'Ros2Industrial_msgsSrvCmdJointTrajectory_Request' =>
                Ros2Industrial_msgsSrvCmdJointTrajectory_Request::SCHEMA + ['class' => Ros2Industrial_msgsSrvCmdJointTrajectory_Request::class],
            'Ros2Industrial_msgsSrvCmdJointTrajectory_Response' =>
                Ros2Industrial_msgsSrvCmdJointTrajectory_Response::SCHEMA + ['class' => Ros2Industrial_msgsSrvCmdJointTrajectory_Response::class],
            'Ros2Industrial_msgsSrvGetRobotInfo_Request' =>
                Ros2Industrial_msgsSrvGetRobotInfo_Request::SCHEMA + ['class' => Ros2Industrial_msgsSrvGetRobotInfo_Request::class],
            'Ros2Industrial_msgsSrvGetRobotInfo_Response' =>
                Ros2Industrial_msgsSrvGetRobotInfo_Response::SCHEMA + ['class' => Ros2Industrial_msgsSrvGetRobotInfo_Response::class],
            'Ros2Industrial_msgsSrvSetDrivePower_Request' =>
                Ros2Industrial_msgsSrvSetDrivePower_Request::SCHEMA + ['class' => Ros2Industrial_msgsSrvSetDrivePower_Request::class],
            'Ros2Industrial_msgsSrvSetDrivePower_Response' =>
                Ros2Industrial_msgsSrvSetDrivePower_Response::SCHEMA + ['class' => Ros2Industrial_msgsSrvSetDrivePower_Response::class],
            'Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request' =>
                Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request::SCHEMA + ['class' => Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request::class],
            'Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response' =>
                Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response::SCHEMA + ['class' => Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response::class],
            'Ros2Industrial_msgsSrvStartMotion_Request' =>
                Ros2Industrial_msgsSrvStartMotion_Request::SCHEMA + ['class' => Ros2Industrial_msgsSrvStartMotion_Request::class],
            'Ros2Industrial_msgsSrvStartMotion_Response' =>
                Ros2Industrial_msgsSrvStartMotion_Response::SCHEMA + ['class' => Ros2Industrial_msgsSrvStartMotion_Response::class],
            'Ros2Industrial_msgsSrvStopMotion_Request' =>
                Ros2Industrial_msgsSrvStopMotion_Request::SCHEMA + ['class' => Ros2Industrial_msgsSrvStopMotion_Request::class],
            'Ros2Industrial_msgsSrvStopMotion_Response' =>
                Ros2Industrial_msgsSrvStopMotion_Response::SCHEMA + ['class' => Ros2Industrial_msgsSrvStopMotion_Response::class],
            'Ros2Motoros2_interfacesMsgAlarmCauseRemedy' =>
                Ros2Motoros2_interfacesMsgAlarmCauseRemedy::SCHEMA + ['class' => Ros2Motoros2_interfacesMsgAlarmCauseRemedy::class],
            'Ros2Motoros2_interfacesMsgAlarmInfo' =>
                Ros2Motoros2_interfacesMsgAlarmInfo::SCHEMA + ['class' => Ros2Motoros2_interfacesMsgAlarmInfo::class],
            'Ros2Motoros2_interfacesMsgErrorInfo' =>
                Ros2Motoros2_interfacesMsgErrorInfo::SCHEMA + ['class' => Ros2Motoros2_interfacesMsgErrorInfo::class],
            'Ros2Motoros2_interfacesMsgInformJobCrudResultCodes' =>
                Ros2Motoros2_interfacesMsgInformJobCrudResultCodes::SCHEMA + ['class' => Ros2Motoros2_interfacesMsgInformJobCrudResultCodes::class],
            'Ros2Motoros2_interfacesMsgInitTrajEnum' =>
                Ros2Motoros2_interfacesMsgInitTrajEnum::SCHEMA + ['class' => Ros2Motoros2_interfacesMsgInitTrajEnum::class],
            'Ros2Motoros2_interfacesMsgIoResultCodes' =>
                Ros2Motoros2_interfacesMsgIoResultCodes::SCHEMA + ['class' => Ros2Motoros2_interfacesMsgIoResultCodes::class],
            'Ros2Motoros2_interfacesMsgMotionReadyEnum' =>
                Ros2Motoros2_interfacesMsgMotionReadyEnum::SCHEMA + ['class' => Ros2Motoros2_interfacesMsgMotionReadyEnum::class],
            'Ros2Motoros2_interfacesMsgQueueResultEnum' =>
                Ros2Motoros2_interfacesMsgQueueResultEnum::SCHEMA + ['class' => Ros2Motoros2_interfacesMsgQueueResultEnum::class],
            'Ros2Motoros2_interfacesMsgSelectionResultCodes' =>
                Ros2Motoros2_interfacesMsgSelectionResultCodes::SCHEMA + ['class' => Ros2Motoros2_interfacesMsgSelectionResultCodes::class],
            'Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request' =>
                Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request::class],
            'Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response' =>
                Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response::class],
            'Ros2Motoros2_interfacesSrvListInformJobs_Request' =>
                Ros2Motoros2_interfacesSrvListInformJobs_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvListInformJobs_Request::class],
            'Ros2Motoros2_interfacesSrvListInformJobs_Response' =>
                Ros2Motoros2_interfacesSrvListInformJobs_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvListInformJobs_Response::class],
            'Ros2Motoros2_interfacesSrvQueueTrajPoint_Request' =>
                Ros2Motoros2_interfacesSrvQueueTrajPoint_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvQueueTrajPoint_Request::class],
            'Ros2Motoros2_interfacesSrvQueueTrajPoint_Response' =>
                Ros2Motoros2_interfacesSrvQueueTrajPoint_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvQueueTrajPoint_Response::class],
            'Ros2Motoros2_interfacesSrvReadGroupIO_Request' =>
                Ros2Motoros2_interfacesSrvReadGroupIO_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvReadGroupIO_Request::class],
            'Ros2Motoros2_interfacesSrvReadGroupIO_Response' =>
                Ros2Motoros2_interfacesSrvReadGroupIO_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvReadGroupIO_Response::class],
            'Ros2Motoros2_interfacesSrvReadMRegister_Request' =>
                Ros2Motoros2_interfacesSrvReadMRegister_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvReadMRegister_Request::class],
            'Ros2Motoros2_interfacesSrvReadMRegister_Response' =>
                Ros2Motoros2_interfacesSrvReadMRegister_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvReadMRegister_Response::class],
            'Ros2Motoros2_interfacesSrvReadSingleIO_Request' =>
                Ros2Motoros2_interfacesSrvReadSingleIO_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvReadSingleIO_Request::class],
            'Ros2Motoros2_interfacesSrvReadSingleIO_Response' =>
                Ros2Motoros2_interfacesSrvReadSingleIO_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvReadSingleIO_Response::class],
            'Ros2Motoros2_interfacesSrvResetError_Request' =>
                Ros2Motoros2_interfacesSrvResetError_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvResetError_Request::class],
            'Ros2Motoros2_interfacesSrvResetError_Response' =>
                Ros2Motoros2_interfacesSrvResetError_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvResetError_Response::class],
            'Ros2Motoros2_interfacesSrvSelectMotionTool_Request' =>
                Ros2Motoros2_interfacesSrvSelectMotionTool_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvSelectMotionTool_Request::class],
            'Ros2Motoros2_interfacesSrvSelectMotionTool_Response' =>
                Ros2Motoros2_interfacesSrvSelectMotionTool_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvSelectMotionTool_Response::class],
            'Ros2Motoros2_interfacesSrvStartPointQueueMode_Request' =>
                Ros2Motoros2_interfacesSrvStartPointQueueMode_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvStartPointQueueMode_Request::class],
            'Ros2Motoros2_interfacesSrvStartPointQueueMode_Response' =>
                Ros2Motoros2_interfacesSrvStartPointQueueMode_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvStartPointQueueMode_Response::class],
            'Ros2Motoros2_interfacesSrvStartTrajMode_Request' =>
                Ros2Motoros2_interfacesSrvStartTrajMode_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvStartTrajMode_Request::class],
            'Ros2Motoros2_interfacesSrvStartTrajMode_Response' =>
                Ros2Motoros2_interfacesSrvStartTrajMode_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvStartTrajMode_Response::class],
            'Ros2Motoros2_interfacesSrvWriteGroupIO_Request' =>
                Ros2Motoros2_interfacesSrvWriteGroupIO_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvWriteGroupIO_Request::class],
            'Ros2Motoros2_interfacesSrvWriteGroupIO_Response' =>
                Ros2Motoros2_interfacesSrvWriteGroupIO_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvWriteGroupIO_Response::class],
            'Ros2Motoros2_interfacesSrvWriteMRegister_Request' =>
                Ros2Motoros2_interfacesSrvWriteMRegister_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvWriteMRegister_Request::class],
            'Ros2Motoros2_interfacesSrvWriteMRegister_Response' =>
                Ros2Motoros2_interfacesSrvWriteMRegister_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvWriteMRegister_Response::class],
            'Ros2Motoros2_interfacesSrvWriteSingleIO_Request' =>
                Ros2Motoros2_interfacesSrvWriteSingleIO_Request::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvWriteSingleIO_Request::class],
            'Ros2Motoros2_interfacesSrvWriteSingleIO_Response' =>
                Ros2Motoros2_interfacesSrvWriteSingleIO_Response::SCHEMA + ['class' => Ros2Motoros2_interfacesSrvWriteSingleIO_Response::class],
            'Ros2Sensor_msgsMsgJointState' =>
                Ros2Sensor_msgsMsgJointState::SCHEMA + ['class' => Ros2Sensor_msgsMsgJointState::class],
            'Ros2Std_srvsSrvTrigger_Request' =>
                Ros2Std_srvsSrvTrigger_Request::SCHEMA + ['class' => Ros2Std_srvsSrvTrigger_Request::class],
            'Ros2Std_srvsSrvTrigger_Response' =>
                Ros2Std_srvsSrvTrigger_Response::SCHEMA + ['class' => Ros2Std_srvsSrvTrigger_Response::class],
            'Ros2Tf2_msgsMsgTFMessage' =>
                Ros2Tf2_msgsMsgTFMessage::SCHEMA + ['class' => Ros2Tf2_msgsMsgTFMessage::class],
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
    "geometry_msgs/msg/TransformStamped" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Geometry_msgsMsgTransformStamped'
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
    "industrial_msgs/msg/DebugLevel" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Industrial_msgsMsgDebugLevel'
        ]
    ],
    "industrial_msgs/msg/DeviceInfo" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Industrial_msgsMsgDeviceInfo'
        ]
    ],
    "industrial_msgs/msg/RobotMode" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Industrial_msgsMsgRobotMode'
        ]
    ],
    "industrial_msgs/msg/RobotStatus" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Industrial_msgsMsgRobotStatus'
        ]
    ],
    "industrial_msgs/msg/ServiceReturnCode" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Industrial_msgsMsgServiceReturnCode'
        ]
    ],
    "industrial_msgs/msg/TriState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Industrial_msgsMsgTriState'
        ]
    ],
    "industrial_msgs/srv/CmdJointTrajectory" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e8df4c16f0b40ccebce141f41beb199ffdfcace748f4bd57a8623c5aafe9d18f',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Industrial_msgsSrvCmdJointTrajectory_Request',
            "response" => 'Ros2Industrial_msgsSrvCmdJointTrajectory_Response'
        ]
    ],
    "industrial_msgs/srv/GetRobotInfo" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6e5a274d17ba3c1eadacdb354e10f3beb536bfb28fefa25c36d90e5b1a98a05d',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Industrial_msgsSrvGetRobotInfo_Request',
            "response" => 'Ros2Industrial_msgsSrvGetRobotInfo_Response'
        ]
    ],
    "industrial_msgs/srv/SetDrivePower" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_139774184d22a01cdcaf17d2e4c73c56a9077bc40834f6c5912a8c08dee7109f',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Industrial_msgsSrvSetDrivePower_Request',
            "response" => 'Ros2Industrial_msgsSrvSetDrivePower_Response'
        ]
    ],
    "industrial_msgs/srv/SetRemoteLoggerLevel" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6aaca700956f41c06c20b8069e644cf04ad5fa01c5835623df3b8de946da1ad1',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request',
            "response" => 'Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response'
        ]
    ],
    "industrial_msgs/srv/StartMotion" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1cf62b342e5cc9b8a9fa463e1971d14bc73b6450e425a7fe9c16caa3529c67b0',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Industrial_msgsSrvStartMotion_Request',
            "response" => 'Ros2Industrial_msgsSrvStartMotion_Response'
        ]
    ],
    "industrial_msgs/srv/StopMotion" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ee44e3fdaf3b705212972d964e3210babaf941de4be14e94cdd33aa54aea49a0',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Industrial_msgsSrvStopMotion_Request',
            "response" => 'Ros2Industrial_msgsSrvStopMotion_Response'
        ]
    ],
    "motoros2_interfaces/msg/AlarmCauseRemedy" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Motoros2_interfacesMsgAlarmCauseRemedy'
        ]
    ],
    "motoros2_interfaces/msg/AlarmInfo" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Motoros2_interfacesMsgAlarmInfo'
        ]
    ],
    "motoros2_interfaces/msg/ErrorInfo" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Motoros2_interfacesMsgErrorInfo'
        ]
    ],
    "motoros2_interfaces/msg/InformJobCrudResultCodes" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Motoros2_interfacesMsgInformJobCrudResultCodes'
        ]
    ],
    "motoros2_interfaces/msg/InitTrajEnum" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Motoros2_interfacesMsgInitTrajEnum'
        ]
    ],
    "motoros2_interfaces/msg/IoResultCodes" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Motoros2_interfacesMsgIoResultCodes'
        ]
    ],
    "motoros2_interfaces/msg/MotionReadyEnum" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Motoros2_interfacesMsgMotionReadyEnum'
        ]
    ],
    "motoros2_interfaces/msg/QueueResultEnum" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Motoros2_interfacesMsgQueueResultEnum'
        ]
    ],
    "motoros2_interfaces/msg/SelectionResultCodes" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Motoros2_interfacesMsgSelectionResultCodes'
        ]
    ],
    "motoros2_interfaces/srv/GetActiveAlarmInfo" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0ba75d003a58f500c933d13af5e3adca9566d503393bda636febb84972f116c0',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request',
            "response" => 'Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response'
        ]
    ],
    "motoros2_interfaces/srv/ListInformJobs" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9954d2544fc3f6a93a863325ee37db0db935e34f785cb8dff1bbcdc6bed008ce',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvListInformJobs_Request',
            "response" => 'Ros2Motoros2_interfacesSrvListInformJobs_Response'
        ]
    ],
    "motoros2_interfaces/srv/QueueTrajPoint" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_68502de019123622ff8db751ea9b1b026c92b0792e6349f4682320eee6dd34f7',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvQueueTrajPoint_Request',
            "response" => 'Ros2Motoros2_interfacesSrvQueueTrajPoint_Response'
        ]
    ],
    "motoros2_interfaces/srv/ReadGroupIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6660903dbabb303801f8ce21560ff9219dc39fcf07a3d2e0fb3e795efd295ce7',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvReadGroupIO_Request',
            "response" => 'Ros2Motoros2_interfacesSrvReadGroupIO_Response'
        ]
    ],
    "motoros2_interfaces/srv/ReadMRegister" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1a90ea4c10f6cf6101b226da050d17e3204f64fc4e7c34fda6a9c77a895268e4',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvReadMRegister_Request',
            "response" => 'Ros2Motoros2_interfacesSrvReadMRegister_Response'
        ]
    ],
    "motoros2_interfaces/srv/ReadSingleIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_45367596a399144ccce710f19aec8e07af2b937f0358cc533f12454e63167ea4',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvReadSingleIO_Request',
            "response" => 'Ros2Motoros2_interfacesSrvReadSingleIO_Response'
        ]
    ],
    "motoros2_interfaces/srv/ResetError" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_df40965a10883ee12932604f28fb1feebe7f0f1eb6515067b647ec90fae3951d',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvResetError_Request',
            "response" => 'Ros2Motoros2_interfacesSrvResetError_Response'
        ]
    ],
    "motoros2_interfaces/srv/SelectMotionTool" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_021260e9311f4412bfdd8cf4a4cd6e6af113d82169e543103ae6acaab065b00e',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvSelectMotionTool_Request',
            "response" => 'Ros2Motoros2_interfacesSrvSelectMotionTool_Response'
        ]
    ],
    "motoros2_interfaces/srv/StartPointQueueMode" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4368b9861121806a833f5227574e33547fe20a4891c4d1f146236fbe09891ef7',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvStartPointQueueMode_Request',
            "response" => 'Ros2Motoros2_interfacesSrvStartPointQueueMode_Response'
        ]
    ],
    "motoros2_interfaces/srv/StartTrajMode" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d5c0a1821382852c10710973aa0214199a5e24a499972078db30fa8656c3edb8',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvStartTrajMode_Request',
            "response" => 'Ros2Motoros2_interfacesSrvStartTrajMode_Response'
        ]
    ],
    "motoros2_interfaces/srv/WriteGroupIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_64fc54e69a98903782576a539df8311d1af2565893b6f87dfe0d59061565e834',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvWriteGroupIO_Request',
            "response" => 'Ros2Motoros2_interfacesSrvWriteGroupIO_Response'
        ]
    ],
    "motoros2_interfaces/srv/WriteMRegister" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2bfb27c3f17b05fe8b7121b65cb7d2a2f2c54ed2eb9d8f8334d8d3149192f4f4',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvWriteMRegister_Request',
            "response" => 'Ros2Motoros2_interfacesSrvWriteMRegister_Response'
        ]
    ],
    "motoros2_interfaces/srv/WriteSingleIO" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d9671caa86e0a7d249e3d7bea385898517595733fa6e5e0cd16c964d8d66691a',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Motoros2_interfacesSrvWriteSingleIO_Request',
            "response" => 'Ros2Motoros2_interfacesSrvWriteSingleIO_Response'
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
    "tf2_msgs/msg/TFMessage" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Tf2_msgsMsgTFMessage'
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
