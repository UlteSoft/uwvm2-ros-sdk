<?php
declare(strict_types=1);
namespace Uwvm\Ubtech\Ros2Main;
/** @file records.php
 * @brief All 8 complete original vendor ROS 2 record classes.
 * @details Every native field, bound, default and identity is retained.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @brief Complete builtin_interfaces/msg/Time owning value. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Original full canonical descriptor and identities. */
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
                'element_minimum' => 4
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
                'element_minimum' => 4
            ]
        ]
    ];
    /** @brief Original sec field; type int32. */
    public mixed $sec;
    /** @brief Original nanosec field; type uint32. */
    public mixed $nanosec;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->sec = array_key_exists('sec', $values)
            ? $values['sec']
            : 0;
        $this->nanosec = array_key_exists('nanosec', $values)
            ? $values['nanosec']
            : Word::fromDecimal('0', 4, false);
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/Point owning value. */
final class Ros2Geometry_msgsMsgPoint
{
    /** @brief Original full canonical descriptor and identities. */
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
                'element_minimum' => 8
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
                'element_minimum' => 8
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
                'element_minimum' => 8
            ]
        ]
    ];
    /** @brief Original x field; type float64. */
    public mixed $x;
    /** @brief Original y field; type float64. */
    public mixed $y;
    /** @brief Original z field; type float64. */
    public mixed $z;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->x = array_key_exists('x', $values)
            ? $values['x']
            : 0;
        $this->y = array_key_exists('y', $values)
            ? $values['y']
            : 0;
        $this->z = array_key_exists('z', $values)
            ? $values['z']
            : 0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoint', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoint', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/Quaternion owning value. */
final class Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Original full canonical descriptor and identities. */
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
                'default' => 0.0
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
                'default' => 0.0
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
                'default' => 0.0
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
                'default' => 1.0
            ]
        ]
    ];
    /** @brief Original x field; type float64. */
    public mixed $x;
    /** @brief Original y field; type float64. */
    public mixed $y;
    /** @brief Original z field; type float64. */
    public mixed $z;
    /** @brief Original w field; type float64. */
    public mixed $w;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->x = array_key_exists('x', $values)
            ? $values['x']
            : 0.0;
        $this->y = array_key_exists('y', $values)
            ? $values['y']
            : 0.0;
        $this->z = array_key_exists('z', $values)
            ? $values['z']
            : 0.0;
        $this->w = array_key_exists('w', $values)
            ? $values['w']
            : 1.0;
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgQuaternion', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgQuaternion', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/Pose owning value. */
final class Ros2Geometry_msgsMsgPose
{
    /** @brief Original full canonical descriptor and identities. */
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
                'element_minimum' => 24
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
                'element_minimum' => 32
            ]
        ]
    ];
    /** @brief Original position field; type Ros2Geometry_msgsMsgPoint. */
    public mixed $position;
    /** @brief Original orientation field; type Ros2Geometry_msgsMsgQuaternion. */
    public mixed $orientation;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->position = array_key_exists('position', $values)
            ? $values['position']
            : new Ros2Geometry_msgsMsgPoint();
        $this->orientation = array_key_exists('orientation', $values)
            ? $values['orientation']
            : new Ros2Geometry_msgsMsgQuaternion();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPose', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPose', $bytes);
    }
}

/** @brief Complete std_msgs/msg/Header owning value. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Original full canonical descriptor and identities. */
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
                'element_minimum' => 8
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
                'element_minimum' => 4
            ]
        ]
    ];
    /** @brief Original stamp field; type Ros2Builtin_interfacesMsgTime. */
    public mixed $stamp;
    /** @brief Original frame_id field; type string. */
    public mixed $frame_id;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->stamp = array_key_exists('stamp', $values)
            ? $values['stamp']
            : new Ros2Builtin_interfacesMsgTime();
        $this->frame_id = array_key_exists('frame_id', $values)
            ? $values['frame_id']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes);
    }
}

