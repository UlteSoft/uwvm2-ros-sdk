<?php
declare(strict_types=1);
namespace Uwvm\Ufactory\ros2_master;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own all 2 original builtin_interfaces/msg/Time fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Builtin_interfacesMsgTime',
        'type' => 'builtin_interfaces/msg/Time',
        'ros_version' => 2,
        'native_type' => 'builtin_interfaces/msg/Time',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original sec field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sec;
    /** @brief Original nanosec field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $nanosec;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('sec', $values))
            $this->sec = $values['sec'];
        else
        {
            $this->sec = 0;
        }
        if (array_key_exists('nanosec', $values))
            $this->nanosec = $values['nanosec'];
        else
        {
            $this->nanosec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes);
    }
}

/** @brief Own all 3 original geometry_msgs/msg/Point fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Geometry_msgsMsgPoint
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPoint',
        'type' => 'geometry_msgs/msg/Point',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Point',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoint', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoint', $bytes);
    }
}

/** @brief Own all 4 original geometry_msgs/msg/Quaternion fields.
 * @details 32..32 canonical bytes; independent nested defaults.
 */
final class Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgQuaternion',
        'type' => 'geometry_msgs/msg/Quaternion',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Quaternion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
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
                'native_default' => '0.0',
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
                'native_default' => '0.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8
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
                'element_minimum' => 8
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original x field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original w field; float64 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $w;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 0.0;
        }
        if (array_key_exists('w', $values))
            $this->w = $values['w'];
        else
        {
            $this->w = 1.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgQuaternion', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgQuaternion', $bytes);
    }
}

/** @brief Own all 2 original geometry_msgs/msg/Pose fields.
 * @details 56..56 canonical bytes; independent nested defaults.
 */
