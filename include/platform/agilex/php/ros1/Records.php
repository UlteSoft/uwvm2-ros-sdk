<?php
declare(strict_types=1);
namespace Uwvm\Agilex\Ros1;
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @file Records.php
 * @brief Complete original agilex owning classes using the shared PHP codec.
 * @details Full-width words remain exact on PHP32 and PHP64; no native registration is inferred. */
/** @brief Own every original geometry_msgs/Point field. */
final class Ros1Geometry_msgsPoint
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsPoint',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/Point',
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
        return Catalog::wire()->encode('Ros1Geometry_msgsPoint', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsPoint', $bytes);
    }
}
/** @brief Own every original geometry_msgs/Quaternion field. */
final class Ros1Geometry_msgsQuaternion
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsQuaternion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/Quaternion',
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
        $this->w = array_key_exists('w', $values) ? $values['w'] : 0.0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Geometry_msgsQuaternion', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsQuaternion', $bytes);
    }
}
/** @brief Own every original geometry_msgs/Pose field. */
final class Ros1Geometry_msgsPose
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsPose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/Pose',
        'constants' => [],
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
    /** @brief Original position: Ros1Geometry_msgsPoint; scalar. */
    public mixed $position;
    /** @brief Original orientation: Ros1Geometry_msgsQuaternion; scalar. */
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
        $this->position = array_key_exists('position', $values) ? $values['position'] : new Ros1Geometry_msgsPoint();
        $this->orientation = array_key_exists('orientation', $values) ? $values['orientation'] : new Ros1Geometry_msgsQuaternion();
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Geometry_msgsPose', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsPose', $bytes);
    }
}
/** @brief Own every original geometry_msgs/PoseWithCovariance field. */
final class Ros1Geometry_msgsPoseWithCovariance
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsPoseWithCovariance',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf',
        'minimum' => 344,
        'maximum' => 344,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/PoseWithCovariance',
        'constants' => [],
        'fields' => [
            [
                'name' => 'pose',
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
    /** @brief Original pose: Ros1Geometry_msgsPose; scalar. */
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
        $this->pose = array_key_exists('pose', $values) ? $values['pose'] : new Ros1Geometry_msgsPose();
        $this->covariance = array_key_exists('covariance', $values) ? $values['covariance'] : array_fill(0, 36, 0.0);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Geometry_msgsPoseWithCovariance', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsPoseWithCovariance', $bytes);
    }
}
/** @brief Own every original geometry_msgs/Vector3 field. */
final class Ros1Geometry_msgsVector3
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsVector3',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/Vector3',
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
        return Catalog::wire()->encode('Ros1Geometry_msgsVector3', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsVector3', $bytes);
    }
}
/** @brief Own every original geometry_msgs/Twist field. */
final class Ros1Geometry_msgsTwist
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsTwist',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/Twist',
        'constants' => [],
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
    /** @brief Original linear: Ros1Geometry_msgsVector3; scalar. */
    public mixed $linear;
    /** @brief Original angular: Ros1Geometry_msgsVector3; scalar. */
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
        $this->linear = array_key_exists('linear', $values) ? $values['linear'] : new Ros1Geometry_msgsVector3();
        $this->angular = array_key_exists('angular', $values) ? $values['angular'] : new Ros1Geometry_msgsVector3();
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Geometry_msgsTwist', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsTwist', $bytes);
    }
}
/** @brief Own every original geometry_msgs/TwistWithCovariance field. */
final class Ros1Geometry_msgsTwistWithCovariance
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsTwistWithCovariance',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf',
        'minimum' => 336,
        'maximum' => 336,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/TwistWithCovariance',
        'constants' => [],
        'fields' => [
            [
                'name' => 'twist',
                'type' => 'Ros1Geometry_msgsTwist',
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
    /** @brief Original twist: Ros1Geometry_msgsTwist; scalar. */
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
        $this->twist = array_key_exists('twist', $values) ? $values['twist'] : new Ros1Geometry_msgsTwist();
        $this->covariance = array_key_exists('covariance', $values) ? $values['covariance'] : array_fill(0, 36, 0.0);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Geometry_msgsTwistWithCovariance', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsTwistWithCovariance', $bytes);
    }
}
/** @brief Own every original time field. */
final class Ros1Time
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Time',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'time',
        'constants' => [],
        'fields' => [
            [
                'name' => 'sec',
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
                'name' => 'nsec',
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
    /** @brief Original sec: uint32; scalar. */
    public mixed $sec;
    /** @brief Original nsec: uint32; scalar. */
    public mixed $nsec;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->sec = array_key_exists('sec', $values) ? $values['sec'] : Word::fromDecimal('0', 4, false);
        $this->nsec = array_key_exists('nsec', $values) ? $values['nsec'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Time', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Time', $bytes);
    }
}
/** @brief Own every original std_msgs/Header field. */
final class Ros1Std_msgsHeader
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Std_msgsHeader',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435',
        'minimum' => 16,
        'maximum' => 144,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'std_msgs/Header',
        'constants' => [],
        'fields' => [
            [
                'name' => 'seq',
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
                'name' => 'stamp',
                'type' => 'Ros1Time',
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
    /** @brief Original seq: uint32; scalar. */
    public mixed $seq;
    /** @brief Original stamp: Ros1Time; scalar. */
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
        $this->seq = array_key_exists('seq', $values) ? $values['seq'] : Word::fromDecimal('0', 4, false);
        $this->stamp = array_key_exists('stamp', $values) ? $values['stamp'] : new Ros1Time();
        $this->frame_id = array_key_exists('frame_id', $values) ? $values['frame_id'] : '';
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Std_msgsHeader', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Std_msgsHeader', $bytes);
    }
}
/** @brief Own every original nav_msgs/Odometry field. */
final class Ros1Nav_msgsOdometry
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Nav_msgsOdometry',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca',
        'minimum' => 700,
        'maximum' => 956,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'nav_msgs/Odometry',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros1Std_msgsHeader',
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
                'element_minimum' => 16,
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
                'type' => 'Ros1Geometry_msgsPoseWithCovariance',
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
                'type' => 'Ros1Geometry_msgsTwistWithCovariance',
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
    /** @brief Original header: Ros1Std_msgsHeader; scalar. */
    public mixed $header;
    /** @brief Original child_frame_id: string; scalar. */
    public mixed $child_frame_id;
    /** @brief Original pose: Ros1Geometry_msgsPoseWithCovariance; scalar. */
    public mixed $pose;
    /** @brief Original twist: Ros1Geometry_msgsTwistWithCovariance; scalar. */
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
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros1Std_msgsHeader();
        $this->child_frame_id = array_key_exists('child_frame_id', $values) ? $values['child_frame_id'] : '';
        $this->pose = array_key_exists('pose', $values) ? $values['pose'] : new Ros1Geometry_msgsPoseWithCovariance();
        $this->twist = array_key_exists('twist', $values) ? $values['twist'] : new Ros1Geometry_msgsTwistWithCovariance();
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Nav_msgsOdometry', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Nav_msgsOdometry', $bytes);
    }
}
/** @brief Own every original scout_msgs/ScoutBmsStatus field. */
final class Ros1Scout_msgsScoutBmsStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Scout_msgsScoutBmsStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95',
        'minimum' => 44,
        'maximum' => 44,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'scout_msgs/ScoutBmsStatus',
        'constants' => [],
        'fields' => [
            [
                'name' => 'SOC',
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
                'name' => 'SOH',
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
                'name' => 'battery_current',
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
                'name' => 'battery_temperature',
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
                'name' => 'Alarm_Status_1',
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
                'name' => 'Alarm_Status_2',
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
                'name' => 'Warning_Status_1',
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
                'name' => 'Warning_Status_2',
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
    /** @brief Original SOC: float64; scalar. */
    public mixed $SOC;
    /** @brief Original SOH: float64; scalar. */
    public mixed $SOH;
    /** @brief Original battery_voltage: float64; scalar. */
    public mixed $battery_voltage;
    /** @brief Original battery_current: float64; scalar. */
    public mixed $battery_current;
    /** @brief Original battery_temperature: float64; scalar. */
    public mixed $battery_temperature;
    /** @brief Original Alarm_Status_1: uint8; scalar. */
    public mixed $Alarm_Status_1;
    /** @brief Original Alarm_Status_2: uint8; scalar. */
    public mixed $Alarm_Status_2;
    /** @brief Original Warning_Status_1: uint8; scalar. */
    public mixed $Warning_Status_1;
    /** @brief Original Warning_Status_2: uint8; scalar. */
    public mixed $Warning_Status_2;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->SOC = array_key_exists('SOC', $values) ? $values['SOC'] : 0.0;
        $this->SOH = array_key_exists('SOH', $values) ? $values['SOH'] : 0.0;
        $this->battery_voltage = array_key_exists('battery_voltage', $values) ? $values['battery_voltage'] : 0.0;
        $this->battery_current = array_key_exists('battery_current', $values) ? $values['battery_current'] : 0.0;
        $this->battery_temperature = array_key_exists('battery_temperature', $values) ? $values['battery_temperature'] : 0.0;
        $this->Alarm_Status_1 = array_key_exists('Alarm_Status_1', $values) ? $values['Alarm_Status_1'] : 0;
        $this->Alarm_Status_2 = array_key_exists('Alarm_Status_2', $values) ? $values['Alarm_Status_2'] : 0;
        $this->Warning_Status_1 = array_key_exists('Warning_Status_1', $values) ? $values['Warning_Status_1'] : 0;
        $this->Warning_Status_2 = array_key_exists('Warning_Status_2', $values) ? $values['Warning_Status_2'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Scout_msgsScoutBmsStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Scout_msgsScoutBmsStatus', $bytes);
    }
}
/** @brief Own every original scout_msgs/ScoutDriverState field. */
final class Ros1Scout_msgsScoutDriverState
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Scout_msgsScoutDriverState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275',
        'minimum' => 17,
        'maximum' => 17,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'scout_msgs/ScoutDriverState',
        'constants' => [],
        'fields' => [
            [
                'name' => 'driver_voltage',
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
                'name' => 'driver_temperature',
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
                'name' => 'driver_state',
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
    /** @brief Original driver_voltage: float64; scalar. */
    public mixed $driver_voltage;
    /** @brief Original driver_temperature: float64; scalar. */
    public mixed $driver_temperature;
    /** @brief Original driver_state: uint8; scalar. */
    public mixed $driver_state;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->driver_voltage = array_key_exists('driver_voltage', $values) ? $values['driver_voltage'] : 0.0;
        $this->driver_temperature = array_key_exists('driver_temperature', $values) ? $values['driver_temperature'] : 0.0;
        $this->driver_state = array_key_exists('driver_state', $values) ? $values['driver_state'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Scout_msgsScoutDriverState', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Scout_msgsScoutDriverState', $bytes);
    }
}
/** @brief Own every original scout_msgs/ScoutLightCmd field. */
final class Ros1Scout_msgsScoutLightCmd
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Scout_msgsScoutLightCmd',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'scout_msgs/ScoutLightCmd',
        'constants' => [
            'LIGHT_CONST_OFF' => 0,
            'LIGHT_CONST_ON' => 1,
            'LIGHT_BREATH' => 2,
            'LIGHT_CUSTOM' => 3,
        ],
        'fields' => [
            [
                'name' => 'enable_cmd_light_control',
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
    /** @brief Original enable_cmd_light_control: bool; scalar. */
    public mixed $enable_cmd_light_control;
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
        $this->enable_cmd_light_control = array_key_exists('enable_cmd_light_control', $values) ? $values['enable_cmd_light_control'] : false;
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
        return Catalog::wire()->encode('Ros1Scout_msgsScoutLightCmd', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Scout_msgsScoutLightCmd', $bytes);
    }
}
/** @brief Own every original scout_msgs/ScoutLightState field. */
final class Ros1Scout_msgsScoutLightState
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Scout_msgsScoutLightState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'scout_msgs/ScoutLightState',
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
        return Catalog::wire()->encode('Ros1Scout_msgsScoutLightState', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Scout_msgsScoutLightState', $bytes);
    }
}
/** @brief Own every original scout_msgs/ScoutMotorState field. */
final class Ros1Scout_msgsScoutMotorState
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Scout_msgsScoutMotorState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'scout_msgs/ScoutMotorState',
        'constants' => [],
        'fields' => [
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
                'name' => 'rpm',
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
                'name' => 'temperature',
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
                'name' => 'motor_pose',
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
    /** @brief Original current: float64; scalar. */
    public mixed $current;
    /** @brief Original rpm: float64; scalar. */
    public mixed $rpm;
    /** @brief Original temperature: float64; scalar. */
    public mixed $temperature;
    /** @brief Original motor_pose: float64; scalar. */
    public mixed $motor_pose;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->current = array_key_exists('current', $values) ? $values['current'] : 0.0;
        $this->rpm = array_key_exists('rpm', $values) ? $values['rpm'] : 0.0;
        $this->temperature = array_key_exists('temperature', $values) ? $values['temperature'] : 0.0;
        $this->motor_pose = array_key_exists('motor_pose', $values) ? $values['motor_pose'] : 0.0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Scout_msgsScoutMotorState', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Scout_msgsScoutMotorState', $bytes);
    }
}
/** @brief Own every original scout_msgs/ScoutRsStatus field. */
final class Ros1Scout_msgsScoutRsStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Scout_msgsScoutRsStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de',
        'minimum' => 25,
        'maximum' => 153,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'scout_msgs/ScoutRsStatus',
        'constants' => [],
        'fields' => [
            [
                'name' => 'header',
                'type' => 'Ros1Std_msgsHeader',
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
                'element_minimum' => 16,
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
                'name' => 'var_a',
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
    /** @brief Original header: Ros1Std_msgsHeader; scalar. */
    public mixed $header;
    /** @brief Original stick_left_h: int8; scalar. */
    public mixed $stick_left_h;
    /** @brief Original stick_left_v: int8; scalar. */
    public mixed $stick_left_v;
    /** @brief Original stick_right_h: int8; scalar. */
    public mixed $stick_right_h;
    /** @brief Original stick_right_v: int8; scalar. */
    public mixed $stick_right_v;
    /** @brief Original swa: uint8; scalar. */
    public mixed $swa;
    /** @brief Original swb: uint8; scalar. */
    public mixed $swb;
    /** @brief Original swc: uint8; scalar. */
    public mixed $swc;
    /** @brief Original swd: uint8; scalar. */
    public mixed $swd;
    /** @brief Original var_a: uint8; scalar. */
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
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros1Std_msgsHeader();
        $this->stick_left_h = array_key_exists('stick_left_h', $values) ? $values['stick_left_h'] : 0;
        $this->stick_left_v = array_key_exists('stick_left_v', $values) ? $values['stick_left_v'] : 0;
        $this->stick_right_h = array_key_exists('stick_right_h', $values) ? $values['stick_right_h'] : 0;
        $this->stick_right_v = array_key_exists('stick_right_v', $values) ? $values['stick_right_v'] : 0;
        $this->swa = array_key_exists('swa', $values) ? $values['swa'] : 0;
        $this->swb = array_key_exists('swb', $values) ? $values['swb'] : 0;
        $this->swc = array_key_exists('swc', $values) ? $values['swc'] : 0;
        $this->swd = array_key_exists('swd', $values) ? $values['swd'] : 0;
        $this->var_a = array_key_exists('var_a', $values) ? $values['var_a'] : 0;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Scout_msgsScoutRsStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Scout_msgsScoutRsStatus', $bytes);
    }
}
/** @brief Own every original scout_msgs/ScoutStatus field. */
final class Ros1Scout_msgsScoutStatus
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros1Scout_msgsScoutStatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2',
        'minimum' => 253,
        'maximum' => 381,
        'semantics' => '',
        'ros_version' => 1,
        'native_type' => 'scout_msgs/ScoutStatus',
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
                'type' => 'Ros1Std_msgsHeader',
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
                'element_minimum' => 16,
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
                'name' => 'lateral_velocity',
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
                'name' => 'base_state',
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
                'name' => 'fault_code',
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
                'name' => 'motor_states',
                'type' => 'Ros1Scout_msgsScoutMotorState',
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
                'element_minimum' => 32,
            ],
            [
                'name' => 'driver_states',
                'type' => 'Ros1Scout_msgsScoutDriverState',
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
                'element_minimum' => 17,
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
                'type' => 'Ros1Scout_msgsScoutLightState',
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
                'type' => 'Ros1Scout_msgsScoutLightState',
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
    /** @brief Original header: Ros1Std_msgsHeader; scalar. */
    public mixed $header;
    /** @brief Original linear_velocity: float64; scalar. */
    public mixed $linear_velocity;
    /** @brief Original angular_velocity: float64; scalar. */
    public mixed $angular_velocity;
    /** @brief Original lateral_velocity: float64; scalar. */
    public mixed $lateral_velocity;
    /** @brief Original base_state: uint8; scalar. */
    public mixed $base_state;
    /** @brief Original control_mode: uint8; scalar. */
    public mixed $control_mode;
    /** @brief Original fault_code: uint16; scalar. */
    public mixed $fault_code;
    /** @brief Original battery_voltage: float64; scalar. */
    public mixed $battery_voltage;
    /** @brief Original motor_states: Ros1Scout_msgsScoutMotorState; array. */
    public mixed $motor_states;
    /** @brief Original driver_states: Ros1Scout_msgsScoutDriverState; array. */
    public mixed $driver_states;
    /** @brief Original light_control_enabled: bool; scalar. */
    public mixed $light_control_enabled;
    /** @brief Original front_light_state: Ros1Scout_msgsScoutLightState; scalar. */
    public mixed $front_light_state;
    /** @brief Original rear_light_state: Ros1Scout_msgsScoutLightState; scalar. */
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
        $this->header = array_key_exists('header', $values) ? $values['header'] : new Ros1Std_msgsHeader();
        $this->linear_velocity = array_key_exists('linear_velocity', $values) ? $values['linear_velocity'] : 0.0;
        $this->angular_velocity = array_key_exists('angular_velocity', $values) ? $values['angular_velocity'] : 0.0;
        $this->lateral_velocity = array_key_exists('lateral_velocity', $values) ? $values['lateral_velocity'] : 0.0;
        $this->base_state = array_key_exists('base_state', $values) ? $values['base_state'] : 0;
        $this->control_mode = array_key_exists('control_mode', $values) ? $values['control_mode'] : 0;
        $this->fault_code = array_key_exists('fault_code', $values) ? $values['fault_code'] : 0;
        $this->battery_voltage = array_key_exists('battery_voltage', $values) ? $values['battery_voltage'] : 0.0;
        $this->motor_states = array_key_exists('motor_states', $values) ? $values['motor_states'] : array_map(static fn() => new Ros1Scout_msgsScoutMotorState(), range(1, 4));
        $this->driver_states = array_key_exists('driver_states', $values) ? $values['driver_states'] : array_map(static fn() => new Ros1Scout_msgsScoutDriverState(), range(1, 4));
        $this->light_control_enabled = array_key_exists('light_control_enabled', $values) ? $values['light_control_enabled'] : false;
        $this->front_light_state = array_key_exists('front_light_state', $values) ? $values['front_light_state'] : new Ros1Scout_msgsScoutLightState();
        $this->rear_light_state = array_key_exists('rear_light_state', $values) ? $values['rear_light_state'] : new Ros1Scout_msgsScoutLightState();
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Scout_msgsScoutStatus', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Scout_msgsScoutStatus', $bytes);
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
                'Ros1Geometry_msgsPoint' =>
                    Ros1Geometry_msgsPoint::SCHEMA + [
                        'class' => Ros1Geometry_msgsPoint::class,
                    ],
                'Ros1Geometry_msgsQuaternion' =>
                    Ros1Geometry_msgsQuaternion::SCHEMA + [
                        'class' => Ros1Geometry_msgsQuaternion::class,
                    ],
                'Ros1Geometry_msgsPose' =>
                    Ros1Geometry_msgsPose::SCHEMA + [
                        'class' => Ros1Geometry_msgsPose::class,
                    ],
                'Ros1Geometry_msgsPoseWithCovariance' =>
                    Ros1Geometry_msgsPoseWithCovariance::SCHEMA + [
                        'class' => Ros1Geometry_msgsPoseWithCovariance::class,
                    ],
                'Ros1Geometry_msgsVector3' =>
                    Ros1Geometry_msgsVector3::SCHEMA + [
                        'class' => Ros1Geometry_msgsVector3::class,
                    ],
                'Ros1Geometry_msgsTwist' =>
                    Ros1Geometry_msgsTwist::SCHEMA + [
                        'class' => Ros1Geometry_msgsTwist::class,
                    ],
                'Ros1Geometry_msgsTwistWithCovariance' =>
                    Ros1Geometry_msgsTwistWithCovariance::SCHEMA + [
                        'class' => Ros1Geometry_msgsTwistWithCovariance::class,
                    ],
                'Ros1Time' =>
                    Ros1Time::SCHEMA + [
                        'class' => Ros1Time::class,
                    ],
                'Ros1Std_msgsHeader' =>
                    Ros1Std_msgsHeader::SCHEMA + [
                        'class' => Ros1Std_msgsHeader::class,
                    ],
                'Ros1Nav_msgsOdometry' =>
                    Ros1Nav_msgsOdometry::SCHEMA + [
                        'class' => Ros1Nav_msgsOdometry::class,
                    ],
                'Ros1Scout_msgsScoutBmsStatus' =>
                    Ros1Scout_msgsScoutBmsStatus::SCHEMA + [
                        'class' => Ros1Scout_msgsScoutBmsStatus::class,
                    ],
                'Ros1Scout_msgsScoutDriverState' =>
                    Ros1Scout_msgsScoutDriverState::SCHEMA + [
                        'class' => Ros1Scout_msgsScoutDriverState::class,
                    ],
                'Ros1Scout_msgsScoutLightCmd' =>
                    Ros1Scout_msgsScoutLightCmd::SCHEMA + [
                        'class' => Ros1Scout_msgsScoutLightCmd::class,
                    ],
                'Ros1Scout_msgsScoutLightState' =>
                    Ros1Scout_msgsScoutLightState::SCHEMA + [
                        'class' => Ros1Scout_msgsScoutLightState::class,
                    ],
                'Ros1Scout_msgsScoutMotorState' =>
                    Ros1Scout_msgsScoutMotorState::SCHEMA + [
                        'class' => Ros1Scout_msgsScoutMotorState::class,
                    ],
                'Ros1Scout_msgsScoutRsStatus' =>
                    Ros1Scout_msgsScoutRsStatus::SCHEMA + [
                        'class' => Ros1Scout_msgsScoutRsStatus::class,
                    ],
                'Ros1Scout_msgsScoutStatus' =>
                    Ros1Scout_msgsScoutStatus::SCHEMA + [
                        'class' => Ros1Scout_msgsScoutStatus::class,
                    ],
            ]);
        }
        return $wire;
    }
}