/** @brief Complete geometry_msgs/msg/PoseStamped owning value. */
final class Ros2Geometry_msgsMsgPoseStamped
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPoseStamped',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2',
        'minimum' => 68,
        'maximum' => 196,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/PoseStamped',
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
                'element_minimum' => 12
            ],
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
                'element_minimum' => 56
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Std_msgsMsgHeader. */
    public mixed $header;
    /** @brief Original pose field; type Ros2Geometry_msgsMsgPose. */
    public mixed $pose;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros2Std_msgsMsgHeader();
        $this->pose = array_key_exists('pose', $values)
            ? $values['pose']
            : new Ros2Geometry_msgsMsgPose();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoseStamped', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoseStamped', $bytes);
    }
}

/** @brief Complete grab_demo_msgs/msg/GraspCandidate owning value. */
final class Ros2Grab_demo_msgsMsgGraspCandidate
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Grab_demo_msgsMsgGraspCandidate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37',
        'minimum' => 92,
        'maximum' => 604,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'grab_demo_msgs/msg/GraspCandidate',
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
                'element_minimum' => 12
            ],
            [
                'name' => 'pose',
                'type' => 'Ros2Geometry_msgsMsgPoseStamped',
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
                'element_minimum' => 68
            ],
            [
                'name' => 'group_name',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'confidence',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'object_class',
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
                'element_minimum' => 4
            ]
        ]
    ];
    /** @brief Original header field; type Ros2Std_msgsMsgHeader. */
    public mixed $header;
    /** @brief Original pose field; type Ros2Geometry_msgsMsgPoseStamped. */
    public mixed $pose;
    /** @brief Original group_name field; type string. */
    public mixed $group_name;
    /** @brief Original confidence field; type float32. */
    public mixed $confidence;
    /** @brief Original object_class field; type string. */
    public mixed $object_class;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->header = array_key_exists('header', $values)
            ? $values['header']
            : new Ros2Std_msgsMsgHeader();
        $this->pose = array_key_exists('pose', $values)
            ? $values['pose']
            : new Ros2Geometry_msgsMsgPoseStamped();
        $this->group_name = array_key_exists('group_name', $values)
            ? $values['group_name']
            : '';
        $this->confidence = array_key_exists('confidence', $values)
            ? $values['confidence']
            : 0;
        $this->object_class = array_key_exists('object_class', $values)
            ? $values['object_class']
            : '';
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Grab_demo_msgsMsgGraspCandidate', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Grab_demo_msgsMsgGraspCandidate', $bytes);
    }
}

/** @brief Complete grab_demo_msgs/msg/IKRequest owning value. */
final class Ros2Grab_demo_msgsMsgIKRequest
{
    /** @brief Original full canonical descriptor and identities. */
    public const SCHEMA = [
        'symbol' => 'Ros2Grab_demo_msgsMsgIKRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa',
        'minimum' => 64,
        'maximum' => 320,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'grab_demo_msgs/msg/IKRequest',
        'constants' => [],
        'fields' => [
            [
                'name' => 'group_name',
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
                'element_minimum' => 4
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
                'element_minimum' => 4
            ],
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
                'element_minimum' => 24
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
                'element_minimum' => 32
            ]
        ]
    ];
    /** @brief Original group_name field; type string. */
    public mixed $group_name;
    /** @brief Original frame_id field; type string. */
    public mixed $frame_id;
    /** @brief Original position field; type Ros2Geometry_msgsMsgPoint. */
    public mixed $position;
    /** @brief Original orientation field; type Ros2Geometry_msgsMsgQuaternion. */
    public mixed $orientation;
    /**
     * @brief Initialize complete independent defaults and explicit native fields.
     * @param array $values Exact original field names; unknown names fail.
     */
    public function __construct(array $values = [])
    {
        $names = array_column(self::SCHEMA['fields'], 'name');
        if (array_diff(array_keys($values), $names))
        {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->group_name = array_key_exists('group_name', $values)
            ? $values['group_name']
            : '';
        $this->frame_id = array_key_exists('frame_id', $values)
            ? $values['frame_id']
            : '';
        $this->position = array_key_exists('position', $values)
            ? $values['position']
            : new Ros2Geometry_msgsMsgPoint();
        $this->orientation = array_key_exists('orientation', $values)
            ? $values['orientation']
            : new Ros2Geometry_msgsMsgQuaternion();
    }

    /**
     * @brief Validate and encode every original field.
     * @return string Owned complete canonical bytes.
     */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Grab_demo_msgsMsgIKRequest', $this);
    }

    /**
     * @brief Decode exactly one complete canonical value.
     * @param string $bytes Original complete canonical wire.
     * @return self Fresh complete original record.
     */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Grab_demo_msgsMsgIKRequest', $bytes);
    }
}

