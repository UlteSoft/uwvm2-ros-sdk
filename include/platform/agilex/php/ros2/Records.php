<?php
declare(strict_types=1);
namespace Uwvm\Agilex\Ros2;
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @file Records.php
 * @brief Complete original agilex owning classes using the shared PHP codec.
 * @details Full-width words remain exact on PHP32 and PHP64; no native registration is inferred. */
/** @brief Own every original builtin_interfaces/msg/Time field. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Builtin_interfacesMsgTime',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
        'ros_version' => 2,
        'native_type' => 'builtin_interfaces/msg/Time',
        'constants' => [],
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
    /** @brief Original sec: int32; scalar. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar. */
    public mixed $nanosec;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->sec = array_key_exists('sec', $values) ? $values['sec'] : 0;
        $this->nanosec = array_key_exists('nanosec', $values) ? $values['nanosec'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes);
    }
}
/** @brief Own every original geometry_msgs/msg/Point field. */
final class Ros2Geometry_msgsMsgPoint
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPoint',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Point',
        'constants' => [],
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
    /** @brief Original x: float64; scalar. */
    public mixed $x;
    /** @brief Original y: float64; scalar. */
    public mixed $y;
    /** @brief Original z: float64; scalar. */
    public mixed $z;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->x = array_key_exists('x', $values) ? $values['x'] : 0.0;
        $this->y = array_key_exists('y', $values) ? $values['y'] : 0.0;
        $this->z = array_key_exists('z', $values) ? $values['z'] : 0.0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoint', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoint', $bytes);
    }
}
/** @brief Own every original geometry_msgs/msg/Quaternion field. */
final class Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgQuaternion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Quaternion',
        'constants' => [],
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
    /** @brief Original x: float64; scalar. */
    public mixed $x;
    /** @brief Original y: float64; scalar. */
    public mixed $y;
    /** @brief Original z: float64; scalar. */
    public mixed $z;
    /** @brief Original w: float64; scalar. */
    public mixed $w;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->x = array_key_exists('x', $values) ? $values['x'] : 0.0;
        $this->y = array_key_exists('y', $values) ? $values['y'] : 0.0;
        $this->z = array_key_exists('z', $values) ? $values['z'] : 0.0;
        $this->w = array_key_exists('w', $values) ? $values['w'] : 1.0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgQuaternion', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgQuaternion', $bytes);
    }
}
/** @brief Own every original geometry_msgs/msg/Pose field. */
final class Ros2Geometry_msgsMsgPose
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Pose',
        'constants' => [],
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
    /** @brief Original position: Ros2Geometry_msgsMsgPoint; scalar. */
    public mixed $position;
    /** @brief Original orientation: Ros2Geometry_msgsMsgQuaternion; scalar. */
    public mixed $orientation;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->position = array_key_exists('position', $values) ? $values['position'] : new Ros2Geometry_msgsMsgPoint();
        $this->orientation = array_key_exists('orientation', $values) ? $values['orientation'] : new Ros2Geometry_msgsMsgQuaternion();
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPose', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPose', $bytes);
    }
}
/** @brief Own every original geometry_msgs/msg/PoseWithCovariance field. */
final class Ros2Geometry_msgsMsgPoseWithCovariance
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPoseWithCovariance',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2',
        'minimum' => 344,
        'maximum' => 344,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/PoseWithCovariance',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pose',
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
                'name' => 'covariance',
                'type' => 'float64',
                'array' => 'array',
                'count' => 36,
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
    /** @brief Original pose: Ros2Geometry_msgsMsgPose; scalar. */
    public mixed $pose;
    /** @brief Original covariance: float64; array. */
    public mixed $covariance;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->pose = array_key_exists('pose', $values) ? $values['pose'] : new Ros2Geometry_msgsMsgPose();
        $this->covariance = array_key_exists('covariance', $values) ? $values['covariance'] : array_fill(0, 36, 0.0);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoseWithCovariance', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoseWithCovariance', $bytes);
    }
}
/** @brief Own every original geometry_msgs/msg/Vector3 field. */
final class Ros2Geometry_msgsMsgVector3
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgVector3',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Vector3',
        'constants' => [],
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
    /** @brief Original x: float64; scalar. */
    public mixed $x;
    /** @brief Original y: float64; scalar. */
    public mixed $y;
    /** @brief Original z: float64; scalar. */
    public mixed $z;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->x = array_key_exists('x', $values) ? $values['x'] : 0.0;
        $this->y = array_key_exists('y', $values) ? $values['y'] : 0.0;
        $this->z = array_key_exists('z', $values) ? $values['z'] : 0.0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgVector3', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgVector3', $bytes);
    }
}
/** @brief Own every original geometry_msgs/msg/Twist field. */
final class Ros2Geometry_msgsMsgTwist
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgTwist',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Twist',
        'constants' => [],
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
    /** @brief Original linear: Ros2Geometry_msgsMsgVector3; scalar. */
    public mixed $linear;
    /** @brief Original angular: Ros2Geometry_msgsMsgVector3; scalar. */
    public mixed $angular;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->linear = array_key_exists('linear', $values) ? $values['linear'] : new Ros2Geometry_msgsMsgVector3();
        $this->angular = array_key_exists('angular', $values) ? $values['angular'] : new Ros2Geometry_msgsMsgVector3();
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgTwist', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgTwist', $bytes);
    }
}
/** @brief Own every original geometry_msgs/msg/TwistWithCovariance field. */
final class Ros2Geometry_msgsMsgTwistWithCovariance
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgTwistWithCovariance',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404',
        'minimum' => 336,
        'maximum' => 336,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/TwistWithCovariance',
        'constants' => [],
        'fields' => [
            [
                'name' => 'twist',
                'type' => 'Ros2Geometry_msgsMsgTwist',
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
                'name' => 'covariance',
                'type' => 'float64',
                'array' => 'array',
                'count' => 36,
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
    /** @brief Original twist: Ros2Geometry_msgsMsgTwist; scalar. */
    public mixed $twist;
    /** @brief Original covariance: float64; array. */
    public mixed $covariance;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->twist = array_key_exists('twist', $values) ? $values['twist'] : new Ros2Geometry_msgsMsgTwist();
        $this->covariance = array_key_exists('covariance', $values) ? $values['covariance'] : array_fill(0, 36, 0.0);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgTwistWithCovariance', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgTwistWithCovariance', $bytes);
    }
}
/** @brief Own every original std_msgs/msg/Header field. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgHeader',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'std_msgs/msg/Header',
        'constants' => [],
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
    /** @brief Original stamp: Ros2Builtin_interfacesMsgTime; scalar. */
    public mixed $stamp;
    /** @brief Original frame_id: string; scalar. */
    public mixed $frame_id;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->stamp = array_key_exists('stamp', $values) ? $values['stamp'] : new Ros2Builtin_interfacesMsgTime();
        $this->frame_id = array_key_exists('frame_id', $values) ? $values['frame_id'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes);
    }
}
/** @brief Own every original nav_msgs/msg/Odometry field. */
final class Ros2Nav_msgsMsgOdometry
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Nav_msgsMsgOdometry',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fdfdd74c211c22bfd167c3e33a098fe21198cb095bbd0313fc765f38b1f334ec',
        'minimum' => 696,
        'maximum' => 952,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'nav_msgs/msg/Odometry',
        'constants' => [],
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
                'name' => 'child_frame_id',
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
                'name' => 'pose',
                'type' => 'Ros2Geometry_msgsMsgPoseWithCovariance',
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
                'element_minimum' => 344,
            ],
            [
                'name' => 'twist',
                'type' => 'Ros2Geometry_msgsMsgTwistWithCovariance',
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
                'element_minimum' => 336,
            ],
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original child_frame_id: string; scalar. */
    public mixed $child_frame_id;
    /** @brief Original pose: Ros2Geometry_msgsMsgPoseWithCovariance; scalar. */
    public mixed $pose;
    /** @brief Original twist: Ros2Geometry_msgsMsgTwistWithCovariance; scalar. */
    public mixed $twist;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->child_frame_id = array_key_exists('child_frame_id', $values) ? $values['child_frame_id'] : '';
        $this->pose = array_key_exists('pose', $values) ? $values['pose'] : new Ros2Geometry_msgsMsgPoseWithCovariance();
        $this->twist = array_key_exists('twist', $values) ? $values['twist'] : new Ros2Geometry_msgsMsgTwistWithCovariance();
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Nav_msgsMsgOdometry', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Nav_msgsMsgOdometry', $bytes);
    }
}
/** @brief Own every original scout_msgs/msg/ScoutActuatorState field. */
final class Ros2Scout_msgsMsgScoutActuatorState
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Scout_msgsMsgScoutActuatorState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e7955c07aedaf42f8d97f873d60ae5c0dfc562faa1d64848f11b333f797350c6',
        'minimum' => 19,
        'maximum' => 19,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'scout_msgs/msg/ScoutActuatorState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'rpm',
                'type' => 'int16',
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
                'name' => 'current',
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
                'name' => 'driver_voltage',
                'type' => 'float32',
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
                'name' => 'driver_temperature',
                'type' => 'float32',
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
                'name' => 'motor_temperature',
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
    /** @brief Original rpm: int16; scalar. */
    public mixed $rpm;
    /** @brief Original current: float64; scalar. */
    public mixed $current;
    /** @brief Original driver_voltage: float32; scalar. */
    public mixed $driver_voltage;
    /** @brief Original driver_temperature: float32; scalar. */
    public mixed $driver_temperature;
    /** @brief Original motor_temperature: int8; scalar. */
    public mixed $motor_temperature;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->rpm = array_key_exists('rpm', $values) ? $values['rpm'] : 0;
        $this->current = array_key_exists('current', $values) ? $values['current'] : 0.0;
        $this->driver_voltage = array_key_exists('driver_voltage', $values) ? $values['driver_voltage'] : 0.0;
        $this->driver_temperature = array_key_exists('driver_temperature', $values) ? $values['driver_temperature'] : 0.0;
        $this->motor_temperature = array_key_exists('motor_temperature', $values) ? $values['motor_temperature'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Scout_msgsMsgScoutActuatorState', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Scout_msgsMsgScoutActuatorState', $bytes);
    }
}
/** @brief Own every original scout_msgs/msg/ScoutLightCmd field. */
final class Ros2Scout_msgsMsgScoutLightCmd
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Scout_msgsMsgScoutLightCmd',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a82206813682fbf1a6b41009c12191ad9ce47c98444d8ea9792e7b212ee602d7',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'scout_msgs/msg/ScoutLightCmd',
        'constants' => [
            'LIGHT_CONST_OFF' => 0,
            'LIGHT_CONST_ON' => 1,
            'LIGHT_BREATH' => 2,
            'LIGHT_CUSTOM' => 3,
        ],
        'fields' => [
            [
                'name' => 'cmd_ctrl_allowed',
                'type' => 'bool',
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
            [
                'name' => 'front_mode',
                'type' => 'uint8',
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
            [
                'name' => 'front_custom_value',
                'type' => 'uint8',
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
            [
                'name' => 'rear_mode',
                'type' => 'uint8',
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
            [
                'name' => 'rear_custom_value',
                'type' => 'uint8',
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
    /** @brief Original cmd_ctrl_allowed: bool; scalar. */
    public mixed $cmd_ctrl_allowed;
    /** @brief Original front_mode: uint8; scalar. */
    public mixed $front_mode;
    /** @brief Original front_custom_value: uint8; scalar. */
    public mixed $front_custom_value;
    /** @brief Original rear_mode: uint8; scalar. */
    public mixed $rear_mode;
    /** @brief Original rear_custom_value: uint8; scalar. */
    public mixed $rear_custom_value;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->cmd_ctrl_allowed = array_key_exists('cmd_ctrl_allowed', $values) ? $values['cmd_ctrl_allowed'] : false;
        $this->front_mode = array_key_exists('front_mode', $values) ? $values['front_mode'] : 0;
        $this->front_custom_value = array_key_exists('front_custom_value', $values) ? $values['front_custom_value'] : 0;
        $this->rear_mode = array_key_exists('rear_mode', $values) ? $values['rear_mode'] : 0;
        $this->rear_custom_value = array_key_exists('rear_custom_value', $values) ? $values['rear_custom_value'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Scout_msgsMsgScoutLightCmd', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Scout_msgsMsgScoutLightCmd', $bytes);
    }
}
/** @brief Own every original scout_msgs/msg/ScoutLightState field. */
final class Ros2Scout_msgsMsgScoutLightState
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Scout_msgsMsgScoutLightState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4f42b9365cc76673b156e725aac9448e0f0d806105d3717cdb2628c384a6d76a',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'scout_msgs/msg/ScoutLightState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'mode',
                'type' => 'uint8',
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
            [
                'name' => 'custom_value',
                'type' => 'uint8',
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
    /** @brief Original mode: uint8; scalar. */
    public mixed $mode;
    /** @brief Original custom_value: uint8; scalar. */
    public mixed $custom_value;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->mode = array_key_exists('mode', $values) ? $values['mode'] : 0;
        $this->custom_value = array_key_exists('custom_value', $values) ? $values['custom_value'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Scout_msgsMsgScoutLightState', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Scout_msgsMsgScoutLightState', $bytes);
    }
}
/** @brief Own every original scout_msgs/msg/ScoutRCState field. */
final class Ros2Scout_msgsMsgScoutRCState
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Scout_msgsMsgScoutRCState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ba13e4c728041d14352c021fe5c1c5eee5d531c84ac64c61d944d6192dcd4298',
        'minimum' => 9,
        'maximum' => 9,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'scout_msgs/msg/ScoutRCState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'swa',
                'type' => 'uint8',
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
            [
                'name' => 'swb',
                'type' => 'uint8',
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
            [
                'name' => 'swc',
                'type' => 'uint8',
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
            [
                'name' => 'swd',
                'type' => 'uint8',
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
            [
                'name' => 'stick_right_v',
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
            [
                'name' => 'stick_right_h',
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
            [
                'name' => 'stick_left_v',
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
            [
                'name' => 'stick_left_h',
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
            [
                'name' => 'var_a',
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
    /** @brief Original swa: uint8; scalar. */
    public mixed $swa;
    /** @brief Original swb: uint8; scalar. */
    public mixed $swb;
    /** @brief Original swc: uint8; scalar. */
    public mixed $swc;
    /** @brief Original swd: uint8; scalar. */
    public mixed $swd;
    /** @brief Original stick_right_v: int8; scalar. */
    public mixed $stick_right_v;
    /** @brief Original stick_right_h: int8; scalar. */
    public mixed $stick_right_h;
    /** @brief Original stick_left_v: int8; scalar. */
    public mixed $stick_left_v;
    /** @brief Original stick_left_h: int8; scalar. */
    public mixed $stick_left_h;
    /** @brief Original var_a: int8; scalar. */
    public mixed $var_a;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->swa = array_key_exists('swa', $values) ? $values['swa'] : 0;
        $this->swb = array_key_exists('swb', $values) ? $values['swb'] : 0;
        $this->swc = array_key_exists('swc', $values) ? $values['swc'] : 0;
        $this->swd = array_key_exists('swd', $values) ? $values['swd'] : 0;
        $this->stick_right_v = array_key_exists('stick_right_v', $values) ? $values['stick_right_v'] : 0;
        $this->stick_right_h = array_key_exists('stick_right_h', $values) ? $values['stick_right_h'] : 0;
        $this->stick_left_v = array_key_exists('stick_left_v', $values) ? $values['stick_left_v'] : 0;
        $this->stick_left_h = array_key_exists('stick_left_h', $values) ? $values['stick_left_h'] : 0;
        $this->var_a = array_key_exists('var_a', $values) ? $values['var_a'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Scout_msgsMsgScoutRCState', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Scout_msgsMsgScoutRCState', $bytes);
    }
}
/** @brief Own every original scout_msgs/msg/ScoutStatus field. */
final class Ros2Scout_msgsMsgScoutStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Scout_msgsMsgScoutStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_75db4db1dcc07210d543b8e6bd6b6a7aadbf23db8043ff372a3b224c5c235b86',
        'minimum' => 121,
        'maximum' => 249,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'scout_msgs/msg/ScoutStatus',
        'constants' => [
            'MOTOR_ID_FRONT_RIGHT' => 0,
            'MOTOR_ID_FRONT_LEFT' => 1,
            'MOTOR_ID_REAR_RIGHT' => 2,
            'MOTOR_ID_REAR_LEFT' => 3,
            'LIGHT_ID_FRONT' => 0,
            'LIGHT_ID_REAR' => 1,
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
                'name' => 'linear_velocity',
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
                'name' => 'angular_velocity',
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
                'name' => 'vehicle_state',
                'type' => 'uint8',
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
            [
                'name' => 'control_mode',
                'type' => 'uint8',
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
            [
                'name' => 'error_code',
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
                'name' => 'battery_voltage',
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
                'name' => 'actuator_states',
                'type' => 'Ros2Scout_msgsMsgScoutActuatorState',
                'array' => 'array',
                'count' => 4,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 19,
            ],
            [
                'name' => 'light_control_enabled',
                'type' => 'bool',
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
            [
                'name' => 'front_light_state',
                'type' => 'Ros2Scout_msgsMsgScoutLightState',
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
                'name' => 'rear_light_state',
                'type' => 'Ros2Scout_msgsMsgScoutLightState',
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
        ],
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar. */
    public mixed $header;
    /** @brief Original linear_velocity: float64; scalar. */
    public mixed $linear_velocity;
    /** @brief Original angular_velocity: float64; scalar. */
    public mixed $angular_velocity;
    /** @brief Original vehicle_state: uint8; scalar. */
    public mixed $vehicle_state;
    /** @brief Original control_mode: uint8; scalar. */
    public mixed $control_mode;
    /** @brief Original error_code: uint16; scalar. */
    public mixed $error_code;
    /** @brief Original battery_voltage: float64; scalar. */
    public mixed $battery_voltage;
    /** @brief Original actuator_states: Ros2Scout_msgsMsgScoutActuatorState; array. */
    public mixed $actuator_states;
    /** @brief Original light_control_enabled: bool; scalar. */
    public mixed $light_control_enabled;
    /** @brief Original front_light_state: Ros2Scout_msgsMsgScoutLightState; scalar. */
    public mixed $front_light_state;
    /** @brief Original rear_light_state: Ros2Scout_msgsMsgScoutLightState; scalar. */
    public mixed $rear_light_state;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros2Std_msgsMsgHeader();
        $this->linear_velocity = array_key_exists('linear_velocity', $values) ? $values['linear_velocity'] : 0.0;
        $this->angular_velocity = array_key_exists('angular_velocity', $values) ? $values['angular_velocity'] : 0.0;
        $this->vehicle_state = array_key_exists('vehicle_state', $values) ? $values['vehicle_state'] : 0;
        $this->control_mode = array_key_exists('control_mode', $values) ? $values['control_mode'] : 0;
        $this->error_code = array_key_exists('error_code', $values) ? $values['error_code'] : 0;
        $this->battery_voltage = array_key_exists('battery_voltage', $values) ? $values['battery_voltage'] : 0.0;
        $this->actuator_states = array_key_exists('actuator_states', $values) ? $values['actuator_states'] : array_map(static fn() => new Ros2Scout_msgsMsgScoutActuatorState(), range(1, 4));
        $this->light_control_enabled = array_key_exists('light_control_enabled', $values) ? $values['light_control_enabled'] : false;
        $this->front_light_state = array_key_exists('front_light_state', $values) ? $values['front_light_state'] : new Ros2Scout_msgsMsgScoutLightState();
        $this->rear_light_state = array_key_exists('rear_light_state', $values) ? $values['rear_light_state'] : new Ros2Scout_msgsMsgScoutLightState();
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Scout_msgsMsgScoutStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Scout_msgsMsgScoutStatus', $bytes);
    }
}
/** @brief Resolve only this exact complete source catalog. */
final class Catalog
{
    /** @brief Borrow the one immutable full descriptor registry. @return Wire Complete catalog codec. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) {
            $wire = new Wire([
                'Ros2Builtin_interfacesMsgTime' =>
                    Ros2Builtin_interfacesMsgTime::SCHEMA + [
                        'class' => Ros2Builtin_interfacesMsgTime::class,
                    ],
                'Ros2Geometry_msgsMsgPoint' =>
                    Ros2Geometry_msgsMsgPoint::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPoint::class,
                    ],
                'Ros2Geometry_msgsMsgQuaternion' =>
                    Ros2Geometry_msgsMsgQuaternion::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgQuaternion::class,
                    ],
                'Ros2Geometry_msgsMsgPose' =>
                    Ros2Geometry_msgsMsgPose::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPose::class,
                    ],
                'Ros2Geometry_msgsMsgPoseWithCovariance' =>
                    Ros2Geometry_msgsMsgPoseWithCovariance::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPoseWithCovariance::class,
                    ],
                'Ros2Geometry_msgsMsgVector3' =>
                    Ros2Geometry_msgsMsgVector3::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgVector3::class,
                    ],
                'Ros2Geometry_msgsMsgTwist' =>
                    Ros2Geometry_msgsMsgTwist::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgTwist::class,
                    ],
                'Ros2Geometry_msgsMsgTwistWithCovariance' =>
                    Ros2Geometry_msgsMsgTwistWithCovariance::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgTwistWithCovariance::class,
                    ],
                'Ros2Std_msgsMsgHeader' =>
                    Ros2Std_msgsMsgHeader::SCHEMA + [
                        'class' => Ros2Std_msgsMsgHeader::class,
                    ],
                'Ros2Nav_msgsMsgOdometry' =>
                    Ros2Nav_msgsMsgOdometry::SCHEMA + [
                        'class' => Ros2Nav_msgsMsgOdometry::class,
                    ],
                'Ros2Scout_msgsMsgScoutActuatorState' =>
                    Ros2Scout_msgsMsgScoutActuatorState::SCHEMA + [
                        'class' => Ros2Scout_msgsMsgScoutActuatorState::class,
                    ],
                'Ros2Scout_msgsMsgScoutLightCmd' =>
                    Ros2Scout_msgsMsgScoutLightCmd::SCHEMA + [
                        'class' => Ros2Scout_msgsMsgScoutLightCmd::class,
                    ],
                'Ros2Scout_msgsMsgScoutLightState' =>
                    Ros2Scout_msgsMsgScoutLightState::SCHEMA + [
                        'class' => Ros2Scout_msgsMsgScoutLightState::class,
                    ],
                'Ros2Scout_msgsMsgScoutRCState' =>
                    Ros2Scout_msgsMsgScoutRCState::SCHEMA + [
                        'class' => Ros2Scout_msgsMsgScoutRCState::class,
                    ],
                'Ros2Scout_msgsMsgScoutStatus' =>
                    Ros2Scout_msgsMsgScoutStatus::SCHEMA + [
                        'class' => Ros2Scout_msgsMsgScoutStatus::class,
                    ],
            ]);
        }
        return $wire;
    }
}