final class Ros2Geometry_msgsMsgPose
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPose',
        'type' => 'geometry_msgs/msg/Pose',
        'ros_version' => 2,
        'native_type' => 'geometry_msgs/msg/Pose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original position field; geometry_msgs/msg/Point scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $position;
    /** @brief Original orientation field; geometry_msgs/msg/Quaternion scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $orientation;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('position', $values))
            $this->position = $values['position'];
        else
        {
            $this->position = new Ros2Geometry_msgsMsgPoint();
        }
        if (array_key_exists('orientation', $values))
            $this->orientation = $values['orientation'];
        else
        {
            $this->orientation = new Ros2Geometry_msgsMsgQuaternion();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Geometry_msgsMsgPose', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Geometry_msgsMsgPose', $bytes);
    }
}

/** @brief Own all 2 original std_msgs/msg/Header fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgHeader',
        'type' => 'std_msgs/msg/Header',
        'ros_version' => 2,
        'native_type' => 'std_msgs/msg/Header',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
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
                'string_bound' => 256,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original stamp field; builtin_interfaces/msg/Time scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $stamp;
    /** @brief Original frame_id field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $frame_id;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('stamp', $values))
            $this->stamp = $values['stamp'];
        else
        {
            $this->stamp = new Ros2Builtin_interfacesMsgTime();
        }
        if (array_key_exists('frame_id', $values))
            $this->frame_id = $values['frame_id'];
        else
        {
            $this->frame_id = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes);
    }
}

/** @brief Own all 9 original xarm_msgs/msg/CIOState fields.
 * @details 72..328 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsMsgCIOState
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsMsgCIOState',
        'type' => 'xarm_msgs/msg/CIOState',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/msg/CIOState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_87e50011fee05d07ce49effe9f8fd2be4e5edf3a09a2b3cd735692fea85c2268',
        'minimum' => 72,
        'maximum' => 328,
        'semantics' => '',
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
                'name' => 'state',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'code',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'input_digitals',
                'type' => 'uint16',
                'array' => 'array',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 2
            ],
            [
                'name' => 'output_digitals',
                'type' => 'uint16',
                'array' => 'array',
                'count' => 2,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 2
            ],
            [
                'name' => 'input_analogs',
                'type' => 'float32',
                'array' => 'array',
                'count' => 2,
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
                'name' => 'output_analogs',
                'type' => 'float32',
                'array' => 'array',
                'count' => 2,
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
                'name' => 'input_conf',
                'type' => 'uint8',
                'array' => 'array',
                'count' => 16,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'output_conf',
                'type' => 'uint8',
                'array' => 'array',
                'count' => 16,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original header field; std_msgs/msg/Header scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $header;
    /** @brief Original state field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
    /** @brief Original code field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $code;
    /** @brief Original input_digitals field; uint16 array.
     * @details Active count at most 2; text bound 0 bytes. */
    public mixed $input_digitals;
    /** @brief Original output_digitals field; uint16 array.
     * @details Active count at most 2; text bound 0 bytes. */
    public mixed $output_digitals;
    /** @brief Original input_analogs field; float32 array.
     * @details Active count at most 2; text bound 0 bytes. */
    public mixed $input_analogs;
    /** @brief Original output_analogs field; float32 array.
     * @details Active count at most 2; text bound 0 bytes. */
    public mixed $output_analogs;
    /** @brief Original input_conf field; uint8 array.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $input_conf;
    /** @brief Original output_conf field; uint8 array.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $output_conf;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('header', $values))
            $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('state', $values))
            $this->state = $values['state'];
        else
        {
            $this->state = 0;
        }
        if (array_key_exists('code', $values))
            $this->code = $values['code'];
        else
        {
            $this->code = 0;
        }
        if (array_key_exists('input_digitals', $values))
            $this->input_digitals = $values['input_digitals'];
        else
        {
            $this->input_digitals = [];
            $this->input_digitals[] = 0;
            $this->input_digitals[] = 0;
        }
        if (array_key_exists('output_digitals', $values))
            $this->output_digitals = $values['output_digitals'];
        else
        {
            $this->output_digitals = [];
            $this->output_digitals[] = 0;
            $this->output_digitals[] = 0;
        }
        if (array_key_exists('input_analogs', $values))
            $this->input_analogs = $values['input_analogs'];
        else
        {
            $this->input_analogs = [];
            $this->input_analogs[] = 0.0;
            $this->input_analogs[] = 0.0;
        }
        if (array_key_exists('output_analogs', $values))
            $this->output_analogs = $values['output_analogs'];
        else
        {
            $this->output_analogs = [];
            $this->output_analogs[] = 0.0;
            $this->output_analogs[] = 0.0;
        }
        if (array_key_exists('input_conf', $values))
            $this->input_conf = $values['input_conf'];
        else
        {
            $this->input_conf = [];
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
            $this->input_conf[] = 0;
        }
        if (array_key_exists('output_conf', $values))
            $this->output_conf = $values['output_conf'];
        else
        {
            $this->output_conf = [];
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
            $this->output_conf[] = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsMsgCIOState', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsMsgCIOState', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/msg/IOState fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsMsgIOState
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsMsgIOState',
        'type' => 'xarm_msgs/msg/IOState',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/msg/IOState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8f3e77d7d4c6ac1e49dadd8f4615cb015c028ecf494050a5a6b794d310863dc3',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'digital_1',
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
                'name' => 'digital_2',
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
                'name' => 'analog_1',
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
                'name' => 'analog_2',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original digital_1 field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $digital_1;
    /** @brief Original digital_2 field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $digital_2;
    /** @brief Original analog_1 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $analog_1;
    /** @brief Original analog_2 field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $analog_2;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('digital_1', $values))
            $this->digital_1 = $values['digital_1'];
        else
        {
            $this->digital_1 = 0;
        }
        if (array_key_exists('digital_2', $values))
            $this->digital_2 = $values['digital_2'];
        else
        {
            $this->digital_2 = 0;
        }
        if (array_key_exists('analog_1', $values))
            $this->analog_1 = $values['analog_1'];
        else
        {
            $this->analog_1 = 0.0;
        }
        if (array_key_exists('analog_2', $values))
            $this->analog_2 = $values['analog_2'];
        else
        {
            $this->analog_2 = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsMsgIOState', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsMsgIOState', $bytes);
    }
}

/** @brief Own all 11 original xarm_msgs/msg/RobotMsg fields.
 * @details 78..362 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsMsgRobotMsg
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsMsgRobotMsg',
        'type' => 'xarm_msgs/msg/RobotMsg',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/msg/RobotMsg',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_065254beab3e0439a6fb2965a10d270ca0aef1384523118d04cb39e886841c78',
        'minimum' => 78,
        'maximum' => 362,
        'semantics' => '',
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
                'name' => 'state',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'mode',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'cmdnum',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'mt_brake',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'mt_able',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'err',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'warn',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'angle',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 7,
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
                'name' => 'pose',
                'type' => 'float32',
                'array' => 'array',
                'count' => 6,
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
                'name' => 'offset',
                'type' => 'float32',
                'array' => 'array',
                'count' => 6,
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original header field; std_msgs/msg/Header scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $header;
    /** @brief Original state field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
    /** @brief Original mode field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original cmdnum field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $cmdnum;
    /** @brief Original mt_brake field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mt_brake;
    /** @brief Original mt_able field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mt_able;
    /** @brief Original err field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err;
    /** @brief Original warn field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $warn;
    /** @brief Original angle field; float32 sequence.
     * @details Active count at most 7; text bound 0 bytes. */
    public mixed $angle;
    /** @brief Original pose field; float32 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original offset field; float32 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $offset;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('header', $values))
            $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('state', $values))
            $this->state = $values['state'];
        else
        {
            $this->state = 0;
        }
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('cmdnum', $values))
            $this->cmdnum = $values['cmdnum'];
        else
        {
            $this->cmdnum = 0;
        }
        if (array_key_exists('mt_brake', $values))
            $this->mt_brake = $values['mt_brake'];
        else
        {
            $this->mt_brake = 0;
        }
        if (array_key_exists('mt_able', $values))
            $this->mt_able = $values['mt_able'];
        else
        {
            $this->mt_able = 0;
        }
        if (array_key_exists('err', $values))
            $this->err = $values['err'];
        else
        {
            $this->err = 0;
        }
        if (array_key_exists('warn', $values))
            $this->warn = $values['warn'];
        else
        {
            $this->warn = 0;
        }
        if (array_key_exists('angle', $values))
            $this->angle = $values['angle'];
        else
        {
            $this->angle = [];
        }
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = [];
            $this->pose[] = 0.0;
            $this->pose[] = 0.0;
            $this->pose[] = 0.0;
            $this->pose[] = 0.0;
            $this->pose[] = 0.0;
            $this->pose[] = 0.0;
        }
        if (array_key_exists('offset', $values))
            $this->offset = $values['offset'];
        else
        {
            $this->offset = [];
            $this->offset[] = 0.0;
            $this->offset[] = 0.0;
            $this->offset[] = 0.0;
            $this->offset[] = 0.0;
            $this->offset[] = 0.0;
            $this->offset[] = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsMsgRobotMsg', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsMsgRobotMsg', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/BioGripperCtrl_Request fields.
 * @details 7..7 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvBioGripperCtrl_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvBioGripperCtrl_Request',
        'type' => 'xarm_msgs/srv/BioGripperCtrl_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/BioGripperCtrl_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7eccf0c454f9b64aae93f91d23083b3b5121f540b0d0406142ea7e234a2f634f',
        'minimum' => 7,
        'maximum' => 7,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'speed',
                'type' => 'int16',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 2
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'True',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '5.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original speed field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = true;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 5.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvBioGripperCtrl_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvBioGripperCtrl_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/BioGripperCtrl_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvBioGripperCtrl_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvBioGripperCtrl_Response',
        'type' => 'xarm_msgs/srv/BioGripperCtrl_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/BioGripperCtrl_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c72e0d7eb90ef20e8f7f521346886fc558547a1357a7915058d0e47c238f316a',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvBioGripperCtrl_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvBioGripperCtrl_Response', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/BioGripperEnable_Request fields.
 * @details 6..6 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvBioGripperEnable_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvBioGripperEnable_Request',
        'type' => 'xarm_msgs/srv/BioGripperEnable_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/BioGripperEnable_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_611333734053d9a2c9d3f776be73081c9ddcaaf435d927e1c87ff9b74f12eb43',
        'minimum' => 6,
        'maximum' => 6,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'enable',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '3.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $enable;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('enable', $values))
            $this->enable = $values['enable'];
        else
        {
            $this->enable = false;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = false;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 3.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvBioGripperEnable_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvBioGripperEnable_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/BioGripperEnable_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvBioGripperEnable_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvBioGripperEnable_Response',
        'type' => 'xarm_msgs/srv/BioGripperEnable_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/BioGripperEnable_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_95ffb8f48b2e1bf41855513b3234b6a7b070e0d58d5a07d98fd7de4454034586',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvBioGripperEnable_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvBioGripperEnable_Response', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/srv/Call_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvCall_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvCall_Request',
        'type' => 'xarm_msgs/srv/Call_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/Call_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6646b9fc8c0050e5c56cf918988e8cf8d7c633aabece1be11ec515f1ca2f837d',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvCall_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvCall_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/Call_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvCall_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvCall_Response',
        'type' => 'xarm_msgs/srv/Call_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/Call_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c41e249f4ee21ea39233597918f3204e3a276e70c67b120b164c9cd3852c19da',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvCall_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvCall_Response', $bytes);
    }
}

/** @brief Own all 6 original xarm_msgs/srv/FtCaliLoad_Request fields.
 * @details 21..149 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvFtCaliLoad_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvFtCaliLoad_Request',
        'type' => 'xarm_msgs/srv/FtCaliLoad_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/FtCaliLoad_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c14b8269ccc16d30043f48a086d43bf98eca1e7746ef52be4ba0f9cf392eb2fb',
        'minimum' => 21,
        'maximum' => 149,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'datas',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'association_setting_tcp_load',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'm',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '0.325',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'x',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-17.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'y',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '9.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'z',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '11.8',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original datas field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $datas;
    /** @brief Original association_setting_tcp_load field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $association_setting_tcp_load;
    /** @brief Original m field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $m;
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('datas', $values))
            $this->datas = $values['datas'];
        else
        {
            $this->datas = [];
        }
        if (array_key_exists('association_setting_tcp_load', $values))
            $this->association_setting_tcp_load = $values['association_setting_tcp_load'];
        else
        {
            $this->association_setting_tcp_load = false;
        }
        if (array_key_exists('m', $values))
            $this->m = $values['m'];
        else
        {
            $this->m = 0.325;
        }
        if (array_key_exists('x', $values))
            $this->x = $values['x'];
        else
        {
            $this->x = -17.0;
        }
        if (array_key_exists('y', $values))
            $this->y = $values['y'];
        else
        {
            $this->y = 9.0;
        }
        if (array_key_exists('z', $values))
            $this->z = $values['z'];
        else
        {
            $this->z = 11.8;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvFtCaliLoad_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvFtCaliLoad_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/FtCaliLoad_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvFtCaliLoad_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvFtCaliLoad_Response',
        'type' => 'xarm_msgs/srv/FtCaliLoad_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/FtCaliLoad_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_990034f596c4a8e859c06c438635306e2938e763b5bea45019cdf5223347e4e7',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvFtCaliLoad_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvFtCaliLoad_Response', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/srv/FtForceConfig_Request fields.
 * @details 14..334 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvFtForceConfig_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvFtForceConfig_Request',
        'type' => 'xarm_msgs/srv/FtForceConfig_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/FtForceConfig_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0b337f5e2eb604e3057ca3378f3e1cb2b2032bac9d8c60e6b64ac85548b94e63',
        'minimum' => 14,
        'maximum' => 334,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'coord',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'c_axis',
                'type' => 'int16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'ref',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'limits',
                'type' => 'float32',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original coord field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $coord;
    /** @brief Original c_axis field; int16 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $c_axis;
    /** @brief Original ref field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $ref;
    /** @brief Original limits field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $limits;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('coord', $values))
            $this->coord = $values['coord'];
        else
        {
            $this->coord = 0;
        }
        if (array_key_exists('c_axis', $values))
            $this->c_axis = $values['c_axis'];
        else
        {
            $this->c_axis = [];
        }
        if (array_key_exists('ref', $values))
            $this->ref = $values['ref'];
        else
        {
            $this->ref = [];
        }
        if (array_key_exists('limits', $values))
            $this->limits = $values['limits'];
        else
        {
            $this->limits = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvFtForceConfig_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvFtForceConfig_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/FtForceConfig_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvFtForceConfig_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvFtForceConfig_Response',
        'type' => 'xarm_msgs/srv/FtForceConfig_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/FtForceConfig_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_43ef4f729fcc96502a26261afb70e25a7cdd02d03097d93099b691dec28d59dc',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvFtForceConfig_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvFtForceConfig_Response', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/srv/FtForcePid_Request fields.
 * @details 16..528 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvFtForcePid_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvFtForcePid_Request',
        'type' => 'xarm_msgs/srv/FtForcePid_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/FtForcePid_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b69ed1d3e81b0b83a498bff16aab71a8f26e472c5e5bc1fad4559e781366b367',
        'minimum' => 16,
        'maximum' => 528,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'kp',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'ki',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'kd',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'xe_limit',
                'type' => 'float32',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original kp field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $kp;
    /** @brief Original ki field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $ki;
    /** @brief Original kd field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $kd;
    /** @brief Original xe_limit field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $xe_limit;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('kp', $values))
            $this->kp = $values['kp'];
        else
        {
            $this->kp = [];
        }
        if (array_key_exists('ki', $values))
            $this->ki = $values['ki'];
        else
        {
            $this->ki = [];
        }
        if (array_key_exists('kd', $values))
            $this->kd = $values['kd'];
        else
        {
            $this->kd = [];
        }
        if (array_key_exists('xe_limit', $values))
            $this->xe_limit = $values['xe_limit'];
        else
        {
            $this->xe_limit = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvFtForcePid_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvFtForcePid_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/FtForcePid_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvFtForcePid_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvFtForcePid_Response',
        'type' => 'xarm_msgs/srv/FtForcePid_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/FtForcePid_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_308d5da22a4445f2b001974907c5b459e5b01ee06fb5029096ae86220e046c89',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvFtForcePid_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvFtForcePid_Response', $bytes);
    }
}

/** @brief Own all 5 original xarm_msgs/srv/FtImpedance_Request fields.
 * @details 18..466 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvFtImpedance_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvFtImpedance_Request',
        'type' => 'xarm_msgs/srv/FtImpedance_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/FtImpedance_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_66d926f6b7e15bcfc2023215e434d931a77895df36376bb1dfd2cae852c9078d',
        'minimum' => 18,
        'maximum' => 466,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'coord',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'c_axis',
                'type' => 'int16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'm',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'k',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'b',
                'type' => 'float32',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original coord field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $coord;
    /** @brief Original c_axis field; int16 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $c_axis;
    /** @brief Original m field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $m;
    /** @brief Original k field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $k;
    /** @brief Original b field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $b;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('coord', $values))
            $this->coord = $values['coord'];
        else
        {
            $this->coord = 0;
        }
        if (array_key_exists('c_axis', $values))
            $this->c_axis = $values['c_axis'];
        else
        {
            $this->c_axis = [];
        }
        if (array_key_exists('m', $values))
            $this->m = $values['m'];
        else
        {
            $this->m = [];
        }
        if (array_key_exists('k', $values))
            $this->k = $values['k'];
        else
        {
            $this->k = [];
        }
        if (array_key_exists('b', $values))
            $this->b = $values['b'];
        else
        {
            $this->b = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvFtImpedance_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvFtImpedance_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/FtImpedance_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvFtImpedance_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvFtImpedance_Response',
        'type' => 'xarm_msgs/srv/FtImpedance_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/FtImpedance_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_47e50f8950f42a2ee65ea8e760b98a78d4cd57729f528785c8307f072ad64cdb',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvFtImpedance_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvFtImpedance_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/GetAnalogIO_Request fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetAnalogIO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetAnalogIO_Request',
        'type' => 'xarm_msgs/srv/GetAnalogIO_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetAnalogIO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_41f0b8344aedb31609753c92a949f995b9b36e36f4bd45080e7c806e4977d3c2',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ionum',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ionum field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ionum;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ionum', $values))
            $this->ionum = $values['ionum'];
        else
        {
            $this->ionum = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetAnalogIO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetAnalogIO_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GetAnalogIO_Response fields.
 * @details 10..266 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetAnalogIO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetAnalogIO_Response',
        'type' => 'xarm_msgs/srv/GetAnalogIO_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetAnalogIO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c60eab1570b682fa2a1de07edbcf04155d63abf98cfc6d0aa3ebfa39445d5bbc',
        'minimum' => 10,
        'maximum' => 266,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'data',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original data field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetAnalogIO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetAnalogIO_Response', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/srv/GetDigitalIO_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetDigitalIO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetDigitalIO_Request',
        'type' => 'xarm_msgs/srv/GetDigitalIO_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetDigitalIO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_46633e09d5231d69307a8dbdbd90c2d81ef6ad279b961da81b2af86fed51f188',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetDigitalIO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetDigitalIO_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GetDigitalIO_Response fields.
 * @details 10..330 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetDigitalIO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetDigitalIO_Response',
        'type' => 'xarm_msgs/srv/GetDigitalIO_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetDigitalIO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_325fb8d7a911dfc1746a289380e295d6e153ac2fad2018932ce7cd431511985c',
        'minimum' => 10,
        'maximum' => 330,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'digitals',
                'type' => 'int16',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original digitals field; int16 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $digitals;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('digitals', $values))
            $this->digitals = $values['digitals'];
        else
        {
            $this->digitals = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetDigitalIO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetDigitalIO_Response', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/srv/GetFloat32_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetFloat32_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetFloat32_Request',
        'type' => 'xarm_msgs/srv/GetFloat32_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetFloat32_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6a3aa3004f481bde62974b72be6157b1e388e6097733474e3fb11855f3aa5c84',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetFloat32_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetFloat32_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GetFloat32_Response fields.
 * @details 10..266 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetFloat32_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetFloat32_Response',
        'type' => 'xarm_msgs/srv/GetFloat32_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetFloat32_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e43f1551258cbf7bae19089eade8321e8d565c0783551e016dc73ed410c9e3f2',
        'minimum' => 10,
        'maximum' => 266,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'data',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original data field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetFloat32_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetFloat32_Response', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/srv/GetFloat32List_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetFloat32List_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetFloat32List_Request',
        'type' => 'xarm_msgs/srv/GetFloat32List_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetFloat32List_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_36ec63da8ede627478e174c1f1dd75926973d3b1d57a6f03c05ffac8e4b649a3',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetFloat32List_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetFloat32List_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GetFloat32List_Response fields.
 * @details 10..394 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetFloat32List_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetFloat32List_Response',
        'type' => 'xarm_msgs/srv/GetFloat32List_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetFloat32List_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f30d581b8aa511578c21a3db64c818693b06268b7916cc16e927fc329f40e8d4',
        'minimum' => 10,
        'maximum' => 394,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'datas',
                'type' => 'float32',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original datas field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $datas;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('datas', $values))
            $this->datas = $values['datas'];
        else
        {
            $this->datas = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetFloat32List_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetFloat32List_Response', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/srv/GetInt16_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetInt16_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetInt16_Request',
        'type' => 'xarm_msgs/srv/GetInt16_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetInt16_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_85fe1186c4f0887d4ac9cf3f0d690c32ba3ec895bef3d49b2199527b53627865',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetInt16_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetInt16_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GetInt16_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetInt16_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetInt16_Response',
        'type' => 'xarm_msgs/srv/GetInt16_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetInt16_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c29870d9604ae0d220de53bb6768681bfbb120171af61c36e45b9a660fd8f1a9',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'data',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original data field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetInt16_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetInt16_Response', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/srv/GetInt16List_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetInt16List_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetInt16List_Request',
        'type' => 'xarm_msgs/srv/GetInt16List_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetInt16List_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ca95d35c75e9843b2c9d27bd94e34e336641255ad5dd2b0ff22f8a6efb36db2d',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetInt16List_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetInt16List_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GetInt16List_Response fields.
 * @details 10..330 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetInt16List_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetInt16List_Response',
        'type' => 'xarm_msgs/srv/GetInt16List_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetInt16List_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d35b6ac9d82960e32fd035554dc021e8f3e592259c1db9a714e9b575cc611139',
        'minimum' => 10,
        'maximum' => 330,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'datas',
                'type' => 'int16',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original datas field; int16 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $datas;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('datas', $values))
            $this->datas = $values['datas'];
        else
        {
            $this->datas = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetInt16List_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetInt16List_Response', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/srv/GetInt32_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetInt32_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetInt32_Request',
        'type' => 'xarm_msgs/srv/GetInt32_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetInt32_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e7dbcdb905c89364b288e23c985ba73394529613bdb2f4a74b10d811203f0dfe',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetInt32_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetInt32_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GetInt32_Response fields.
 * @details 10..266 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetInt32_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetInt32_Response',
        'type' => 'xarm_msgs/srv/GetInt32_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetInt32_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9834d69ebc7644d3d2feee8f4bcb20effbc15931709be7264ea04bd88b2686f2',
        'minimum' => 10,
        'maximum' => 266,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'data',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original data field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetInt32_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetInt32_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/GetInt32ByType_Request fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetInt32ByType_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetInt32ByType_Request',
        'type' => 'xarm_msgs/srv/GetInt32ByType_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetInt32ByType_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5d4ba9b5c23452f3b203c66e3cbc5880b99cac6b9ec9ce3acac96414013f993a',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'type',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original type field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $type;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetInt32ByType_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetInt32ByType_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GetInt32ByType_Response fields.
 * @details 10..266 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetInt32ByType_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetInt32ByType_Response',
        'type' => 'xarm_msgs/srv/GetInt32ByType_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetInt32ByType_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6cabb4a9a840ef62c4f8a2da7da917410a97a8aafcf78e361cc928a7cdbe5c3a',
        'minimum' => 10,
        'maximum' => 266,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'data',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original data field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetInt32ByType_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetInt32ByType_Response', $bytes);
    }
}

/** @brief Own all 6 original xarm_msgs/srv/GetSetModbusData_Request fields.
 * @details 11..4107 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetSetModbusData_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetSetModbusData_Request',
        'type' => 'xarm_msgs/srv/GetSetModbusData_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetSetModbusData_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f9cc9e1e5635a37023cc50f66930072f3d61bcfd58f0d8ebb0218c4eb3a035cd',
        'minimum' => 11,
        'maximum' => 4107,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'modbus_data',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 4096,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'modbus_length',
                'type' => 'int16',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 2
            ],
            [
                'name' => 'ret_length',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'host_id',
                'type' => 'uint8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '9',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'is_transparent_transmission',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'use_503_port',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original modbus_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $modbus_data;
    /** @brief Original modbus_length field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $modbus_length;
    /** @brief Original ret_length field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret_length;
    /** @brief Original host_id field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $host_id;
    /** @brief Original is_transparent_transmission field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $is_transparent_transmission;
    /** @brief Original use_503_port field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $use_503_port;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('modbus_data', $values))
            $this->modbus_data = $values['modbus_data'];
        else
        {
            $this->modbus_data = [];
        }
        if (array_key_exists('modbus_length', $values))
            $this->modbus_length = $values['modbus_length'];
        else
        {
            $this->modbus_length = 0;
        }
        if (array_key_exists('ret_length', $values))
            $this->ret_length = $values['ret_length'];
        else
        {
            $this->ret_length = 0;
        }
        if (array_key_exists('host_id', $values))
            $this->host_id = $values['host_id'];
        else
        {
            $this->host_id = 9;
        }
        if (array_key_exists('is_transparent_transmission', $values))
            $this->is_transparent_transmission = $values['is_transparent_transmission'];
        else
        {
            $this->is_transparent_transmission = false;
        }
        if (array_key_exists('use_503_port', $values))
            $this->use_503_port = $values['use_503_port'];
        else
        {
            $this->use_503_port = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetSetModbusData_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetSetModbusData_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GetSetModbusData_Response fields.
 * @details 10..4362 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGetSetModbusData_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGetSetModbusData_Response',
        'type' => 'xarm_msgs/srv/GetSetModbusData_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GetSetModbusData_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7367e58167bc61c209e7a28ee1a4d5809525cb11cbe48ee972724b5f0536b5b7',
        'minimum' => 10,
        'maximum' => 4362,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'ret_data',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 4096,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original ret_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $ret_data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('ret_data', $values))
            $this->ret_data = $values['ret_data'];
        else
        {
            $this->ret_data = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGetSetModbusData_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGetSetModbusData_Response', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/GripperMove_Request fields.
 * @details 9..9 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGripperMove_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGripperMove_Request',
        'type' => 'xarm_msgs/srv/GripperMove_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GripperMove_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_54c0e0eeb956e5ab0b1bd31aabc67493ee2bdb9b7028f41b73eb9d8b1e568322',
        'minimum' => 9,
        'maximum' => 9,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pos',
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
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '10.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original pos field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('pos', $values))
            $this->pos = $values['pos'];
        else
        {
            $this->pos = 0.0;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = false;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 10.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGripperMove_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGripperMove_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/GripperMove_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvGripperMove_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvGripperMove_Response',
        'type' => 'xarm_msgs/srv/GripperMove_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/GripperMove_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1c64a50983aaf8dd20d3a400be9d69242f52c6ad7f369ea54dd19be931dc80a1',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvGripperMove_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvGripperMove_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/IdenLoad_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvIdenLoad_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvIdenLoad_Request',
        'type' => 'xarm_msgs/srv/IdenLoad_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/IdenLoad_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_51918f23cc7db51b63e91cca012e657836528d8557a4479b287cd9631015a79a',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'estimated_mass',
                'type' => 'float32',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original estimated_mass field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $estimated_mass;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('estimated_mass', $values))
            $this->estimated_mass = $values['estimated_mass'];
        else
        {
            $this->estimated_mass = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvIdenLoad_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvIdenLoad_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/IdenLoad_Response fields.
 * @details 10..394 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvIdenLoad_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvIdenLoad_Response',
        'type' => 'xarm_msgs/srv/IdenLoad_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/IdenLoad_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3934143122064209bd30159d9972b5cfd529728f3f95785c9641d20790e4f64e',
        'minimum' => 10,
        'maximum' => 394,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'datas',
                'type' => 'float32',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original datas field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $datas;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('datas', $values))
            $this->datas = $values['datas'];
        else
        {
            $this->datas = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvIdenLoad_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvIdenLoad_Response', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/LinearTrackBackOrigin_Request fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request',
        'type' => 'xarm_msgs/srv/LinearTrackBackOrigin_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/LinearTrackBackOrigin_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_797f71ddda85f463999f437e70aaaf40517fe78dfa0356a640afaffa5154e8d9',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'True',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'auto_enable',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'True',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original auto_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $auto_enable;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = true;
        }
        if (array_key_exists('auto_enable', $values))
            $this->auto_enable = $values['auto_enable'];
        else
        {
            $this->auto_enable = true;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/LinearTrackBackOrigin_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response',
        'type' => 'xarm_msgs/srv/LinearTrackBackOrigin_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/LinearTrackBackOrigin_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0881a1e5f823c169ed5d1063e8bd681b8b2f994ebd9bee3e335c47d3bd2db4de',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response', $bytes);
    }
}

/** @brief Own all 5 original xarm_msgs/srv/LinearTrackSetPos_Request fields.
 * @details 10..10 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvLinearTrackSetPos_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvLinearTrackSetPos_Request',
        'type' => 'xarm_msgs/srv/LinearTrackSetPos_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/LinearTrackSetPos_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b73e173d593e64d898e69d32e659ddff1741eaada6af1ae00d9a4c406d9dad62',
        'minimum' => 10,
        'maximum' => 10,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pos',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'speed',
                'type' => 'int16',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 2
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'True',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '100.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'auto_enable',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'True',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original pos field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original speed field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Original auto_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $auto_enable;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('pos', $values))
            $this->pos = $values['pos'];
        else
        {
            $this->pos = 0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = true;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 100.0;
        }
        if (array_key_exists('auto_enable', $values))
            $this->auto_enable = $values['auto_enable'];
        else
        {
            $this->auto_enable = true;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvLinearTrackSetPos_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvLinearTrackSetPos_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/LinearTrackSetPos_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvLinearTrackSetPos_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvLinearTrackSetPos_Response',
        'type' => 'xarm_msgs/srv/LinearTrackSetPos_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/LinearTrackSetPos_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_aba9a933b5cde05c0a1d0a44fe404b3c3dadad72aac91b7a7aff04221c6667f7',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvLinearTrackSetPos_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvLinearTrackSetPos_Response', $bytes);
    }
}

/** @brief Own all 9 original xarm_msgs/srv/MoveCartesian_Request fields.
 * @details 27..155 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveCartesian_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveCartesian_Request',
        'type' => 'xarm_msgs/srv/MoveCartesian_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveCartesian_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7483ca119d8fcac25f3b24380700c8d0ed169390997fdd80215b47baa3bbefb1',
        'minimum' => 27,
        'maximum' => 155,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pose',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'speed',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'acc',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'mvtime',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'radius',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'is_tool_coord',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'relative',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original pose field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original acc field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $acc;
    /** @brief Original mvtime field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mvtime;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Original radius field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $radius;
    /** @brief Original is_tool_coord field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $is_tool_coord;
    /** @brief Original relative field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $relative;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = [];
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('acc', $values))
            $this->acc = $values['acc'];
        else
        {
            $this->acc = 0.0;
        }
        if (array_key_exists('mvtime', $values))
            $this->mvtime = $values['mvtime'];
        else
        {
            $this->mvtime = 0.0;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = false;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = -1.0;
        }
        if (array_key_exists('radius', $values))
            $this->radius = $values['radius'];
        else
        {
            $this->radius = -1.0;
        }
        if (array_key_exists('is_tool_coord', $values))
            $this->is_tool_coord = $values['is_tool_coord'];
        else
        {
            $this->is_tool_coord = false;
        }
        if (array_key_exists('relative', $values))
            $this->relative = $values['relative'];
        else
        {
            $this->relative = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveCartesian_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveCartesian_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/MoveCartesian_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveCartesian_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveCartesian_Response',
        'type' => 'xarm_msgs/srv/MoveCartesian_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveCartesian_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_17659e470cc45dd7fe1bc6240aa09aa6693e90e40d5dcf556cfb2b8d946af7be',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveCartesian_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveCartesian_Response', $bytes);
    }
}

/** @brief Own all 8 original xarm_msgs/srv/MoveCircle_Request fields.
 * @details 29..285 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveCircle_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveCircle_Request',
        'type' => 'xarm_msgs/srv/MoveCircle_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveCircle_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_34fed48317b76dc87d7e975f0d23a706ac856f9deff89d2789ef8d180074658c',
        'minimum' => 29,
        'maximum' => 285,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pose1',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'pose2',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'percent',
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
                'name' => 'speed',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'acc',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'mvtime',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original pose1 field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $pose1;
    /** @brief Original pose2 field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $pose2;
    /** @brief Original percent field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $percent;
    /** @brief Original speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original acc field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $acc;
    /** @brief Original mvtime field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mvtime;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('pose1', $values))
            $this->pose1 = $values['pose1'];
        else
        {
            $this->pose1 = [];
        }
        if (array_key_exists('pose2', $values))
            $this->pose2 = $values['pose2'];
        else
        {
            $this->pose2 = [];
        }
        if (array_key_exists('percent', $values))
            $this->percent = $values['percent'];
        else
        {
            $this->percent = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('acc', $values))
            $this->acc = $values['acc'];
        else
        {
            $this->acc = 0.0;
        }
        if (array_key_exists('mvtime', $values))
            $this->mvtime = $values['mvtime'];
        else
        {
            $this->mvtime = 0.0;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = false;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = -1.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveCircle_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveCircle_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/MoveCircle_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveCircle_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveCircle_Response',
        'type' => 'xarm_msgs/srv/MoveCircle_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveCircle_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e884158bfd9d5bed6cb76d276e7d312c5f2d69d0508a1c01566f6773b7e4dbbd',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveCircle_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveCircle_Response', $bytes);
    }
}

/** @brief Own all 5 original xarm_msgs/srv/MoveHome_Request fields.
 * @details 17..17 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveHome_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveHome_Request',
        'type' => 'xarm_msgs/srv/MoveHome_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveHome_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f9c04cf15dadd5c45cc16017533216bcbf682ac3366764c0546e73deabfab5a3',
        'minimum' => 17,
        'maximum' => 17,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'speed',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'acc',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'mvtime',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original acc field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $acc;
    /** @brief Original mvtime field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mvtime;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('acc', $values))
            $this->acc = $values['acc'];
        else
        {
            $this->acc = 0.0;
        }
        if (array_key_exists('mvtime', $values))
            $this->mvtime = $values['mvtime'];
        else
        {
            $this->mvtime = 0.0;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = false;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = -1.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveHome_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveHome_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/MoveHome_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveHome_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveHome_Response',
        'type' => 'xarm_msgs/srv/MoveHome_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveHome_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c5a0764d10a7a2c3285ada1c04594d1cad466f7ec71fe53e42b2ea98b70793aa',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveHome_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveHome_Response', $bytes);
    }
}

/** @brief Own all 7 original xarm_msgs/srv/MoveJoint_Request fields.
 * @details 25..153 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveJoint_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveJoint_Request',
        'type' => 'xarm_msgs/srv/MoveJoint_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveJoint_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_666e0343fa54b3a93a3176842f52411d3bf009164ba19f8bd4d59ad43d22d894',
        'minimum' => 25,
        'maximum' => 153,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'angles',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'speed',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'acc',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'mvtime',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'radius',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original angles field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $angles;
    /** @brief Original speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original acc field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $acc;
    /** @brief Original mvtime field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mvtime;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Original radius field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $radius;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('angles', $values))
            $this->angles = $values['angles'];
        else
        {
            $this->angles = [];
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('acc', $values))
            $this->acc = $values['acc'];
        else
        {
            $this->acc = 0.0;
        }
        if (array_key_exists('mvtime', $values))
            $this->mvtime = $values['mvtime'];
        else
        {
            $this->mvtime = 0.0;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = false;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = -1.0;
        }
        if (array_key_exists('radius', $values))
            $this->radius = $values['radius'];
        else
        {
            $this->radius = -1.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveJoint_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveJoint_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/MoveJoint_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveJoint_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveJoint_Response',
        'type' => 'xarm_msgs/srv/MoveJoint_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveJoint_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0af0f83fe9efc15c4a2334c229e0d079fad286630c52d703b7e0cfaa037f04a7',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveJoint_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveJoint_Response', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/srv/MoveVelocity_Request fields.
 * @details 10..138 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveVelocity_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveVelocity_Request',
        'type' => 'xarm_msgs/srv/MoveVelocity_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveVelocity_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a5378f3f0f4b89e04279b6d79b8b756d0970f74cd582636d56f1302be2c015c4',
        'minimum' => 10,
        'maximum' => 138,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'speeds',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'is_sync',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'True',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'is_tool_coord',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'duration',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '-1.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original speeds field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $speeds;
    /** @brief Original is_sync field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $is_sync;
    /** @brief Original is_tool_coord field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $is_tool_coord;
    /** @brief Original duration field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $duration;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('speeds', $values))
            $this->speeds = $values['speeds'];
        else
        {
            $this->speeds = [];
        }
        if (array_key_exists('is_sync', $values))
            $this->is_sync = $values['is_sync'];
        else
        {
            $this->is_sync = true;
        }
        if (array_key_exists('is_tool_coord', $values))
            $this->is_tool_coord = $values['is_tool_coord'];
        else
        {
            $this->is_tool_coord = false;
        }
        if (array_key_exists('duration', $values))
            $this->duration = $values['duration'];
        else
        {
            $this->duration = -1.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveVelocity_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveVelocity_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/MoveVelocity_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvMoveVelocity_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvMoveVelocity_Response',
        'type' => 'xarm_msgs/srv/MoveVelocity_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/MoveVelocity_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3ec82a1e864723e95f8fec98073d5e1ed009d2882fa8c20e55b4f8d86ec1d318',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvMoveVelocity_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvMoveVelocity_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/PlanExec_Request fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvPlanExec_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvPlanExec_Request',
        'type' => 'xarm_msgs/srv/PlanExec_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/PlanExec_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_376aa0461a41377c8e5ba44ec96e9dac39fea01da3db1d31a6a90190b5bf66d5',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'wait',
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
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvPlanExec_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvPlanExec_Request', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/PlanExec_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvPlanExec_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvPlanExec_Response',
        'type' => 'xarm_msgs/srv/PlanExec_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/PlanExec_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5adfabe15405e2e15b08760866169c214029fe826a69dd1277808c3ebb16a88e',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'success',
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
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original success field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $success;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('success', $values))
            $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvPlanExec_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvPlanExec_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/PlanJoint_Request fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvPlanJoint_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvPlanJoint_Request',
        'type' => 'xarm_msgs/srv/PlanJoint_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/PlanJoint_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_997562beca1e50895151970e89f0f253431451c60e274222ae622c49c0455bd5',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'target',
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
                'element_minimum' => 8
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original target field; float64 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $target;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('target', $values))
            $this->target = $values['target'];
        else
        {
            $this->target = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvPlanJoint_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvPlanJoint_Request', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/PlanJoint_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvPlanJoint_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvPlanJoint_Response',
        'type' => 'xarm_msgs/srv/PlanJoint_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/PlanJoint_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dfe1e3eaf8913c9e6b5aed6ee60bd7c24eb4e2944036f0de92fcd6846acac782',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'success',
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
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original success field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $success;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('success', $values))
            $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvPlanJoint_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvPlanJoint_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/PlanPose_Request fields.
 * @details 56..56 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvPlanPose_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvPlanPose_Request',
        'type' => 'xarm_msgs/srv/PlanPose_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/PlanPose_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_01b292bd33f28682cde3cb35f9d62e8d99cd8a58d2a5c3d5e6411121d3a09859',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'target',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original target field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $target;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('target', $values))
            $this->target = $values['target'];
        else
        {
            $this->target = new Ros2Geometry_msgsMsgPose();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvPlanPose_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvPlanPose_Request', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/PlanPose_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvPlanPose_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvPlanPose_Response',
        'type' => 'xarm_msgs/srv/PlanPose_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/PlanPose_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0cdcf4232f673c3034319f90c1d0f56fbfd86a829fa9f6460f87fea391ce766d',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'success',
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
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original success field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $success;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('success', $values))
            $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvPlanPose_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvPlanPose_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/PlanSingleStraight_Request fields.
 * @details 56..56 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvPlanSingleStraight_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvPlanSingleStraight_Request',
        'type' => 'xarm_msgs/srv/PlanSingleStraight_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/PlanSingleStraight_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4e350b5145aa64c8ff4dc15cd61ba557f0db2b256798e50e4b4e28d47ecdc2b0',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'target',
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
        ],
        'constants' => [

        ]
    ];
    /** @brief Original target field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $target;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('target', $values))
            $this->target = $values['target'];
        else
        {
            $this->target = new Ros2Geometry_msgsMsgPose();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvPlanSingleStraight_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvPlanSingleStraight_Request', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/PlanSingleStraight_Response fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvPlanSingleStraight_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvPlanSingleStraight_Response',
        'type' => 'xarm_msgs/srv/PlanSingleStraight_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/PlanSingleStraight_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ef2fdd22f223f4c91ccc886bddae43b0d48bc9063b3a199c7d8bb6f1bfb86432',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'success',
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
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original success field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $success;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('success', $values))
            $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvPlanSingleStraight_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvPlanSingleStraight_Response', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/RobotiqActivate_Request fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvRobotiqActivate_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvRobotiqActivate_Request',
        'type' => 'xarm_msgs/srv/RobotiqActivate_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/RobotiqActivate_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7c4501be17de61893d5d91b3808769133ac5a444d2f0a8b1b3b13a01f03b75c3',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'True',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '3.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = true;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 3.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvRobotiqActivate_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvRobotiqActivate_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/RobotiqActivate_Response fields.
 * @details 10..4362 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvRobotiqActivate_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvRobotiqActivate_Response',
        'type' => 'xarm_msgs/srv/RobotiqActivate_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/RobotiqActivate_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e6f6d01b439afdbb2461a8ed682ce1332e021a9a8ae3326772f13469a70648d4',
        'minimum' => 10,
        'maximum' => 4362,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'ret_data',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 4096,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original ret_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $ret_data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('ret_data', $values))
            $this->ret_data = $values['ret_data'];
        else
        {
            $this->ret_data = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvRobotiqActivate_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvRobotiqActivate_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/RobotiqGetStatus_Request fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvRobotiqGetStatus_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvRobotiqGetStatus_Request',
        'type' => 'xarm_msgs/srv/RobotiqGetStatus_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/RobotiqGetStatus_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_99970019152494d54024cb4c44af400853506d81149e1bba55d40caa9bd44e6b',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'number_of_registers',
                'type' => 'uint8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '3',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original number_of_registers field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $number_of_registers;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('number_of_registers', $values))
            $this->number_of_registers = $values['number_of_registers'];
        else
        {
            $this->number_of_registers = 3;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvRobotiqGetStatus_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvRobotiqGetStatus_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/RobotiqGetStatus_Response fields.
 * @details 10..4362 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvRobotiqGetStatus_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvRobotiqGetStatus_Response',
        'type' => 'xarm_msgs/srv/RobotiqGetStatus_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/RobotiqGetStatus_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b1b7945622a48beab45b569b9c64139eec028b5a61dc75cfb6dc302d8b787e43',
        'minimum' => 10,
        'maximum' => 4362,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'ret_data',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 4096,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original ret_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $ret_data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('ret_data', $values))
            $this->ret_data = $values['ret_data'];
        else
        {
            $this->ret_data = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvRobotiqGetStatus_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvRobotiqGetStatus_Response', $bytes);
    }
}

/** @brief Own all 5 original xarm_msgs/srv/RobotiqMove_Request fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvRobotiqMove_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvRobotiqMove_Request',
        'type' => 'xarm_msgs/srv/RobotiqMove_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/RobotiqMove_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f1e5c6c7be4583ecdb91da2401c9adcf727eff9e2b69df21e8a4f1de468775ad',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pos',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'speed',
                'type' => 'uint8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '255',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'force',
                'type' => 'uint8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '255',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'True',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '5.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original pos field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original speed field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original force field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('pos', $values))
            $this->pos = $values['pos'];
        else
        {
            $this->pos = 0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 255;
        }
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = 255;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = true;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 5.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvRobotiqMove_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvRobotiqMove_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/RobotiqMove_Response fields.
 * @details 10..4362 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvRobotiqMove_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvRobotiqMove_Response',
        'type' => 'xarm_msgs/srv/RobotiqMove_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/RobotiqMove_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7b581f9f45349f688543ea57a3889b351909b43a9d5bff65d916b804b00bacf6',
        'minimum' => 10,
        'maximum' => 4362,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'ret_data',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 4096,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original ret_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $ret_data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('ret_data', $values))
            $this->ret_data = $values['ret_data'];
        else
        {
            $this->ret_data = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvRobotiqMove_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvRobotiqMove_Response', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/srv/RobotiqReset_Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvRobotiqReset_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvRobotiqReset_Request',
        'type' => 'xarm_msgs/srv/RobotiqReset_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/RobotiqReset_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_59168733ec2ce73fc135dfa2c0f1edd10a4ad82062acf477c7ca9258ecb8d755',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'fields' => [

        ],
        'constants' => [

        ]
    ];
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvRobotiqReset_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvRobotiqReset_Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/srv/RobotiqReset_Response fields.
 * @details 10..4362 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvRobotiqReset_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvRobotiqReset_Response',
        'type' => 'xarm_msgs/srv/RobotiqReset_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/RobotiqReset_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4c0f6950fe50ffae8b6b30be7265606bddaebeb1099038b1e973f144c8164d2e',
        'minimum' => 10,
        'maximum' => 4362,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'ret_data',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 4096,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original ret_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $ret_data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('ret_data', $values))
            $this->ret_data = $values['ret_data'];
        else
        {
            $this->ret_data = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvRobotiqReset_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvRobotiqReset_Response', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/srv/SetAnalogIO_Request fields.
 * @details 14..142 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetAnalogIO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetAnalogIO_Request',
        'type' => 'xarm_msgs/srv/SetAnalogIO_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetAnalogIO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_77df87cd98b5dd0b384674739c65f045eb32346596b82ceca2ccb9ff6e9dfe96',
        'minimum' => 14,
        'maximum' => 142,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ionum',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'value',
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
                'name' => 'xyz',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'tol_r',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ionum field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ionum;
    /** @brief Original value field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Original xyz field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $xyz;
    /** @brief Original tol_r field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tol_r;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ionum', $values))
            $this->ionum = $values['ionum'];
        else
        {
            $this->ionum = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0.0;
        }
        if (array_key_exists('xyz', $values))
            $this->xyz = $values['xyz'];
        else
        {
            $this->xyz = [];
        }
        if (array_key_exists('tol_r', $values))
            $this->tol_r = $values['tol_r'];
        else
        {
            $this->tol_r = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetAnalogIO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetAnalogIO_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetAnalogIO_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetAnalogIO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetAnalogIO_Response',
        'type' => 'xarm_msgs/srv/SetAnalogIO_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetAnalogIO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_480194824f2056f0dd3d3031fda9e27f49b3f7b242f0d0bcb4a783c6649164ec',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetAnalogIO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetAnalogIO_Response', $bytes);
    }
}

/** @brief Own all 5 original xarm_msgs/srv/SetDigitalIO_Request fields.
 * @details 16..144 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetDigitalIO_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetDigitalIO_Request',
        'type' => 'xarm_msgs/srv/SetDigitalIO_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetDigitalIO_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1bb4c857c4625a17ef5800f821d5aed95124ba24dc472ee61c2193798967aaf2',
        'minimum' => 16,
        'maximum' => 144,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ionum',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'value',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'delay_sec',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'xyz',
                'type' => 'float32',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'tol_r',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ionum field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ionum;
    /** @brief Original value field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Original delay_sec field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $delay_sec;
    /** @brief Original xyz field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $xyz;
    /** @brief Original tol_r field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tol_r;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ionum', $values))
            $this->ionum = $values['ionum'];
        else
        {
            $this->ionum = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
        if (array_key_exists('delay_sec', $values))
            $this->delay_sec = $values['delay_sec'];
        else
        {
            $this->delay_sec = 0.0;
        }
        if (array_key_exists('xyz', $values))
            $this->xyz = $values['xyz'];
        else
        {
            $this->xyz = [];
        }
        if (array_key_exists('tol_r', $values))
            $this->tol_r = $values['tol_r'];
        else
        {
            $this->tol_r = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetDigitalIO_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetDigitalIO_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetDigitalIO_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetDigitalIO_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetDigitalIO_Response',
        'type' => 'xarm_msgs/srv/SetDigitalIO_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetDigitalIO_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cb18f2968dd4014c8fe100a63d4c80ce10e813fc0998a9f76cd8699bc511a17b',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetDigitalIO_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetDigitalIO_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/SetFloat32_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetFloat32_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetFloat32_Request',
        'type' => 'xarm_msgs/srv/SetFloat32_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetFloat32_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6fec5cd9973c8f68bdffad4b582b26547d325167942379830a84c7d8469987c1',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'data',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original data field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetFloat32_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetFloat32_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetFloat32_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetFloat32_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetFloat32_Response',
        'type' => 'xarm_msgs/srv/SetFloat32_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetFloat32_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d7bb8df8e3e4ab02a30ebfdc4af57cdbcee5ce3b48591524e70e2a07f8843ea1',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetFloat32_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetFloat32_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/SetFloat32List_Request fields.
 * @details 4..132 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetFloat32List_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetFloat32List_Request',
        'type' => 'xarm_msgs/srv/SetFloat32List_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetFloat32List_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_38bd43fd452ab1f59bd4875deb4dea6d0a17c3409ee9c5446f798e1b8ba93532',
        'minimum' => 4,
        'maximum' => 132,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'datas',
                'type' => 'float32',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original datas field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $datas;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('datas', $values))
            $this->datas = $values['datas'];
        else
        {
            $this->datas = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetFloat32List_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetFloat32List_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetFloat32List_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetFloat32List_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetFloat32List_Response',
        'type' => 'xarm_msgs/srv/SetFloat32List_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetFloat32List_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f2c08d32b1238bb78dc0daccfc97066563a14e8e4b891e37e2effaed91a74396',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetFloat32List_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetFloat32List_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/SetInt16_Request fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt16_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt16_Request',
        'type' => 'xarm_msgs/srv/SetInt16_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt16_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_09e0c90763447d7b4ed57ce37650d4a4d918bc96ec8b8df61189f8e636a58adb',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'data',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original data field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt16_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt16_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetInt16_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt16_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt16_Response',
        'type' => 'xarm_msgs/srv/SetInt16_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt16_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0c02f9a01383e37346637ec7d6a608cca7d025259b67c9ab528f3b13aa842155',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt16_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt16_Response', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetInt16ById_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt16ById_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt16ById_Request',
        'type' => 'xarm_msgs/srv/SetInt16ById_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt16ById_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9472db1bda5f8d557e75c9be0c902c67a76952ba0bc258693cf047c6c10954f0',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'id',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'data',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original id field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $id;
    /** @brief Original data field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('id', $values))
            $this->id = $values['id'];
        else
        {
            $this->id = 0;
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt16ById_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt16ById_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetInt16ById_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt16ById_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt16ById_Response',
        'type' => 'xarm_msgs/srv/SetInt16ById_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt16ById_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cd16eec98546214169bf4e32eff4190d9276ee41b6bfc5eef919dd44cdeae92a',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt16ById_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt16ById_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/SetInt16List_Request fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt16List_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt16List_Request',
        'type' => 'xarm_msgs/srv/SetInt16List_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt16List_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d1ef15eb18c2f3c377c25c486d945fbf77887ca7a9ef9c291355e9a23541ec96',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'datas',
                'type' => 'int16',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original datas field; int16 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $datas;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('datas', $values))
            $this->datas = $values['datas'];
        else
        {
            $this->datas = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt16List_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt16List_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetInt16List_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt16List_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt16List_Response',
        'type' => 'xarm_msgs/srv/SetInt16List_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt16List_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_326ef9ea75d627cdc4187908191f230f87efb6f3fb2b0a7f783260c7ffee583f',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt16List_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt16List_Response', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/srv/SetInt32_Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt32_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt32_Request',
        'type' => 'xarm_msgs/srv/SetInt32_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt32_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f219450be903e96baf55dfb3fcc03851aabc43899d637f869d9adba55b36c1d3',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'data',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original data field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt32_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt32_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetInt32_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt32_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt32_Response',
        'type' => 'xarm_msgs/srv/SetInt32_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt32_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1510982ab2c740a570f21179997368cd4be93c4086967e9ff98b24606f0b7f65',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt32_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt32_Response', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetInt32ByType_Request fields.
 * @details 6..6 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt32ByType_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt32ByType_Request',
        'type' => 'xarm_msgs/srv/SetInt32ByType_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt32ByType_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8a6e3ab3e34eeff45dbddc698cb249c2acb27d74717be8724fa0f9448ff981d7',
        'minimum' => 6,
        'maximum' => 6,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'type',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'data',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original type field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $type;
    /** @brief Original data field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt32ByType_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt32ByType_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetInt32ByType_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetInt32ByType_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetInt32ByType_Response',
        'type' => 'xarm_msgs/srv/SetInt32ByType_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetInt32ByType_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6fcd5dddde2d38a61ffdeab64ae09514137b364347357c62b81c26c86b44882a',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetInt32ByType_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetInt32ByType_Response', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetModbusTimeout_Request fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetModbusTimeout_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetModbusTimeout_Request',
        'type' => 'xarm_msgs/srv/SetModbusTimeout_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetModbusTimeout_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_186f84404c6a11cfd3c7a64fc9ac55b39343d5f8c4a01bd81efdd038d6c7e685',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'timeout',
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
                'name' => 'is_transparent_transmission',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original timeout field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Original is_transparent_transmission field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $is_transparent_transmission;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 0;
        }
        if (array_key_exists('is_transparent_transmission', $values))
            $this->is_transparent_transmission = $values['is_transparent_transmission'];
        else
        {
            $this->is_transparent_transmission = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetModbusTimeout_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetModbusTimeout_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetModbusTimeout_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetModbusTimeout_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetModbusTimeout_Response',
        'type' => 'xarm_msgs/srv/SetModbusTimeout_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetModbusTimeout_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_32da6d0583896c59968213be225e17146d619cddb4c520060640e13b886f3397',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetModbusTimeout_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetModbusTimeout_Response', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetTcpLoad_Request fields.
 * @details 8..136 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetTcpLoad_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetTcpLoad_Request',
        'type' => 'xarm_msgs/srv/SetTcpLoad_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetTcpLoad_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5428d98daa8dd42c8dba0cb78152b1b718afe34eb1da16de65a333a81d293e99',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'weight',
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
                'name' => 'center_of_gravity',
                'type' => 'float32',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original weight field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $weight;
    /** @brief Original center_of_gravity field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $center_of_gravity;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('weight', $values))
            $this->weight = $values['weight'];
        else
        {
            $this->weight = 0.0;
        }
        if (array_key_exists('center_of_gravity', $values))
            $this->center_of_gravity = $values['center_of_gravity'];
        else
        {
            $this->center_of_gravity = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetTcpLoad_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetTcpLoad_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/SetTcpLoad_Response fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvSetTcpLoad_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvSetTcpLoad_Response',
        'type' => 'xarm_msgs/srv/SetTcpLoad_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/SetTcpLoad_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7438021022e94f66f464a561a54cb8f808da8c2e35830853cbecc98fa76ef46f',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvSetTcpLoad_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvSetTcpLoad_Response', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/TrajCtrl_Request fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvTrajCtrl_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvTrajCtrl_Request',
        'type' => 'xarm_msgs/srv/TrajCtrl_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/TrajCtrl_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f29343b422932e055d5930c46615f38cc1600d4c4b89506a1050f89728e0ca0d',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'filename',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '10.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original filename field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $filename;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('filename', $values))
            $this->filename = $values['filename'];
        else
        {
            $this->filename = '';
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 10.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvTrajCtrl_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvTrajCtrl_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/TrajCtrl_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvTrajCtrl_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvTrajCtrl_Response',
        'type' => 'xarm_msgs/srv/TrajCtrl_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/TrajCtrl_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_00cac1ec8b7d312cae07a3ffe3235bd599086c62b028cb446bf7478306aa1b3c',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvTrajCtrl_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvTrajCtrl_Response', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/srv/TrajPlay_Request fields.
 * @details 9..265 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvTrajPlay_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvTrajPlay_Request',
        'type' => 'xarm_msgs/srv/TrajPlay_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/TrajPlay_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_edbd9ed5bcbc1cf8882fab3b69b24373542273b74a51bd3cae94e7970a7d3e72',
        'minimum' => 9,
        'maximum' => 265,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'filename',
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
                'element_minimum' => 4
            ],
            [
                'name' => 'times',
                'type' => 'int16',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '1',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 2
            ],
            [
                'name' => 'double_speed',
                'type' => 'int16',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '1',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 2
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original filename field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $filename;
    /** @brief Original times field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $times;
    /** @brief Original double_speed field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $double_speed;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('filename', $values))
            $this->filename = $values['filename'];
        else
        {
            $this->filename = '';
        }
        if (array_key_exists('times', $values))
            $this->times = $values['times'];
        else
        {
            $this->times = 1;
        }
        if (array_key_exists('double_speed', $values))
            $this->double_speed = $values['double_speed'];
        else
        {
            $this->double_speed = 1;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvTrajPlay_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvTrajPlay_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/TrajPlay_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvTrajPlay_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvTrajPlay_Response',
        'type' => 'xarm_msgs/srv/TrajPlay_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/TrajPlay_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce86fc20a5a16288b138fe2e37794c1318dc393b811f45d3fe3eccf954837ea0',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvTrajPlay_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvTrajPlay_Response', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/srv/VacuumGripperCtrl_Request fields.
 * @details 10..10 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvVacuumGripperCtrl_Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvVacuumGripperCtrl_Request',
        'type' => 'xarm_msgs/srv/VacuumGripperCtrl_Request',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/VacuumGripperCtrl_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c01af96304226d7ed9b64ece79c00c696e012deb938a6a4b4ac3f2a40e4289bf',
        'minimum' => 10,
        'maximum' => 10,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'on',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'wait',
                'type' => 'bool',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => 'False',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'timeout',
                'type' => 'float32',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '3.0',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'delay_sec',
                'type' => 'float32',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original on field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $on;
    /** @brief Original wait field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $wait;
    /** @brief Original timeout field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Original delay_sec field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $delay_sec;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('on', $values))
            $this->on = $values['on'];
        else
        {
            $this->on = false;
        }
        if (array_key_exists('wait', $values))
            $this->wait = $values['wait'];
        else
        {
            $this->wait = false;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 3.0;
        }
        if (array_key_exists('delay_sec', $values))
            $this->delay_sec = $values['delay_sec'];
        else
        {
            $this->delay_sec = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvVacuumGripperCtrl_Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvVacuumGripperCtrl_Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/srv/VacuumGripperCtrl_Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros2Xarm_msgsSrvVacuumGripperCtrl_Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Xarm_msgsSrvVacuumGripperCtrl_Response',
        'type' => 'xarm_msgs/srv/VacuumGripperCtrl_Response',
        'ros_version' => 2,
        'native_type' => 'xarm_msgs/srv/VacuumGripperCtrl_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fa202ccf3d36ec8ff49c0e32f3af07e18d19a6694566fcbaf8ce9ff4a79f352d',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'ret',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'message',
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Xarm_msgsSrvVacuumGripperCtrl_Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Xarm_msgsSrvVacuumGripperCtrl_Response', $bytes);
    }
}

/** @brief Resolve complete local codecs; never a native type registry or permission. */
final class Catalog
{
    /** @return Wire Shared pure full-record codec registry. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) $wire = new Wire([
            'Ros2Builtin_interfacesMsgTime' => Ros2Builtin_interfacesMsgTime::SCHEMA + ['class' => Ros2Builtin_interfacesMsgTime::class],
            'Ros2Geometry_msgsMsgPoint' => Ros2Geometry_msgsMsgPoint::SCHEMA + ['class' => Ros2Geometry_msgsMsgPoint::class],
            'Ros2Geometry_msgsMsgQuaternion' => Ros2Geometry_msgsMsgQuaternion::SCHEMA + ['class' => Ros2Geometry_msgsMsgQuaternion::class],
            'Ros2Geometry_msgsMsgPose' => Ros2Geometry_msgsMsgPose::SCHEMA + ['class' => Ros2Geometry_msgsMsgPose::class],
            'Ros2Std_msgsMsgHeader' => Ros2Std_msgsMsgHeader::SCHEMA + ['class' => Ros2Std_msgsMsgHeader::class],
            'Ros2Xarm_msgsMsgCIOState' => Ros2Xarm_msgsMsgCIOState::SCHEMA + ['class' => Ros2Xarm_msgsMsgCIOState::class],
            'Ros2Xarm_msgsMsgIOState' => Ros2Xarm_msgsMsgIOState::SCHEMA + ['class' => Ros2Xarm_msgsMsgIOState::class],
            'Ros2Xarm_msgsMsgRobotMsg' => Ros2Xarm_msgsMsgRobotMsg::SCHEMA + ['class' => Ros2Xarm_msgsMsgRobotMsg::class],
            'Ros2Xarm_msgsSrvBioGripperCtrl_Request' => Ros2Xarm_msgsSrvBioGripperCtrl_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvBioGripperCtrl_Request::class],
            'Ros2Xarm_msgsSrvBioGripperCtrl_Response' => Ros2Xarm_msgsSrvBioGripperCtrl_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvBioGripperCtrl_Response::class],
            'Ros2Xarm_msgsSrvBioGripperEnable_Request' => Ros2Xarm_msgsSrvBioGripperEnable_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvBioGripperEnable_Request::class],
            'Ros2Xarm_msgsSrvBioGripperEnable_Response' => Ros2Xarm_msgsSrvBioGripperEnable_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvBioGripperEnable_Response::class],
            'Ros2Xarm_msgsSrvCall_Request' => Ros2Xarm_msgsSrvCall_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvCall_Request::class],
            'Ros2Xarm_msgsSrvCall_Response' => Ros2Xarm_msgsSrvCall_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvCall_Response::class],
            'Ros2Xarm_msgsSrvFtCaliLoad_Request' => Ros2Xarm_msgsSrvFtCaliLoad_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvFtCaliLoad_Request::class],
            'Ros2Xarm_msgsSrvFtCaliLoad_Response' => Ros2Xarm_msgsSrvFtCaliLoad_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvFtCaliLoad_Response::class],
            'Ros2Xarm_msgsSrvFtForceConfig_Request' => Ros2Xarm_msgsSrvFtForceConfig_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvFtForceConfig_Request::class],
            'Ros2Xarm_msgsSrvFtForceConfig_Response' => Ros2Xarm_msgsSrvFtForceConfig_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvFtForceConfig_Response::class],
            'Ros2Xarm_msgsSrvFtForcePid_Request' => Ros2Xarm_msgsSrvFtForcePid_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvFtForcePid_Request::class],
            'Ros2Xarm_msgsSrvFtForcePid_Response' => Ros2Xarm_msgsSrvFtForcePid_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvFtForcePid_Response::class],
            'Ros2Xarm_msgsSrvFtImpedance_Request' => Ros2Xarm_msgsSrvFtImpedance_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvFtImpedance_Request::class],
            'Ros2Xarm_msgsSrvFtImpedance_Response' => Ros2Xarm_msgsSrvFtImpedance_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvFtImpedance_Response::class],
            'Ros2Xarm_msgsSrvGetAnalogIO_Request' => Ros2Xarm_msgsSrvGetAnalogIO_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetAnalogIO_Request::class],
            'Ros2Xarm_msgsSrvGetAnalogIO_Response' => Ros2Xarm_msgsSrvGetAnalogIO_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetAnalogIO_Response::class],
            'Ros2Xarm_msgsSrvGetDigitalIO_Request' => Ros2Xarm_msgsSrvGetDigitalIO_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetDigitalIO_Request::class],
            'Ros2Xarm_msgsSrvGetDigitalIO_Response' => Ros2Xarm_msgsSrvGetDigitalIO_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetDigitalIO_Response::class],
            'Ros2Xarm_msgsSrvGetFloat32_Request' => Ros2Xarm_msgsSrvGetFloat32_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetFloat32_Request::class],
            'Ros2Xarm_msgsSrvGetFloat32_Response' => Ros2Xarm_msgsSrvGetFloat32_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetFloat32_Response::class],
            'Ros2Xarm_msgsSrvGetFloat32List_Request' => Ros2Xarm_msgsSrvGetFloat32List_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetFloat32List_Request::class],
            'Ros2Xarm_msgsSrvGetFloat32List_Response' => Ros2Xarm_msgsSrvGetFloat32List_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetFloat32List_Response::class],
            'Ros2Xarm_msgsSrvGetInt16_Request' => Ros2Xarm_msgsSrvGetInt16_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetInt16_Request::class],
            'Ros2Xarm_msgsSrvGetInt16_Response' => Ros2Xarm_msgsSrvGetInt16_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetInt16_Response::class],
            'Ros2Xarm_msgsSrvGetInt16List_Request' => Ros2Xarm_msgsSrvGetInt16List_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetInt16List_Request::class],
            'Ros2Xarm_msgsSrvGetInt16List_Response' => Ros2Xarm_msgsSrvGetInt16List_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetInt16List_Response::class],
            'Ros2Xarm_msgsSrvGetInt32_Request' => Ros2Xarm_msgsSrvGetInt32_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetInt32_Request::class],
            'Ros2Xarm_msgsSrvGetInt32_Response' => Ros2Xarm_msgsSrvGetInt32_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetInt32_Response::class],
            'Ros2Xarm_msgsSrvGetInt32ByType_Request' => Ros2Xarm_msgsSrvGetInt32ByType_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetInt32ByType_Request::class],
            'Ros2Xarm_msgsSrvGetInt32ByType_Response' => Ros2Xarm_msgsSrvGetInt32ByType_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetInt32ByType_Response::class],
            'Ros2Xarm_msgsSrvGetSetModbusData_Request' => Ros2Xarm_msgsSrvGetSetModbusData_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetSetModbusData_Request::class],
            'Ros2Xarm_msgsSrvGetSetModbusData_Response' => Ros2Xarm_msgsSrvGetSetModbusData_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGetSetModbusData_Response::class],
            'Ros2Xarm_msgsSrvGripperMove_Request' => Ros2Xarm_msgsSrvGripperMove_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvGripperMove_Request::class],
            'Ros2Xarm_msgsSrvGripperMove_Response' => Ros2Xarm_msgsSrvGripperMove_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvGripperMove_Response::class],
            'Ros2Xarm_msgsSrvIdenLoad_Request' => Ros2Xarm_msgsSrvIdenLoad_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvIdenLoad_Request::class],
            'Ros2Xarm_msgsSrvIdenLoad_Response' => Ros2Xarm_msgsSrvIdenLoad_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvIdenLoad_Response::class],
            'Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request' => Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request::class],
            'Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response' => Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response::class],
            'Ros2Xarm_msgsSrvLinearTrackSetPos_Request' => Ros2Xarm_msgsSrvLinearTrackSetPos_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvLinearTrackSetPos_Request::class],
            'Ros2Xarm_msgsSrvLinearTrackSetPos_Response' => Ros2Xarm_msgsSrvLinearTrackSetPos_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvLinearTrackSetPos_Response::class],
            'Ros2Xarm_msgsSrvMoveCartesian_Request' => Ros2Xarm_msgsSrvMoveCartesian_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveCartesian_Request::class],
            'Ros2Xarm_msgsSrvMoveCartesian_Response' => Ros2Xarm_msgsSrvMoveCartesian_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveCartesian_Response::class],
            'Ros2Xarm_msgsSrvMoveCircle_Request' => Ros2Xarm_msgsSrvMoveCircle_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveCircle_Request::class],
            'Ros2Xarm_msgsSrvMoveCircle_Response' => Ros2Xarm_msgsSrvMoveCircle_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveCircle_Response::class],
            'Ros2Xarm_msgsSrvMoveHome_Request' => Ros2Xarm_msgsSrvMoveHome_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveHome_Request::class],
            'Ros2Xarm_msgsSrvMoveHome_Response' => Ros2Xarm_msgsSrvMoveHome_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveHome_Response::class],
            'Ros2Xarm_msgsSrvMoveJoint_Request' => Ros2Xarm_msgsSrvMoveJoint_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveJoint_Request::class],
            'Ros2Xarm_msgsSrvMoveJoint_Response' => Ros2Xarm_msgsSrvMoveJoint_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveJoint_Response::class],
            'Ros2Xarm_msgsSrvMoveVelocity_Request' => Ros2Xarm_msgsSrvMoveVelocity_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveVelocity_Request::class],
            'Ros2Xarm_msgsSrvMoveVelocity_Response' => Ros2Xarm_msgsSrvMoveVelocity_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvMoveVelocity_Response::class],
            'Ros2Xarm_msgsSrvPlanExec_Request' => Ros2Xarm_msgsSrvPlanExec_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvPlanExec_Request::class],
            'Ros2Xarm_msgsSrvPlanExec_Response' => Ros2Xarm_msgsSrvPlanExec_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvPlanExec_Response::class],
            'Ros2Xarm_msgsSrvPlanJoint_Request' => Ros2Xarm_msgsSrvPlanJoint_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvPlanJoint_Request::class],
            'Ros2Xarm_msgsSrvPlanJoint_Response' => Ros2Xarm_msgsSrvPlanJoint_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvPlanJoint_Response::class],
            'Ros2Xarm_msgsSrvPlanPose_Request' => Ros2Xarm_msgsSrvPlanPose_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvPlanPose_Request::class],
            'Ros2Xarm_msgsSrvPlanPose_Response' => Ros2Xarm_msgsSrvPlanPose_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvPlanPose_Response::class],
            'Ros2Xarm_msgsSrvPlanSingleStraight_Request' => Ros2Xarm_msgsSrvPlanSingleStraight_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvPlanSingleStraight_Request::class],
            'Ros2Xarm_msgsSrvPlanSingleStraight_Response' => Ros2Xarm_msgsSrvPlanSingleStraight_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvPlanSingleStraight_Response::class],
            'Ros2Xarm_msgsSrvRobotiqActivate_Request' => Ros2Xarm_msgsSrvRobotiqActivate_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvRobotiqActivate_Request::class],
            'Ros2Xarm_msgsSrvRobotiqActivate_Response' => Ros2Xarm_msgsSrvRobotiqActivate_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvRobotiqActivate_Response::class],
            'Ros2Xarm_msgsSrvRobotiqGetStatus_Request' => Ros2Xarm_msgsSrvRobotiqGetStatus_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvRobotiqGetStatus_Request::class],
            'Ros2Xarm_msgsSrvRobotiqGetStatus_Response' => Ros2Xarm_msgsSrvRobotiqGetStatus_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvRobotiqGetStatus_Response::class],
            'Ros2Xarm_msgsSrvRobotiqMove_Request' => Ros2Xarm_msgsSrvRobotiqMove_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvRobotiqMove_Request::class],
            'Ros2Xarm_msgsSrvRobotiqMove_Response' => Ros2Xarm_msgsSrvRobotiqMove_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvRobotiqMove_Response::class],
            'Ros2Xarm_msgsSrvRobotiqReset_Request' => Ros2Xarm_msgsSrvRobotiqReset_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvRobotiqReset_Request::class],
            'Ros2Xarm_msgsSrvRobotiqReset_Response' => Ros2Xarm_msgsSrvRobotiqReset_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvRobotiqReset_Response::class],
            'Ros2Xarm_msgsSrvSetAnalogIO_Request' => Ros2Xarm_msgsSrvSetAnalogIO_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetAnalogIO_Request::class],
            'Ros2Xarm_msgsSrvSetAnalogIO_Response' => Ros2Xarm_msgsSrvSetAnalogIO_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetAnalogIO_Response::class],
            'Ros2Xarm_msgsSrvSetDigitalIO_Request' => Ros2Xarm_msgsSrvSetDigitalIO_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetDigitalIO_Request::class],
            'Ros2Xarm_msgsSrvSetDigitalIO_Response' => Ros2Xarm_msgsSrvSetDigitalIO_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetDigitalIO_Response::class],
            'Ros2Xarm_msgsSrvSetFloat32_Request' => Ros2Xarm_msgsSrvSetFloat32_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetFloat32_Request::class],
            'Ros2Xarm_msgsSrvSetFloat32_Response' => Ros2Xarm_msgsSrvSetFloat32_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetFloat32_Response::class],
            'Ros2Xarm_msgsSrvSetFloat32List_Request' => Ros2Xarm_msgsSrvSetFloat32List_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetFloat32List_Request::class],
            'Ros2Xarm_msgsSrvSetFloat32List_Response' => Ros2Xarm_msgsSrvSetFloat32List_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetFloat32List_Response::class],
            'Ros2Xarm_msgsSrvSetInt16_Request' => Ros2Xarm_msgsSrvSetInt16_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt16_Request::class],
            'Ros2Xarm_msgsSrvSetInt16_Response' => Ros2Xarm_msgsSrvSetInt16_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt16_Response::class],
            'Ros2Xarm_msgsSrvSetInt16ById_Request' => Ros2Xarm_msgsSrvSetInt16ById_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt16ById_Request::class],
            'Ros2Xarm_msgsSrvSetInt16ById_Response' => Ros2Xarm_msgsSrvSetInt16ById_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt16ById_Response::class],
            'Ros2Xarm_msgsSrvSetInt16List_Request' => Ros2Xarm_msgsSrvSetInt16List_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt16List_Request::class],
            'Ros2Xarm_msgsSrvSetInt16List_Response' => Ros2Xarm_msgsSrvSetInt16List_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt16List_Response::class],
            'Ros2Xarm_msgsSrvSetInt32_Request' => Ros2Xarm_msgsSrvSetInt32_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt32_Request::class],
            'Ros2Xarm_msgsSrvSetInt32_Response' => Ros2Xarm_msgsSrvSetInt32_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt32_Response::class],
            'Ros2Xarm_msgsSrvSetInt32ByType_Request' => Ros2Xarm_msgsSrvSetInt32ByType_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt32ByType_Request::class],
            'Ros2Xarm_msgsSrvSetInt32ByType_Response' => Ros2Xarm_msgsSrvSetInt32ByType_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetInt32ByType_Response::class],
            'Ros2Xarm_msgsSrvSetModbusTimeout_Request' => Ros2Xarm_msgsSrvSetModbusTimeout_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetModbusTimeout_Request::class],
            'Ros2Xarm_msgsSrvSetModbusTimeout_Response' => Ros2Xarm_msgsSrvSetModbusTimeout_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetModbusTimeout_Response::class],
            'Ros2Xarm_msgsSrvSetTcpLoad_Request' => Ros2Xarm_msgsSrvSetTcpLoad_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetTcpLoad_Request::class],
            'Ros2Xarm_msgsSrvSetTcpLoad_Response' => Ros2Xarm_msgsSrvSetTcpLoad_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvSetTcpLoad_Response::class],
            'Ros2Xarm_msgsSrvTrajCtrl_Request' => Ros2Xarm_msgsSrvTrajCtrl_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvTrajCtrl_Request::class],
            'Ros2Xarm_msgsSrvTrajCtrl_Response' => Ros2Xarm_msgsSrvTrajCtrl_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvTrajCtrl_Response::class],
            'Ros2Xarm_msgsSrvTrajPlay_Request' => Ros2Xarm_msgsSrvTrajPlay_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvTrajPlay_Request::class],
            'Ros2Xarm_msgsSrvTrajPlay_Response' => Ros2Xarm_msgsSrvTrajPlay_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvTrajPlay_Response::class],
            'Ros2Xarm_msgsSrvVacuumGripperCtrl_Request' => Ros2Xarm_msgsSrvVacuumGripperCtrl_Request::SCHEMA + ['class' => Ros2Xarm_msgsSrvVacuumGripperCtrl_Request::class],
            'Ros2Xarm_msgsSrvVacuumGripperCtrl_Response' => Ros2Xarm_msgsSrvVacuumGripperCtrl_Response::SCHEMA + ['class' => Ros2Xarm_msgsSrvVacuumGripperCtrl_Response::class],
        ]);
        return $wire;
    }
}
