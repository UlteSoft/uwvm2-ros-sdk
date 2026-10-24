<?php
declare(strict_types=1);
namespace Uwvm\Flexiv\Ros1Noetic;

/** @file Records.php
 * @brief Complete selected original PHP values; native identity remains independently unbound.
 */
use Uwvm\RosWasm\Wire;
use Uwvm\RosWasm\Word;
/** @brief Own every original field of flexiv_msgs/JointPosVel. */
final class Ros1Flexiv_msgsJointPosVel
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Flexiv_msgsJointPosVel',
        'native_type' => 'flexiv_msgs/JointPosVel',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa',
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
    public function encode(): string { return Catalog::wire()->encode('Ros1Flexiv_msgsJointPosVel', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Flexiv_msgsJointPosVel', $bytes); }
}
/** @brief Own every original field of flexiv_msgs/Mode. */
final class Ros1Flexiv_msgsMode
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Flexiv_msgsMode',
        'native_type' => 'flexiv_msgs/Mode',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422',
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
    public function encode(): string { return Catalog::wire()->encode('Ros1Flexiv_msgsMode', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Flexiv_msgsMode', $bytes); }
}
/** @brief Own every original field of geometry_msgs/Point. */
final class Ros1Geometry_msgsPoint
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsPoint',
        'native_type' => 'geometry_msgs/Point',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b',
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
    public function encode(): string { return Catalog::wire()->encode('Ros1Geometry_msgsPoint', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Geometry_msgsPoint', $bytes); }
}
/** @brief Own every original field of geometry_msgs/Quaternion. */
final class Ros1Geometry_msgsQuaternion
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsQuaternion',
        'native_type' => 'geometry_msgs/Quaternion',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934',
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
            [
                'name' => 'w',
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
            $this->w = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Geometry_msgsQuaternion', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Geometry_msgsQuaternion', $bytes); }
}
/** @brief Own every original field of geometry_msgs/Pose. */
final class Ros1Geometry_msgsPose
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsPose',
        'native_type' => 'geometry_msgs/Pose',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'position',
                'type' => 'Ros1Geometry_msgsPoint',
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
                'type' => 'Ros1Geometry_msgsQuaternion',
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
    /** @brief Original Ros1Geometry_msgsPoint field; shape scalar and quota 0. */
    public mixed $position;
    /** @brief Original Ros1Geometry_msgsQuaternion field; shape scalar and quota 0. */
    public mixed $orientation;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = new Ros1Geometry_msgsPoint();
        }
        if (array_key_exists('orientation', $values)) $this->orientation = $values['orientation'];
        else
        {
            $this->orientation = new Ros1Geometry_msgsQuaternion();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Geometry_msgsPose', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Geometry_msgsPose', $bytes); }
}
/** @brief Own every original field of geometry_msgs/Vector3. */
final class Ros1Geometry_msgsVector3
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsVector3',
        'native_type' => 'geometry_msgs/Vector3',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc',
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
    public function encode(): string { return Catalog::wire()->encode('Ros1Geometry_msgsVector3', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Geometry_msgsVector3', $bytes); }
}
/** @brief Own every original field of geometry_msgs/Accel. */
final class Ros1Geometry_msgsAccel
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsAccel',
        'native_type' => 'geometry_msgs/Accel',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'linear',
                'type' => 'Ros1Geometry_msgsVector3',
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
                'type' => 'Ros1Geometry_msgsVector3',
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
    /** @brief Original Ros1Geometry_msgsVector3 field; shape scalar and quota 0. */
    public mixed $linear;
    /** @brief Original Ros1Geometry_msgsVector3 field; shape scalar and quota 0. */
    public mixed $angular;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('linear', $values)) $this->linear = $values['linear'];
        else
        {
            $this->linear = new Ros1Geometry_msgsVector3();
        }
        if (array_key_exists('angular', $values)) $this->angular = $values['angular'];
        else
        {
            $this->angular = new Ros1Geometry_msgsVector3();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Geometry_msgsAccel', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Geometry_msgsAccel', $bytes); }
}
/** @brief Own every original field of geometry_msgs/Wrench. */
final class Ros1Geometry_msgsWrench
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsWrench',
        'native_type' => 'geometry_msgs/Wrench',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'force',
                'type' => 'Ros1Geometry_msgsVector3',
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
                'type' => 'Ros1Geometry_msgsVector3',
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
    /** @brief Original Ros1Geometry_msgsVector3 field; shape scalar and quota 0. */
    public mixed $force;
    /** @brief Original Ros1Geometry_msgsVector3 field; shape scalar and quota 0. */
    public mixed $torque;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('force', $values)) $this->force = $values['force'];
        else
        {
            $this->force = new Ros1Geometry_msgsVector3();
        }
        if (array_key_exists('torque', $values)) $this->torque = $values['torque'];
        else
        {
            $this->torque = new Ros1Geometry_msgsVector3();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Geometry_msgsWrench', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Geometry_msgsWrench', $bytes); }
}
/** @brief Own every original field of flexiv_msgs/RobotStates. */
final class Ros1Flexiv_msgsRobotStates
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros1Flexiv_msgsRobotStates',
        'native_type' => 'flexiv_msgs/RobotStates',
        'ros_version' => 1,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8',
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
                'type' => 'Ros1Geometry_msgsPose',
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
                'type' => 'Ros1Geometry_msgsPose',
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
                'type' => 'Ros1Geometry_msgsAccel',
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
                'type' => 'Ros1Geometry_msgsPose',
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
                'type' => 'Ros1Geometry_msgsPose',
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
                'type' => 'Ros1Geometry_msgsWrench',
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
                'type' => 'Ros1Geometry_msgsWrench',
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
                'type' => 'Ros1Geometry_msgsWrench',
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
    /** @brief Original Ros1Geometry_msgsPose field; shape scalar and quota 0. */
    public mixed $tcp_pose;
    /** @brief Original Ros1Geometry_msgsPose field; shape scalar and quota 0. */
    public mixed $tcp_pose_des;
    /** @brief Original Ros1Geometry_msgsAccel field; shape scalar and quota 0. */
    public mixed $tcp_vel;
    /** @brief Original Ros1Geometry_msgsPose field; shape scalar and quota 0. */
    public mixed $cam_pose;
    /** @brief Original Ros1Geometry_msgsPose field; shape scalar and quota 0. */
    public mixed $flange_pose;
    /** @brief Original Ros1Geometry_msgsWrench field; shape scalar and quota 0. */
    public mixed $ft_sensor_raw;
    /** @brief Original Ros1Geometry_msgsWrench field; shape scalar and quota 0. */
    public mixed $ext_wrench_tcp_frame;
    /** @brief Original Ros1Geometry_msgsWrench field; shape scalar and quota 0. */
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
            $this->tcp_pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('tcp_pose_des', $values)) $this->tcp_pose_des = $values['tcp_pose_des'];
        else
        {
            $this->tcp_pose_des = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('tcp_vel', $values)) $this->tcp_vel = $values['tcp_vel'];
        else
        {
            $this->tcp_vel = new Ros1Geometry_msgsAccel();
        }
        if (array_key_exists('cam_pose', $values)) $this->cam_pose = $values['cam_pose'];
        else
        {
            $this->cam_pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('flange_pose', $values)) $this->flange_pose = $values['flange_pose'];
        else
        {
            $this->flange_pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('ft_sensor_raw', $values)) $this->ft_sensor_raw = $values['ft_sensor_raw'];
        else
        {
            $this->ft_sensor_raw = new Ros1Geometry_msgsWrench();
        }
        if (array_key_exists('ext_wrench_tcp_frame', $values)) $this->ext_wrench_tcp_frame = $values['ext_wrench_tcp_frame'];
        else
        {
            $this->ext_wrench_tcp_frame = new Ros1Geometry_msgsWrench();
        }
        if (array_key_exists('ext_wrench_base_frame', $values)) $this->ext_wrench_base_frame = $values['ext_wrench_base_frame'];
        else
        {
            $this->ext_wrench_base_frame = new Ros1Geometry_msgsWrench();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros1Flexiv_msgsRobotStates', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros1Flexiv_msgsRobotStates', $bytes); }
}
/** @brief Share one pure codec registry for this exact selected release. */
final class Catalog
{
    /** @brief Return the retained strict common wire registry. @return Wire No native resource. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) $wire = new Wire([
            'Ros1Flexiv_msgsJointPosVel' => Ros1Flexiv_msgsJointPosVel::SCHEMA + ['class' =>
            'Ros1Flexiv_msgsJointPosVel::class],
            'Ros1Flexiv_msgsMode' => Ros1Flexiv_msgsMode::SCHEMA + ['class' => Ros1Flexiv_msgsMode::class],
            'Ros1Geometry_msgsPoint' => Ros1Geometry_msgsPoint::SCHEMA + ['class' => Ros1Geometry_msgsPoint::class],
            'Ros1Geometry_msgsQuaternion' => Ros1Geometry_msgsQuaternion::SCHEMA + ['class' =>
            'Ros1Geometry_msgsQuaternion::class],
            'Ros1Geometry_msgsPose' => Ros1Geometry_msgsPose::SCHEMA + ['class' => Ros1Geometry_msgsPose::class],
            'Ros1Geometry_msgsVector3' => Ros1Geometry_msgsVector3::SCHEMA + ['class' =>
            'Ros1Geometry_msgsVector3::class],
            'Ros1Geometry_msgsAccel' => Ros1Geometry_msgsAccel::SCHEMA + ['class' => Ros1Geometry_msgsAccel::class],
            'Ros1Geometry_msgsWrench' => Ros1Geometry_msgsWrench::SCHEMA + ['class' => Ros1Geometry_msgsWrench::class],
            'Ros1Flexiv_msgsRobotStates' => Ros1Flexiv_msgsRobotStates::SCHEMA + ['class' =>
            'Ros1Flexiv_msgsRobotStates::class],
        ]);
        return $wire;
    }
}
