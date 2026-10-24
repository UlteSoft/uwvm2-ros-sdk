<?php
declare(strict_types=1);
namespace Uwvm\Kinova\Ros2Humble;

/** @file Records.php
 * @brief Complete selected original PHP values; native identity remains independently unbound.
 */
use Uwvm\RosWasm\Wire;
use Uwvm\RosWasm\Word;
/** @brief Own every original field of builtin_interfaces/msg/Duration. */
final class Ros2Builtin_interfacesMsgDuration
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Builtin_interfacesMsgDuration',
        'native_type' => 'builtin_interfaces/msg/Duration',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'sec',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'nanosec',
                'type' => 'uint32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original int32 field; shape scalar and quota 0. */
    public mixed $sec;
    /** @brief Original uint32 field; shape scalar and quota 0. */
    public mixed $nanosec;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('sec', $values)) $this->sec = $values['sec'];
        else
        {
            $this->sec = 0;
        }
        if (array_key_exists('nanosec', $values)) $this->nanosec = $values['nanosec'];
        else
        {
            $this->nanosec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Builtin_interfacesMsgDuration', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Builtin_interfacesMsgDuration',
            $bytes); }
}
/** @brief Own every original field of builtin_interfaces/msg/Time. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Builtin_interfacesMsgTime',
        'native_type' => 'builtin_interfaces/msg/Time',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'sec',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'nanosec',
                'type' => 'uint32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original int32 field; shape scalar and quota 0. */
    public mixed $sec;
    /** @brief Original uint32 field; shape scalar and quota 0. */
    public mixed $nanosec;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('sec', $values)) $this->sec = $values['sec'];
        else
        {
            $this->sec = 0;
        }
        if (array_key_exists('nanosec', $values)) $this->nanosec = $values['nanosec'];
        else
        {
            $this->nanosec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes); }
}
/** @brief Own every original field of std_msgs/msg/Header. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgHeader',
        'native_type' => 'std_msgs/msg/Header',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'stamp',
                'type' => 'Ros2Builtin_interfacesMsgTime',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'frame_id',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 128,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original Ros2Builtin_interfacesMsgTime field; shape scalar and quota 0. */
    public mixed $stamp;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $frame_id;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('stamp', $values)) $this->stamp = $values['stamp'];
        else
        {
            $this->stamp = new Ros2Builtin_interfacesMsgTime();
        }
        if (array_key_exists('frame_id', $values)) $this->frame_id = $values['frame_id'];
        else
        {
            $this->frame_id = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes); }
}
/** @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint. */
final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
        'native_type' => 'trajectory_msgs/msg/JointTrajectoryPoint',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1',
        'minimum' => 24,
        'maximum' => 280,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'positions',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'velocities',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'accelerations',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'effort',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'time_from_start',
                'type' => 'Ros2Builtin_interfacesMsgDuration',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape sequence and quota 8. */
    public mixed $positions;
    /** @brief Original float64 field; shape sequence and quota 8. */
    public mixed $velocities;
    /** @brief Original float64 field; shape sequence and quota 8. */
    public mixed $accelerations;
    /** @brief Original float64 field; shape sequence and quota 8. */
    public mixed $effort;
    /** @brief Original Ros2Builtin_interfacesMsgDuration field; shape scalar and quota 0. */
    public mixed $time_from_start;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('positions', $values)) $this->positions = $values['positions'];
        else
        {
            $this->positions = [];
        }
        if (array_key_exists('velocities', $values)) $this->velocities = $values['velocities'];
        else
        {
            $this->velocities = [];
        }
        if (array_key_exists('accelerations', $values)) $this->accelerations = $values['accelerations'];
        else
        {
            $this->accelerations = [];
        }
        if (array_key_exists('effort', $values)) $this->effort = $values['effort'];
        else
        {
            $this->effort = [];
        }
        if (array_key_exists('time_from_start', $values)) $this->time_from_start = $values['time_from_start'];
        else
        {
            $this->time_from_start = new Ros2Builtin_interfacesMsgDuration();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Trajectory_msgsMsgJointTrajectoryPoint', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Trajectory_msgsMsgJointTrajectoryPoint', $bytes); }
}
/** @brief Own every original field of trajectory_msgs/msg/JointTrajectory. */
final class Ros2Trajectory_msgsMsgJointTrajectory
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Trajectory_msgsMsgJointTrajectory',
        'native_type' => 'trajectory_msgs/msg/JointTrajectory',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77',
        'minimum' => 20,
        'maximum' => 1484,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'joint_names',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 128,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'points',
                'type' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                'array' => 'sequence',
                'count' => 1,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 24,
            ],
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original string field; shape sequence and quota 8. */
    public mixed $joint_names;
    /** @brief Original Ros2Trajectory_msgsMsgJointTrajectoryPoint field; shape sequence and quota 1. */
    public mixed $points;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('joint_names', $values)) $this->joint_names = $values['joint_names'];
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('points', $values)) $this->points = $values['points'];
        else
        {
            $this->points = [];
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Trajectory_msgsMsgJointTrajectory', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Trajectory_msgsMsgJointTrajectory',
            $bytes); }
}
/** @brief Own every original field of geometry_msgs/msg/Vector3. */
final class Ros2Geometry_msgsMsgVector3
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgVector3',
        'native_type' => 'geometry_msgs/msg/Vector3',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'x',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'y',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'z',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $x;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $y;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $z;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('x', $values)) $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgVector3', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgVector3', $bytes); }
}
/** @brief Own every original field of geometry_msgs/msg/Quaternion. */
final class Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgQuaternion',
        'native_type' => 'geometry_msgs/msg/Quaternion',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'x',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '0.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
                'default' => 0.0,
            ],
            [
                'name' => 'y',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '0.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
                'default' => 0.0,
            ],
            [
                'name' => 'z',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '0.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
                'default' => 0.0,
            ],
            [
                'name' => 'w',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '1.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
                'default' => 1.0,
            ],
        ],
    ];
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $x;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $y;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $z;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $w;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('x', $values)) $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('w', $values)) $this->w = $values['w'];
        else
        {
            $this->w = 1.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgQuaternion', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgQuaternion', $bytes); }
}
/** @brief Own every original field of geometry_msgs/msg/Transform. */
final class Ros2Geometry_msgsMsgTransform
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgTransform',
        'native_type' => 'geometry_msgs/msg/Transform',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'translation',
                'type' => 'Ros2Geometry_msgsMsgVector3',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 24,
            ],
            [
                'name' => 'rotation',
                'type' => 'Ros2Geometry_msgsMsgQuaternion',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 32,
            ],
        ],
    ];
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $translation;
    /** @brief Original Ros2Geometry_msgsMsgQuaternion field; shape scalar and quota 0. */
    public mixed $rotation;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('translation', $values)) $this->translation = $values['translation'];
        else
        {
            $this->translation = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('rotation', $values)) $this->rotation = $values['rotation'];
        else
        {
            $this->rotation = new Ros2Geometry_msgsMsgQuaternion();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgTransform', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgTransform', $bytes); }
}
/** @brief Own every original field of geometry_msgs/msg/Twist. */
final class Ros2Geometry_msgsMsgTwist
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgTwist',
        'native_type' => 'geometry_msgs/msg/Twist',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'linear',
                'type' => 'Ros2Geometry_msgsMsgVector3',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 24,
            ],
            [
                'name' => 'angular',
                'type' => 'Ros2Geometry_msgsMsgVector3',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 24,
            ],
        ],
    ];
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $linear;
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $angular;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('linear', $values)) $this->linear = $values['linear'];
        else
        {
            $this->linear = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('angular', $values)) $this->angular = $values['angular'];
        else
        {
            $this->angular = new Ros2Geometry_msgsMsgVector3();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgTwist', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgTwist', $bytes); }
}
/** @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. */
final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
        'native_type' => 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf',
        'minimum' => 20,
        'maximum' => 844,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'transforms',
                'type' => 'Ros2Geometry_msgsMsgTransform',
                'array' => 'sequence',
                'count' => 1,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 56,
            ],
            [
                'name' => 'velocities',
                'type' => 'Ros2Geometry_msgsMsgTwist',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 48,
            ],
            [
                'name' => 'accelerations',
                'type' => 'Ros2Geometry_msgsMsgTwist',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 48,
            ],
            [
                'name' => 'time_from_start',
                'type' => 'Ros2Builtin_interfacesMsgDuration',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original Ros2Geometry_msgsMsgTransform field; shape sequence and quota 1. */
    public mixed $transforms;
    /** @brief Original Ros2Geometry_msgsMsgTwist field; shape sequence and quota 8. */
    public mixed $velocities;
    /** @brief Original Ros2Geometry_msgsMsgTwist field; shape sequence and quota 8. */
    public mixed $accelerations;
    /** @brief Original Ros2Builtin_interfacesMsgDuration field; shape scalar and quota 0. */
    public mixed $time_from_start;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('transforms', $values)) $this->transforms = $values['transforms'];
        else
        {
            $this->transforms = [];
        }
        if (array_key_exists('velocities', $values)) $this->velocities = $values['velocities'];
        else
        {
            $this->velocities = [];
        }
        if (array_key_exists('accelerations', $values)) $this->accelerations = $values['accelerations'];
        else
        {
            $this->accelerations = [];
        }
        if (array_key_exists('time_from_start', $values)) $this->time_from_start = $values['time_from_start'];
        else
        {
            $this->time_from_start = new Ros2Builtin_interfacesMsgDuration();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint', $this);
            }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint', $bytes); }
}
/** @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectory. */
final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory',
        'native_type' => 'trajectory_msgs/msg/MultiDOFJointTrajectory',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5',
        'minimum' => 20,
        'maximum' => 2048,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'joint_names',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 128,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'points',
                'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                'array' => 'sequence',
                'count' => 1,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 20,
            ],
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original string field; shape sequence and quota 8. */
    public mixed $joint_names;
    /** @brief Original Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field; shape sequence and quota 1. */
    public mixed $points;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('joint_names', $values)) $this->joint_names = $values['joint_names'];
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('points', $values)) $this->points = $values['points'];
        else
        {
            $this->points = [];
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectory', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectory', $bytes); }
}
/** @brief Own every original field of control_msgs/msg/JointTolerance. */
final class Ros2Control_msgsMsgJointTolerance
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Control_msgsMsgJointTolerance',
        'native_type' => 'control_msgs/msg/JointTolerance',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a',
        'minimum' => 28,
        'maximum' => 156,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'name',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 128,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'position',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'velocity',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'acceleration',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $name;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $position;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $velocity;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $acceleration;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('name', $values)) $this->name = $values['name'];
        else
        {
            $this->name = '';
        }
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = 0.0;
        }
        if (array_key_exists('velocity', $values)) $this->velocity = $values['velocity'];
        else
        {
            $this->velocity = 0.0;
        }
        if (array_key_exists('acceleration', $values)) $this->acceleration = $values['acceleration'];
        else
        {
            $this->acceleration = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Control_msgsMsgJointTolerance', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Control_msgsMsgJointTolerance',
            $bytes); }
}
/** @brief Own every original field of control_msgs/msg/JointComponentTolerance. */
final class Ros2Control_msgsMsgJointComponentTolerance
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Control_msgsMsgJointComponentTolerance',
        'native_type' => 'control_msgs/msg/JointComponentTolerance',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb',
        'minimum' => 30,
        'maximum' => 158,
        'semantics' => '',
        'constants' => [
            'X_AXIS' => 1,
            'Y_AXIS' => 2,
            'Z_AXIS' => 3,
            'TRANSLATION' => 4,
            'ROTATION' => 5,
        ],
        'fields' => [
            [
                'name' => 'joint_name',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 128,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'component',
                'type' => 'uint16',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 2,
            ],
            [
                'name' => 'position',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'velocity',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'acceleration',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Preserve the exact original declared constant. */
    public const X_AXIS = 1;
    /** @brief Preserve the exact original declared constant. */
    public const Y_AXIS = 2;
    /** @brief Preserve the exact original declared constant. */
    public const Z_AXIS = 3;
    /** @brief Preserve the exact original declared constant. */
    public const TRANSLATION = 4;
    /** @brief Preserve the exact original declared constant. */
    public const ROTATION = 5;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $joint_name;
    /** @brief Original uint16 field; shape scalar and quota 0. */
    public mixed $component;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $position;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $velocity;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $acceleration;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('joint_name', $values)) $this->joint_name = $values['joint_name'];
        else
        {
            $this->joint_name = '';
        }
        if (array_key_exists('component', $values)) $this->component = $values['component'];
        else
        {
            $this->component = 0;
        }
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = 0.0;
        }
        if (array_key_exists('velocity', $values)) $this->velocity = $values['velocity'];
        else
        {
            $this->velocity = 0.0;
        }
        if (array_key_exists('acceleration', $values)) $this->acceleration = $values['acceleration'];
        else
        {
            $this->acceleration = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Control_msgsMsgJointComponentTolerance', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Control_msgsMsgJointComponentTolerance', $bytes); }
}
/** @brief Own every original field of control_msgs/action/FollowJointTrajectory_Goal. */
final class Ros2Control_msgsActionFollowJointTrajectory_Goal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Control_msgsActionFollowJointTrajectory_Goal',
        'native_type' => 'control_msgs/action/FollowJointTrajectory_Goal',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018',
        'minimum' => 64,
        'maximum' => 8580,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'trajectory',
                'type' => 'Ros2Trajectory_msgsMsgJointTrajectory',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 20,
            ],
            [
                'name' => 'multi_dof_trajectory',
                'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 20,
            ],
            [
                'name' => 'path_tolerance',
                'type' => 'Ros2Control_msgsMsgJointTolerance',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28,
            ],
            [
                'name' => 'component_path_tolerance',
                'type' => 'Ros2Control_msgsMsgJointComponentTolerance',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 30,
            ],
            [
                'name' => 'goal_tolerance',
                'type' => 'Ros2Control_msgsMsgJointTolerance',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28,
            ],
            [
                'name' => 'component_goal_tolerance',
                'type' => 'Ros2Control_msgsMsgJointComponentTolerance',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 30,
            ],
            [
                'name' => 'goal_time_tolerance',
                'type' => 'Ros2Builtin_interfacesMsgDuration',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original Ros2Trajectory_msgsMsgJointTrajectory field; shape scalar and quota 0. */
    public mixed $trajectory;
    /** @brief Original Ros2Trajectory_msgsMsgMultiDOFJointTrajectory field; shape scalar and quota 0. */
    public mixed $multi_dof_trajectory;
    /** @brief Original Ros2Control_msgsMsgJointTolerance field; shape sequence and quota 8. */
    public mixed $path_tolerance;
    /** @brief Original Ros2Control_msgsMsgJointComponentTolerance field; shape sequence and quota 8. */
    public mixed $component_path_tolerance;
    /** @brief Original Ros2Control_msgsMsgJointTolerance field; shape sequence and quota 8. */
    public mixed $goal_tolerance;
    /** @brief Original Ros2Control_msgsMsgJointComponentTolerance field; shape sequence and quota 8. */
    public mixed $component_goal_tolerance;
    /** @brief Original Ros2Builtin_interfacesMsgDuration field; shape scalar and quota 0. */
    public mixed $goal_time_tolerance;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('trajectory', $values)) $this->trajectory = $values['trajectory'];
        else
        {
            $this->trajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
        }
        if (array_key_exists('multi_dof_trajectory', $values)) $this->multi_dof_trajectory = $values['multi_dof_trajectory'];
        else
        {
            $this->multi_dof_trajectory = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        }
        if (array_key_exists('path_tolerance', $values)) $this->path_tolerance = $values['path_tolerance'];
        else
        {
            $this->path_tolerance = [];
        }
        if (array_key_exists('component_path_tolerance', $values)) $this->component_path_tolerance =
                $values['component_path_tolerance'];
        else
        {
            $this->component_path_tolerance = [];
        }
        if (array_key_exists('goal_tolerance', $values)) $this->goal_tolerance = $values['goal_tolerance'];
        else
        {
            $this->goal_tolerance = [];
        }
        if (array_key_exists('component_goal_tolerance', $values)) $this->component_goal_tolerance =
                $values['component_goal_tolerance'];
        else
        {
            $this->component_goal_tolerance = [];
        }
        if (array_key_exists('goal_time_tolerance', $values)) $this->goal_time_tolerance = $values['goal_time_tolerance'];
        else
        {
            $this->goal_time_tolerance = new Ros2Builtin_interfacesMsgDuration();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Control_msgsActionFollowJointTrajectory_Goal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Control_msgsActionFollowJointTrajectory_Goal', $bytes); }
}
/** @brief Own every original field of control_msgs/action/FollowJointTrajectory_Result. */
final class Ros2Control_msgsActionFollowJointTrajectory_Result
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Control_msgsActionFollowJointTrajectory_Result',
        'native_type' => 'control_msgs/action/FollowJointTrajectory_Result',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'constants' => [
            'SUCCESSFUL' => 0,
            'INVALID_GOAL' => -1,
            'INVALID_JOINTS' => -2,
            'OLD_HEADER_TIMESTAMP' => -3,
            'PATH_TOLERANCE_VIOLATED' => -4,
            'GOAL_TOLERANCE_VIOLATED' => -5,
        ],
        'fields' => [
            [
                'name' => 'error_code',
                'type' => 'int32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'error_string',
                'type' => 'string',
                'array' => '',
                'count' => 0,
                'string_bound' => 256,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Preserve the exact original declared constant. */
    public const SUCCESSFUL = 0;
    /** @brief Preserve the exact original declared constant. */
    public const INVALID_GOAL = -1;
    /** @brief Preserve the exact original declared constant. */
    public const INVALID_JOINTS = -2;
    /** @brief Preserve the exact original declared constant. */
    public const OLD_HEADER_TIMESTAMP = -3;
    /** @brief Preserve the exact original declared constant. */
    public const PATH_TOLERANCE_VIOLATED = -4;
    /** @brief Preserve the exact original declared constant. */
    public const GOAL_TOLERANCE_VIOLATED = -5;
    /** @brief Original int32 field; shape scalar and quota 0. */
    public mixed $error_code;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error_string;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('error_code', $values)) $this->error_code = $values['error_code'];
        else
        {
            $this->error_code = 0;
        }
        if (array_key_exists('error_string', $values)) $this->error_string = $values['error_string'];
        else
        {
            $this->error_string = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Control_msgsActionFollowJointTrajectory_Result', $this);
            }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Control_msgsActionFollowJointTrajectory_Result', $bytes); }
}
/** @brief Own every original field of control_msgs/action/FollowJointTrajectory_Feedback. */
final class Ros2Control_msgsActionFollowJointTrajectory_Feedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Control_msgsActionFollowJointTrajectory_Feedback',
        'native_type' => 'control_msgs/action/FollowJointTrajectory_Feedback',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529',
        'minimum' => 152,
        'maximum' => 4708,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'joint_names',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 128,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'desired',
                'type' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 24,
            ],
            [
                'name' => 'actual',
                'type' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 24,
            ],
            [
                'name' => 'error',
                'type' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 24,
            ],
            [
                'name' => 'multi_dof_joint_names',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 1,
                'string_bound' => 128,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'multi_dof_desired',
                'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 20,
            ],
            [
                'name' => 'multi_dof_actual',
                'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 20,
            ],
            [
                'name' => 'multi_dof_error',
                'type' => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 20,
            ],
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original string field; shape sequence and quota 8. */
    public mixed $joint_names;
    /** @brief Original Ros2Trajectory_msgsMsgJointTrajectoryPoint field; shape scalar and quota 0. */
    public mixed $desired;
    /** @brief Original Ros2Trajectory_msgsMsgJointTrajectoryPoint field; shape scalar and quota 0. */
    public mixed $actual;
    /** @brief Original Ros2Trajectory_msgsMsgJointTrajectoryPoint field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Original string field; shape sequence and quota 1. */
    public mixed $multi_dof_joint_names;
    /** @brief Original Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field; shape scalar and quota 0. */
    public mixed $multi_dof_desired;
    /** @brief Original Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field; shape scalar and quota 0. */
    public mixed $multi_dof_actual;
    /** @brief Original Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field; shape scalar and quota 0. */
    public mixed $multi_dof_error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('joint_names', $values)) $this->joint_names = $values['joint_names'];
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('desired', $values)) $this->desired = $values['desired'];
        else
        {
            $this->desired = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
        if (array_key_exists('actual', $values)) $this->actual = $values['actual'];
        else
        {
            $this->actual = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
        if (array_key_exists('multi_dof_joint_names', $values)) $this->multi_dof_joint_names = $values['multi_dof_joint_names'];
        else
        {
            $this->multi_dof_joint_names = [];
        }
        if (array_key_exists('multi_dof_desired', $values)) $this->multi_dof_desired = $values['multi_dof_desired'];
        else
        {
            $this->multi_dof_desired = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        }
        if (array_key_exists('multi_dof_actual', $values)) $this->multi_dof_actual = $values['multi_dof_actual'];
        else
        {
            $this->multi_dof_actual = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        }
        if (array_key_exists('multi_dof_error', $values)) $this->multi_dof_error = $values['multi_dof_error'];
        else
        {
            $this->multi_dof_error = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Control_msgsActionFollowJointTrajectory_Feedback',
            $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Control_msgsActionFollowJointTrajectory_Feedback', $bytes); }
}
/** @brief Own every original field of sensor_msgs/msg/JointState. */
final class Ros2Sensor_msgsMsgJointState
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Sensor_msgsMsgJointState',
        'native_type' => 'sensor_msgs/msg/JointState',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11',
        'minimum' => 28,
        'maximum' => 1404,
        'semantics' => 'joint-state-optional-equal-length-arrays',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros2Std_msgsMsgHeader',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12,
            ],
            [
                'name' => 'name',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 128,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'position',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'velocity',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'effort',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 8,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original string field; shape sequence and quota 8. */
    public mixed $name;
    /** @brief Original float64 field; shape sequence and quota 8. */
    public mixed $position;
    /** @brief Original float64 field; shape sequence and quota 8. */
    public mixed $velocity;
    /** @brief Original float64 field; shape sequence and quota 8. */
    public mixed $effort;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('name', $values)) $this->name = $values['name'];
        else
        {
            $this->name = [];
        }
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = [];
        }
        if (array_key_exists('velocity', $values)) $this->velocity = $values['velocity'];
        else
        {
            $this->velocity = [];
        }
        if (array_key_exists('effort', $values)) $this->effort = $values['effort'];
        else
        {
            $this->effort = [];
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Sensor_msgsMsgJointState', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Sensor_msgsMsgJointState', $bytes); }
}
/** @brief Share one pure codec registry for this exact selected release. */
final class Catalog
{
    /** @brief Return the retained strict common wire registry. @return Wire No native resource. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) $wire = new Wire([
            'Ros2Builtin_interfacesMsgDuration' => Ros2Builtin_interfacesMsgDuration::SCHEMA + ['class' =>
            'Ros2Builtin_interfacesMsgDuration::class],
            'Ros2Builtin_interfacesMsgTime' => Ros2Builtin_interfacesMsgTime::SCHEMA + ['class' =>
            'Ros2Builtin_interfacesMsgTime::class],
            'Ros2Std_msgsMsgHeader' => Ros2Std_msgsMsgHeader::SCHEMA + ['class' => Ros2Std_msgsMsgHeader::class],
            'Ros2Trajectory_msgsMsgJointTrajectoryPoint' => Ros2Trajectory_msgsMsgJointTrajectoryPoint::SCHEMA +
            '['class' => Ros2Trajectory_msgsMsgJointTrajectoryPoint::class],
            'Ros2Trajectory_msgsMsgJointTrajectory' => Ros2Trajectory_msgsMsgJointTrajectory::SCHEMA + ['class' =>
            'Ros2Trajectory_msgsMsgJointTrajectory::class],
            'Ros2Geometry_msgsMsgVector3' => Ros2Geometry_msgsMsgVector3::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgVector3::class],
            'Ros2Geometry_msgsMsgQuaternion' => Ros2Geometry_msgsMsgQuaternion::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgQuaternion::class],
            'Ros2Geometry_msgsMsgTransform' => Ros2Geometry_msgsMsgTransform::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgTransform::class],
            'Ros2Geometry_msgsMsgTwist' => Ros2Geometry_msgsMsgTwist::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgTwist::class],
            'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint' =>
            'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::SCHEMA + ['class' =>
            'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::class],
            'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory' => Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::SCHEMA +
            '['class' => Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::class],
            'Ros2Control_msgsMsgJointTolerance' => Ros2Control_msgsMsgJointTolerance::SCHEMA + ['class' =>
            'Ros2Control_msgsMsgJointTolerance::class],
            'Ros2Control_msgsMsgJointComponentTolerance' => Ros2Control_msgsMsgJointComponentTolerance::SCHEMA +
            '['class' => Ros2Control_msgsMsgJointComponentTolerance::class],
            'Ros2Control_msgsActionFollowJointTrajectory_Goal' =>
            'Ros2Control_msgsActionFollowJointTrajectory_Goal::SCHEMA + ['class' =>
            'Ros2Control_msgsActionFollowJointTrajectory_Goal::class],
            'Ros2Control_msgsActionFollowJointTrajectory_Result' =>
            'Ros2Control_msgsActionFollowJointTrajectory_Result::SCHEMA + ['class' =>
            'Ros2Control_msgsActionFollowJointTrajectory_Result::class],
            'Ros2Control_msgsActionFollowJointTrajectory_Feedback' =>
            'Ros2Control_msgsActionFollowJointTrajectory_Feedback::SCHEMA + ['class' =>
            'Ros2Control_msgsActionFollowJointTrajectory_Feedback::class],
            'Ros2Sensor_msgsMsgJointState' => Ros2Sensor_msgsMsgJointState::SCHEMA + ['class' =>
            'Ros2Sensor_msgsMsgJointState::class],
        ]);
        return $wire;
    }
}
