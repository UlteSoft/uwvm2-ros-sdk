<?php
declare(strict_types=1);
namespace Uwvm\Flexiv\Ros2Foxy;

/** @file Records.php
 * @brief Complete selected original PHP values; native identity remains independently unbound.
 */
use Uwvm\RosWasm\Wire;
use Uwvm\RosWasm\Word;
/** @brief Own every original field of flexiv_msgs/msg/JointPosVel. */
final class Ros2Flexiv_msgsMsgJointPosVel
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsMsgJointPosVel',
        'native_type' => 'flexiv_msgs/msg/JointPosVel',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8',
        'minimum' => 112,
        'maximum' => 112,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'positions',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
                'array' => 'array',
                'count' => 7,
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
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $positions;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $velocities;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('positions', $values)) $this->positions = $values['positions'];
        else
        {
            $this->positions = [];
            for ($index = 0; $index < 7; ++$index) $this->positions[] = 0.0;
        }
        if (array_key_exists('velocities', $values)) $this->velocities = $values['velocities'];
        else
        {
            $this->velocities = [];
            for ($index = 0; $index < 7; ++$index) $this->velocities[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsMsgJointPosVel', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsMsgJointPosVel', $bytes); }
}
/** @brief Own every original field of flexiv_msgs/msg/Mode. */
final class Ros2Flexiv_msgsMsgMode
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsMsgMode',
        'native_type' => 'flexiv_msgs/msg/Mode',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'constants' => [
            'MODE_UNKNOWN' => -1,
            'MODE_IDLE' => 0,
            'MODE_RT_JOINT_TORQUE' => 1,
            'MODE_RT_JOINT_POSITION' => 2,
            'MODE_NRT_JOINT_POSITION' => 3,
            'MODE_NRT_PLAN_EXECUTION' => 4,
            'MODE_NRT_PRIMITIVE_EXECUTION' => 5,
            'MODE_RT_CARTESIAN_MOTION_FORCE_BASE' => 6,
            'MODE_RT_CARTESIAN_MOTION_FORCE_TCP' => 7,
            'MODE_NRT_CARTESIAN_MOTION_FORCE_BASE' => 8,
            'MODE_NRT_CARTESIAN_MOTION_FORCE_TCP' => 9,
        ],
        'fields' => [
            [
                'name' => 'mode',
                'type' => 'int8',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Preserve the exact original declared constant. */
    public const MODE_UNKNOWN = -1;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_IDLE = 0;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_RT_JOINT_TORQUE = 1;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_RT_JOINT_POSITION = 2;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_JOINT_POSITION = 3;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_PLAN_EXECUTION = 4;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_PRIMITIVE_EXECUTION = 5;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_RT_CARTESIAN_MOTION_FORCE_BASE = 6;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_RT_CARTESIAN_MOTION_FORCE_TCP = 7;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_CARTESIAN_MOTION_FORCE_BASE = 8;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_CARTESIAN_MOTION_FORCE_TCP = 9;
    /** @brief Original int8 field; shape scalar and quota 0. */
    public mixed $mode;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('mode', $values)) $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsMsgMode', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsMsgMode', $bytes); }
}
/** @brief Own every original field of geometry_msgs/msg/Point. */
final class Ros2Geometry_msgsMsgPoint
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPoint',
        'native_type' => 'geometry_msgs/msg/Point',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616',
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
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoint', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoint', $bytes); }
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
/** @brief Own every original field of geometry_msgs/msg/Pose. */
final class Ros2Geometry_msgsMsgPose
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPose',
        'native_type' => 'geometry_msgs/msg/Pose',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'position',
                'type' => 'Ros2Geometry_msgsMsgPoint',
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
                'name' => 'orientation',
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
    /** @brief Original Ros2Geometry_msgsMsgPoint field; shape scalar and quota 0. */
    public mixed $position;
    /** @brief Original Ros2Geometry_msgsMsgQuaternion field; shape scalar and quota 0. */
    public mixed $orientation;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = new Ros2Geometry_msgsMsgPoint();
        }
        if (array_key_exists('orientation', $values)) $this->orientation = $values['orientation'];
        else
        {
            $this->orientation = new Ros2Geometry_msgsMsgQuaternion();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgPose', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgPose', $bytes); }
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
/** @brief Own every original field of geometry_msgs/msg/Accel. */
final class Ros2Geometry_msgsMsgAccel
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgAccel',
        'native_type' => 'geometry_msgs/msg/Accel',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde',
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
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgAccel', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgAccel', $bytes); }
}
/** @brief Own every original field of geometry_msgs/msg/Wrench. */
final class Ros2Geometry_msgsMsgWrench
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgWrench',
        'native_type' => 'geometry_msgs/msg/Wrench',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'force',
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
                'name' => 'torque',
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
    public mixed $force;
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $torque;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('force', $values)) $this->force = $values['force'];
        else
        {
            $this->force = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('torque', $values)) $this->torque = $values['torque'];
        else
        {
            $this->torque = new Ros2Geometry_msgsMsgVector3();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgWrench', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgWrench', $bytes); }
}
/** @brief Own every original field of flexiv_msgs/msg/RobotStates. */
final class Ros2Flexiv_msgsMsgRobotStates
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsMsgRobotStates',
        'native_type' => 'flexiv_msgs/msg/RobotStates',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b',
        'minimum' => 864,
        'maximum' => 864,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'q',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
                'name' => 'theta',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
                'name' => 'dq',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
                'name' => 'dtheta',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
                'name' => 'tau',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
                'name' => 'tau_des',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
                'name' => 'tau_dot',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
                'name' => 'tau_ext',
                'type' => 'float64',
                'array' => 'array',
                'count' => 7,
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
                'name' => 'tcp_pose',
                'type' => 'Ros2Geometry_msgsMsgPose',
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
                'element_minimum' => 56,
            ],
            [
                'name' => 'tcp_pose_des',
                'type' => 'Ros2Geometry_msgsMsgPose',
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
                'element_minimum' => 56,
            ],
            [
                'name' => 'tcp_vel',
                'type' => 'Ros2Geometry_msgsMsgAccel',
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
                'element_minimum' => 48,
            ],
            [
                'name' => 'cam_pose',
                'type' => 'Ros2Geometry_msgsMsgPose',
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
                'element_minimum' => 56,
            ],
            [
                'name' => 'flange_pose',
                'type' => 'Ros2Geometry_msgsMsgPose',
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
                'element_minimum' => 56,
            ],
            [
                'name' => 'ft_sensor_raw',
                'type' => 'Ros2Geometry_msgsMsgWrench',
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
                'element_minimum' => 48,
            ],
            [
                'name' => 'ext_wrench_tcp_frame',
                'type' => 'Ros2Geometry_msgsMsgWrench',
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
                'element_minimum' => 48,
            ],
            [
                'name' => 'ext_wrench_base_frame',
                'type' => 'Ros2Geometry_msgsMsgWrench',
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
                'element_minimum' => 48,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $q;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $theta;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $dq;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $dtheta;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau_des;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau_dot;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $tau_ext;
    /** @brief Original Ros2Geometry_msgsMsgPose field; shape scalar and quota 0. */
    public mixed $tcp_pose;
    /** @brief Original Ros2Geometry_msgsMsgPose field; shape scalar and quota 0. */
    public mixed $tcp_pose_des;
    /** @brief Original Ros2Geometry_msgsMsgAccel field; shape scalar and quota 0. */
    public mixed $tcp_vel;
    /** @brief Original Ros2Geometry_msgsMsgPose field; shape scalar and quota 0. */
    public mixed $cam_pose;
    /** @brief Original Ros2Geometry_msgsMsgPose field; shape scalar and quota 0. */
    public mixed $flange_pose;
    /** @brief Original Ros2Geometry_msgsMsgWrench field; shape scalar and quota 0. */
    public mixed $ft_sensor_raw;
    /** @brief Original Ros2Geometry_msgsMsgWrench field; shape scalar and quota 0. */
    public mixed $ext_wrench_tcp_frame;
    /** @brief Original Ros2Geometry_msgsMsgWrench field; shape scalar and quota 0. */
    public mixed $ext_wrench_base_frame;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('q', $values)) $this->q = $values['q'];
        else
        {
            $this->q = [];
            for ($index = 0; $index < 7; ++$index) $this->q[] = 0.0;
        }
        if (array_key_exists('theta', $values)) $this->theta = $values['theta'];
        else
        {
            $this->theta = [];
            for ($index = 0; $index < 7; ++$index) $this->theta[] = 0.0;
        }
        if (array_key_exists('dq', $values)) $this->dq = $values['dq'];
        else
        {
            $this->dq = [];
            for ($index = 0; $index < 7; ++$index) $this->dq[] = 0.0;
        }
        if (array_key_exists('dtheta', $values)) $this->dtheta = $values['dtheta'];
        else
        {
            $this->dtheta = [];
            for ($index = 0; $index < 7; ++$index) $this->dtheta[] = 0.0;
        }
        if (array_key_exists('tau', $values)) $this->tau = $values['tau'];
        else
        {
            $this->tau = [];
            for ($index = 0; $index < 7; ++$index) $this->tau[] = 0.0;
        }
        if (array_key_exists('tau_des', $values)) $this->tau_des = $values['tau_des'];
        else
        {
            $this->tau_des = [];
            for ($index = 0; $index < 7; ++$index) $this->tau_des[] = 0.0;
        }
        if (array_key_exists('tau_dot', $values)) $this->tau_dot = $values['tau_dot'];
        else
        {
            $this->tau_dot = [];
            for ($index = 0; $index < 7; ++$index) $this->tau_dot[] = 0.0;
        }
        if (array_key_exists('tau_ext', $values)) $this->tau_ext = $values['tau_ext'];
        else
        {
            $this->tau_ext = [];
            for ($index = 0; $index < 7; ++$index) $this->tau_ext[] = 0.0;
        }
        if (array_key_exists('tcp_pose', $values)) $this->tcp_pose = $values['tcp_pose'];
        else
        {
            $this->tcp_pose = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('tcp_pose_des', $values)) $this->tcp_pose_des = $values['tcp_pose_des'];
        else
        {
            $this->tcp_pose_des = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('tcp_vel', $values)) $this->tcp_vel = $values['tcp_vel'];
        else
        {
            $this->tcp_vel = new Ros2Geometry_msgsMsgAccel();
        }
        if (array_key_exists('cam_pose', $values)) $this->cam_pose = $values['cam_pose'];
        else
        {
            $this->cam_pose = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('flange_pose', $values)) $this->flange_pose = $values['flange_pose'];
        else
        {
            $this->flange_pose = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('ft_sensor_raw', $values)) $this->ft_sensor_raw = $values['ft_sensor_raw'];
        else
        {
            $this->ft_sensor_raw = new Ros2Geometry_msgsMsgWrench();
        }
        if (array_key_exists('ext_wrench_tcp_frame', $values)) $this->ext_wrench_tcp_frame = $values['ext_wrench_tcp_frame'];
        else
        {
            $this->ext_wrench_tcp_frame = new Ros2Geometry_msgsMsgWrench();
        }
        if (array_key_exists('ext_wrench_base_frame', $values)) $this->ext_wrench_base_frame = $values['ext_wrench_base_frame'];
        else
        {
            $this->ext_wrench_base_frame = new Ros2Geometry_msgsMsgWrench();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsMsgRobotStates', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsMsgRobotStates', $bytes); }
}
/** @brief Share one pure codec registry for this exact selected release. */
final class Catalog
{
    /** @brief Return the retained strict common wire registry. @return Wire No native resource. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) $wire = new Wire([
            'Ros2Flexiv_msgsMsgJointPosVel' => Ros2Flexiv_msgsMsgJointPosVel::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsMsgJointPosVel::class],
            'Ros2Flexiv_msgsMsgMode' => Ros2Flexiv_msgsMsgMode::SCHEMA + ['class' => Ros2Flexiv_msgsMsgMode::class],
            'Ros2Geometry_msgsMsgPoint' => Ros2Geometry_msgsMsgPoint::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgPoint::class],
            'Ros2Geometry_msgsMsgQuaternion' => Ros2Geometry_msgsMsgQuaternion::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgQuaternion::class],
            'Ros2Geometry_msgsMsgPose' => Ros2Geometry_msgsMsgPose::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgPose::class],
            'Ros2Geometry_msgsMsgVector3' => Ros2Geometry_msgsMsgVector3::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgVector3::class],
            'Ros2Geometry_msgsMsgAccel' => Ros2Geometry_msgsMsgAccel::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgAccel::class],
            'Ros2Geometry_msgsMsgWrench' => Ros2Geometry_msgsMsgWrench::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgWrench::class],
            'Ros2Flexiv_msgsMsgRobotStates' => Ros2Flexiv_msgsMsgRobotStates::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsMsgRobotStates::class],
        ]);
        return $wire;
    }
}