/** @brief Complete original record codecs and interface component roles. */
final class Catalog
{
    /** @brief Complete original interface identities and components. */
    public const INTERFACES = [
        'builtin_interfaces/msg/Time' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Builtin_interfacesMsgTime'
            ]
        ],
        'geometry_msgs/msg/Point' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgPoint'
            ]
        ],
        'geometry_msgs/msg/Pose' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgPose'
            ]
        ],
        'geometry_msgs/msg/PoseStamped' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgPoseStamped'
            ]
        ],
        'geometry_msgs/msg/Quaternion' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Geometry_msgsMsgQuaternion'
            ]
        ],
        'grab_demo_msgs/msg/GraspCandidate' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Grab_demo_msgsMsgGraspCandidate'
            ]
        ],
        'grab_demo_msgs/msg/IKRequest' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa',
            'registered' => true,
            'components' => [
                'message' => 'Ros2Grab_demo_msgsMsgIKRequest'
            ]
        ],
        'std_msgs/msg/Header' => [
            'kind' => 'message',
            'native_identity' => null,
            'codec_identity' => 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
            'registered' => false,
            'components' => [
                'message' => 'Ros2Std_msgsMsgHeader'
            ]
        ]
    ];
    /**
     * @brief Return the local full-record canonical registry.
     * @return Wire Complete ordinary namespace registry.
     */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null)
        {
            $wire = new Wire([
                'Ros2Builtin_interfacesMsgTime' =>
                    Ros2Builtin_interfacesMsgTime::SCHEMA + [
                        'class' => Ros2Builtin_interfacesMsgTime::class
                    ],
                'Ros2Geometry_msgsMsgPoint' =>
                    Ros2Geometry_msgsMsgPoint::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPoint::class
                    ],
                'Ros2Geometry_msgsMsgQuaternion' =>
                    Ros2Geometry_msgsMsgQuaternion::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgQuaternion::class
                    ],
                'Ros2Geometry_msgsMsgPose' =>
                    Ros2Geometry_msgsMsgPose::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPose::class
                    ],
                'Ros2Std_msgsMsgHeader' =>
                    Ros2Std_msgsMsgHeader::SCHEMA + [
                        'class' => Ros2Std_msgsMsgHeader::class
                    ],
                'Ros2Geometry_msgsMsgPoseStamped' =>
                    Ros2Geometry_msgsMsgPoseStamped::SCHEMA + [
                        'class' => Ros2Geometry_msgsMsgPoseStamped::class
                    ],
                'Ros2Grab_demo_msgsMsgGraspCandidate' =>
                    Ros2Grab_demo_msgsMsgGraspCandidate::SCHEMA + [
                        'class' => Ros2Grab_demo_msgsMsgGraspCandidate::class
                    ],
                'Ros2Grab_demo_msgsMsgIKRequest' =>
                    Ros2Grab_demo_msgsMsgIKRequest::SCHEMA + [
                        'class' => Ros2Grab_demo_msgsMsgIKRequest::class
                    ],
            ]);
        }
        return $wire;
    }
}
