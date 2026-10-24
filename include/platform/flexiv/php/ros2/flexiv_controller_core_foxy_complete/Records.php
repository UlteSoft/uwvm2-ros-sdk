<?php
declare(strict_types=1);
namespace Uwvm\Flexiv\ControllerCoreFoxy;

/** @file Records.php
 * @brief Complete selected original PHP values; native identity remains independently unbound.
 */
use Uwvm\RosWasm\Wire;
use Uwvm\RosWasm\Word;
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
/** @brief Own every original field of std_msgs/msg/Header. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgHeader',
        'native_type' => 'std_msgs/msg/Header',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b',
        'minimum' => 12,
        'maximum' => 268,
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
/** @brief Own every original field of sensor_msgs/msg/JointState. */
final class Ros2Sensor_msgsMsgJointState
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Sensor_msgsMsgJointState',
        'native_type' => 'sensor_msgs/msg/JointState',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556',
        'minimum' => 28,
        'maximum' => 9372,
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
                'count' => 32,
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
            [
                'name' => 'position',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 32,
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
                'count' => 32,
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
                'count' => 32,
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
    /** @brief Original string field; shape sequence and quota 32. */
    public mixed $name;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $position;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $velocity;
    /** @brief Original float64 field; shape sequence and quota 32. */
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
/** @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint. */
final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
        'native_type' => 'trajectory_msgs/msg/JointTrajectoryPoint',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c',
        'minimum' => 24,
        'maximum' => 1048,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'positions',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 32,
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
                'count' => 32,
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
                'count' => 32,
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
                'count' => 32,
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
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $positions;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $velocities;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $accelerations;
    /** @brief Original float64 field; shape sequence and quota 32. */
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
        'codec_identity' => 'UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4',
        'minimum' => 20,
        'maximum' => 16980,
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
                'count' => 32,
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
            [
                'name' => 'points',
                'type' => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
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
                'element_minimum' => 24,
            ],
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original string field; shape sequence and quota 32. */
    public mixed $joint_names;
    /** @brief Original Ros2Trajectory_msgsMsgJointTrajectoryPoint field; shape sequence and quota 8. */
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
/** @brief Own every original field of std_msgs/msg/MultiArrayDimension. */
final class Ros2Std_msgsMsgMultiArrayDimension
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgMultiArrayDimension',
        'native_type' => 'std_msgs/msg/MultiArrayDimension',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'label',
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
            [
                'name' => 'size',
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
            [
                'name' => 'stride',
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
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $label;
    /** @brief Original uint32 field; shape scalar and quota 0. */
    public mixed $size;
    /** @brief Original uint32 field; shape scalar and quota 0. */
    public mixed $stride;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('label', $values)) $this->label = $values['label'];
        else
        {
            $this->label = '';
        }
        if (array_key_exists('size', $values)) $this->size = $values['size'];
        else
        {
            $this->size = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('stride', $values)) $this->stride = $values['stride'];
        else
        {
            $this->stride = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Std_msgsMsgMultiArrayDimension', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Std_msgsMsgMultiArrayDimension',
            $bytes); }
}
/** @brief Own every original field of std_msgs/msg/MultiArrayLayout. */
final class Ros2Std_msgsMsgMultiArrayLayout
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgMultiArrayLayout',
        'native_type' => 'std_msgs/msg/MultiArrayLayout',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40',
        'minimum' => 8,
        'maximum' => 2152,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'dim',
                'type' => 'Ros2Std_msgsMsgMultiArrayDimension',
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
                'element_minimum' => 12,
            ],
            [
                'name' => 'data_offset',
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
    /** @brief Original Ros2Std_msgsMsgMultiArrayDimension field; shape sequence and quota 8. */
    public mixed $dim;
    /** @brief Original uint32 field; shape scalar and quota 0. */
    public mixed $data_offset;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('dim', $values)) $this->dim = $values['dim'];
        else
        {
            $this->dim = [];
        }
        if (array_key_exists('data_offset', $values)) $this->data_offset = $values['data_offset'];
        else
        {
            $this->data_offset = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Std_msgsMsgMultiArrayLayout', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Std_msgsMsgMultiArrayLayout', $bytes);
            }
}
/** @brief Own every original field of std_msgs/msg/Float64MultiArray. */
final class Ros2Std_msgsMsgFloat64MultiArray
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgFloat64MultiArray',
        'native_type' => 'std_msgs/msg/Float64MultiArray',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2',
        'minimum' => 12,
        'maximum' => 2412,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'layout',
                'type' => 'Ros2Std_msgsMsgMultiArrayLayout',
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
                'name' => 'data',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 32,
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
    /** @brief Original Ros2Std_msgsMsgMultiArrayLayout field; shape scalar and quota 0. */
    public mixed $layout;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $data;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('layout', $values)) $this->layout = $values['layout'];
        else
        {
            $this->layout = new Ros2Std_msgsMsgMultiArrayLayout();
        }
        if (array_key_exists('data', $values)) $this->data = $values['data'];
        else
        {
            $this->data = [];
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Std_msgsMsgFloat64MultiArray', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Std_msgsMsgFloat64MultiArray', $bytes);
            }
}
/** @brief Share one pure codec registry for this exact selected release. */
final class Catalog
{
    /** @brief Return the retained strict common wire registry. @return Wire No native resource. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) $wire = new Wire([
            'Ros2Builtin_interfacesMsgTime' => Ros2Builtin_interfacesMsgTime::SCHEMA + ['class' =>
            'Ros2Builtin_interfacesMsgTime::class],
            'Ros2Builtin_interfacesMsgDuration' => Ros2Builtin_interfacesMsgDuration::SCHEMA + ['class' =>
            'Ros2Builtin_interfacesMsgDuration::class],
            'Ros2Std_msgsMsgHeader' => Ros2Std_msgsMsgHeader::SCHEMA + ['class' => Ros2Std_msgsMsgHeader::class],
            'Ros2Sensor_msgsMsgJointState' => Ros2Sensor_msgsMsgJointState::SCHEMA + ['class' =>
            'Ros2Sensor_msgsMsgJointState::class],
            'Ros2Trajectory_msgsMsgJointTrajectoryPoint' => Ros2Trajectory_msgsMsgJointTrajectoryPoint::SCHEMA +
            '['class' => Ros2Trajectory_msgsMsgJointTrajectoryPoint::class],
            'Ros2Trajectory_msgsMsgJointTrajectory' => Ros2Trajectory_msgsMsgJointTrajectory::SCHEMA + ['class' =>
            'Ros2Trajectory_msgsMsgJointTrajectory::class],
            'Ros2Std_msgsMsgMultiArrayDimension' => Ros2Std_msgsMsgMultiArrayDimension::SCHEMA + ['class' =>
            'Ros2Std_msgsMsgMultiArrayDimension::class],
            'Ros2Std_msgsMsgMultiArrayLayout' => Ros2Std_msgsMsgMultiArrayLayout::SCHEMA + ['class' =>
            'Ros2Std_msgsMsgMultiArrayLayout::class],
            'Ros2Std_msgsMsgFloat64MultiArray' => Ros2Std_msgsMsgFloat64MultiArray::SCHEMA + ['class' =>
            'Ros2Std_msgsMsgFloat64MultiArray::class],
        ]);
        return $wire;
    }
}
