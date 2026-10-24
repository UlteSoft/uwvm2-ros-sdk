<?php
declare(strict_types=1);
namespace Uwvm\Ufactory\ros1_legacy;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own all 3 original geometry_msgs/Point fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Geometry_msgsPoint
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsPoint',
        'type' => 'geometry_msgs/Point',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/Point',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b',
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
        return Catalog::wire()->encode('Ros1Geometry_msgsPoint', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsPoint', $bytes);
    }
}

/** @brief Own all 4 original geometry_msgs/Quaternion fields.
 * @details 32..32 canonical bytes; independent nested defaults.
 */
final class Ros1Geometry_msgsQuaternion
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsQuaternion',
        'type' => 'geometry_msgs/Quaternion',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/Quaternion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934',
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
            $this->w = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Geometry_msgsQuaternion', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsQuaternion', $bytes);
    }
}

/** @brief Own all 2 original geometry_msgs/Pose fields.
 * @details 56..56 canonical bytes; independent nested defaults.
 */
final class Ros1Geometry_msgsPose
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Geometry_msgsPose',
        'type' => 'geometry_msgs/Pose',
        'ros_version' => 1,
        'native_type' => 'geometry_msgs/Pose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
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
                'element_minimum' => 24
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
                'element_minimum' => 32
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original position field; geometry_msgs/Point scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $position;
    /** @brief Original orientation field; geometry_msgs/Quaternion scalar.
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
            $this->position = new Ros1Geometry_msgsPoint();
        }
        if (array_key_exists('orientation', $values))
            $this->orientation = $values['orientation'];
        else
        {
            $this->orientation = new Ros1Geometry_msgsQuaternion();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Geometry_msgsPose', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Geometry_msgsPose', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/IOState fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsIOState
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsIOState',
        'type' => 'xarm_msgs/IOState',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/IOState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsIOState', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsIOState', $bytes);
    }
}

/** @brief Own all 10 original xarm_msgs/RobotMsg fields.
 * @details 66..94 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsRobotMsg
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsRobotMsg',
        'type' => 'xarm_msgs/RobotMsg',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/RobotMsg',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7',
        'minimum' => 66,
        'maximum' => 94,
        'semantics' => '',
        'fields' => [
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
        return Catalog::wire()->encode('Ros1Xarm_msgsRobotMsg', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsRobotMsg', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/ClearErrRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsClearErrRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsClearErrRequest',
        'type' => 'xarm_msgs/ClearErrRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/ClearErrRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsClearErrRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsClearErrRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/ClearErrResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsClearErrResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsClearErrResponse',
        'type' => 'xarm_msgs/ClearErrResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/ClearErrResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsClearErrResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsClearErrResponse', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/GetAnalogIORequest fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetAnalogIORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetAnalogIORequest',
        'type' => 'xarm_msgs/GetAnalogIORequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetAnalogIORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'port_num',
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
    /** @brief Original port_num field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port_num;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('port_num', $values))
            $this->port_num = $values['port_num'];
        else
        {
            $this->port_num = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsGetAnalogIORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetAnalogIORequest', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/GetAnalogIOResponse fields.
 * @details 10..266 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetAnalogIOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetAnalogIOResponse',
        'type' => 'xarm_msgs/GetAnalogIOResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetAnalogIOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835',
        'minimum' => 10,
        'maximum' => 266,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'analog_value',
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
    /** @brief Original analog_value field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $analog_value;
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
        if (array_key_exists('analog_value', $values))
            $this->analog_value = $values['analog_value'];
        else
        {
            $this->analog_value = 0.0;
        }
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetAnalogIOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetAnalogIOResponse', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/GetDigitalIORequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetDigitalIORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetDigitalIORequest',
        'type' => 'xarm_msgs/GetDigitalIORequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetDigitalIORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetDigitalIORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetDigitalIORequest', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/GetDigitalIOResponse fields.
 * @details 14..270 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetDigitalIOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetDigitalIOResponse',
        'type' => 'xarm_msgs/GetDigitalIOResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetDigitalIOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498',
        'minimum' => 14,
        'maximum' => 270,
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
    /** @brief Original digital_1 field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $digital_1;
    /** @brief Original digital_2 field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $digital_2;
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetDigitalIOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetDigitalIOResponse', $bytes);
    }
}

/** @brief Own all 5 original xarm_msgs/MoveRequest fields.
 * @details 20..148 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsMoveRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsMoveRequest',
        'type' => 'xarm_msgs/MoveRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/MoveRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced',
        'minimum' => 20,
        'maximum' => 148,
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
                'name' => 'mvvelo',
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
                'name' => 'mvacc',
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
                'name' => 'mvtime',
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
                'name' => 'mvradii',
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
    /** @brief Original pose field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original mvvelo field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mvvelo;
    /** @brief Original mvacc field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mvacc;
    /** @brief Original mvtime field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mvtime;
    /** @brief Original mvradii field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mvradii;
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
        if (array_key_exists('mvvelo', $values))
            $this->mvvelo = $values['mvvelo'];
        else
        {
            $this->mvvelo = 0.0;
        }
        if (array_key_exists('mvacc', $values))
            $this->mvacc = $values['mvacc'];
        else
        {
            $this->mvacc = 0.0;
        }
        if (array_key_exists('mvtime', $values))
            $this->mvtime = $values['mvtime'];
        else
        {
            $this->mvtime = 0.0;
        }
        if (array_key_exists('mvradii', $values))
            $this->mvradii = $values['mvradii'];
        else
        {
            $this->mvradii = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsMoveRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsMoveRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/MoveResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsMoveResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsMoveResponse',
        'type' => 'xarm_msgs/MoveResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/MoveResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsMoveResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsMoveResponse', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetAxisRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetAxisRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetAxisRequest',
        'type' => 'xarm_msgs/SetAxisRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetAxisRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetAxisRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetAxisRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetAxisResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetAxisResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetAxisResponse',
        'type' => 'xarm_msgs/SetAxisResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetAxisResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetAxisResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetAxisResponse', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetDigitalIORequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetDigitalIORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetDigitalIORequest',
        'type' => 'xarm_msgs/SetDigitalIORequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetDigitalIORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'io_num',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original io_num field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $io_num;
    /** @brief Original value field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('io_num', $values))
            $this->io_num = $values['io_num'];
        else
        {
            $this->io_num = 0;
        }
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsSetDigitalIORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetDigitalIORequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetDigitalIOResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetDigitalIOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetDigitalIOResponse',
        'type' => 'xarm_msgs/SetDigitalIOResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetDigitalIOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetDigitalIOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetDigitalIOResponse', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/SetInt16Request fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetInt16Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetInt16Request',
        'type' => 'xarm_msgs/SetInt16Request',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetInt16Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetInt16Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetInt16Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetInt16Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetInt16Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetInt16Response',
        'type' => 'xarm_msgs/SetInt16Response',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetInt16Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetInt16Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetInt16Response', $bytes);
    }
}

/** @brief Own all 6 original xarm_msgs/TCPOffsetRequest fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsTCPOffsetRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsTCPOffsetRequest',
        'type' => 'xarm_msgs/TCPOffsetRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/TCPOffsetRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'x',
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
                'name' => 'y',
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
                'name' => 'z',
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
                'name' => 'roll',
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
                'name' => 'pitch',
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
                'name' => 'yaw',
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
    /** @brief Original x field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $x;
    /** @brief Original y field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $y;
    /** @brief Original z field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $z;
    /** @brief Original roll field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $roll;
    /** @brief Original pitch field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pitch;
    /** @brief Original yaw field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $yaw;
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
        if (array_key_exists('roll', $values))
            $this->roll = $values['roll'];
        else
        {
            $this->roll = 0.0;
        }
        if (array_key_exists('pitch', $values))
            $this->pitch = $values['pitch'];
        else
        {
            $this->pitch = 0.0;
        }
        if (array_key_exists('yaw', $values))
            $this->yaw = $values['yaw'];
        else
        {
            $this->yaw = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsTCPOffsetRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsTCPOffsetRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/TCPOffsetResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsTCPOffsetResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsTCPOffsetResponse',
        'type' => 'xarm_msgs/TCPOffsetResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/TCPOffsetResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsTCPOffsetResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsTCPOffsetResponse', $bytes);
    }
}

/** @brief Own all 1 original xarm_planner/exec_planRequest fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_plannerExec_planRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_plannerExec_planRequest',
        'type' => 'xarm_planner/exec_planRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_planner/exec_planRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'exec',
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
    /** @brief Original exec field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $exec;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('exec', $values))
            $this->exec = $values['exec'];
        else
        {
            $this->exec = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_plannerExec_planRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_plannerExec_planRequest', $bytes);
    }
}

/** @brief Own all 1 original xarm_planner/exec_planResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_plannerExec_planResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_plannerExec_planResponse',
        'type' => 'xarm_planner/exec_planResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_planner/exec_planResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625',
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
        return Catalog::wire()->encode('Ros1Xarm_plannerExec_planResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_plannerExec_planResponse', $bytes);
    }
}

/** @brief Own all 1 original xarm_planner/joint_planRequest fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_plannerJoint_planRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_plannerJoint_planRequest',
        'type' => 'xarm_planner/joint_planRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_planner/joint_planRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9',
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
        return Catalog::wire()->encode('Ros1Xarm_plannerJoint_planRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_plannerJoint_planRequest', $bytes);
    }
}

/** @brief Own all 1 original xarm_planner/joint_planResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_plannerJoint_planResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_plannerJoint_planResponse',
        'type' => 'xarm_planner/joint_planResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_planner/joint_planResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668',
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
        return Catalog::wire()->encode('Ros1Xarm_plannerJoint_planResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_plannerJoint_planResponse', $bytes);
    }
}

/** @brief Own all 1 original xarm_planner/pose_planRequest fields.
 * @details 56..56 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_plannerPose_planRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_plannerPose_planRequest',
        'type' => 'xarm_planner/pose_planRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_planner/pose_planRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'target',
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
                'element_minimum' => 56
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original target field; geometry_msgs/Pose scalar.
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
            $this->target = new Ros1Geometry_msgsPose();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_plannerPose_planRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_plannerPose_planRequest', $bytes);
    }
}

/** @brief Own all 1 original xarm_planner/pose_planResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_plannerPose_planResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_plannerPose_planResponse',
        'type' => 'xarm_planner/pose_planResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_planner/pose_planResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113',
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
        return Catalog::wire()->encode('Ros1Xarm_plannerPose_planResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_plannerPose_planResponse', $bytes);
    }
}

/** @brief Own all 1 original xarm_planner/single_straight_planRequest fields.
 * @details 56..56 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_plannerSingle_straight_planRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_plannerSingle_straight_planRequest',
        'type' => 'xarm_planner/single_straight_planRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_planner/single_straight_planRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'target',
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
                'element_minimum' => 56
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original target field; geometry_msgs/Pose scalar.
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
            $this->target = new Ros1Geometry_msgsPose();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_plannerSingle_straight_planRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_plannerSingle_straight_planRequest', $bytes);
    }
}

/** @brief Own all 1 original xarm_planner/single_straight_planResponse fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_plannerSingle_straight_planResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_plannerSingle_straight_planResponse',
        'type' => 'xarm_planner/single_straight_planResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_planner/single_straight_planResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd',
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
        return Catalog::wire()->encode('Ros1Xarm_plannerSingle_straight_planResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_plannerSingle_straight_planResponse', $bytes);
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
            'Ros1Geometry_msgsPoint' => Ros1Geometry_msgsPoint::SCHEMA + ['class' => Ros1Geometry_msgsPoint::class],
            'Ros1Geometry_msgsQuaternion' => Ros1Geometry_msgsQuaternion::SCHEMA + ['class' => Ros1Geometry_msgsQuaternion::class],
            'Ros1Geometry_msgsPose' => Ros1Geometry_msgsPose::SCHEMA + ['class' => Ros1Geometry_msgsPose::class],
            'Ros1Xarm_msgsIOState' => Ros1Xarm_msgsIOState::SCHEMA + ['class' => Ros1Xarm_msgsIOState::class],
            'Ros1Xarm_msgsRobotMsg' => Ros1Xarm_msgsRobotMsg::SCHEMA + ['class' => Ros1Xarm_msgsRobotMsg::class],
            'Ros1Xarm_msgsClearErrRequest' => Ros1Xarm_msgsClearErrRequest::SCHEMA + ['class' => Ros1Xarm_msgsClearErrRequest::class],
            'Ros1Xarm_msgsClearErrResponse' => Ros1Xarm_msgsClearErrResponse::SCHEMA + ['class' => Ros1Xarm_msgsClearErrResponse::class],
            'Ros1Xarm_msgsGetAnalogIORequest' => Ros1Xarm_msgsGetAnalogIORequest::SCHEMA + ['class' => Ros1Xarm_msgsGetAnalogIORequest::class],
            'Ros1Xarm_msgsGetAnalogIOResponse' => Ros1Xarm_msgsGetAnalogIOResponse::SCHEMA + ['class' => Ros1Xarm_msgsGetAnalogIOResponse::class],
            'Ros1Xarm_msgsGetDigitalIORequest' => Ros1Xarm_msgsGetDigitalIORequest::SCHEMA + ['class' => Ros1Xarm_msgsGetDigitalIORequest::class],
            'Ros1Xarm_msgsGetDigitalIOResponse' => Ros1Xarm_msgsGetDigitalIOResponse::SCHEMA + ['class' => Ros1Xarm_msgsGetDigitalIOResponse::class],
            'Ros1Xarm_msgsMoveRequest' => Ros1Xarm_msgsMoveRequest::SCHEMA + ['class' => Ros1Xarm_msgsMoveRequest::class],
            'Ros1Xarm_msgsMoveResponse' => Ros1Xarm_msgsMoveResponse::SCHEMA + ['class' => Ros1Xarm_msgsMoveResponse::class],
            'Ros1Xarm_msgsSetAxisRequest' => Ros1Xarm_msgsSetAxisRequest::SCHEMA + ['class' => Ros1Xarm_msgsSetAxisRequest::class],
            'Ros1Xarm_msgsSetAxisResponse' => Ros1Xarm_msgsSetAxisResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetAxisResponse::class],
            'Ros1Xarm_msgsSetDigitalIORequest' => Ros1Xarm_msgsSetDigitalIORequest::SCHEMA + ['class' => Ros1Xarm_msgsSetDigitalIORequest::class],
            'Ros1Xarm_msgsSetDigitalIOResponse' => Ros1Xarm_msgsSetDigitalIOResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetDigitalIOResponse::class],
            'Ros1Xarm_msgsSetInt16Request' => Ros1Xarm_msgsSetInt16Request::SCHEMA + ['class' => Ros1Xarm_msgsSetInt16Request::class],
            'Ros1Xarm_msgsSetInt16Response' => Ros1Xarm_msgsSetInt16Response::SCHEMA + ['class' => Ros1Xarm_msgsSetInt16Response::class],
            'Ros1Xarm_msgsTCPOffsetRequest' => Ros1Xarm_msgsTCPOffsetRequest::SCHEMA + ['class' => Ros1Xarm_msgsTCPOffsetRequest::class],
            'Ros1Xarm_msgsTCPOffsetResponse' => Ros1Xarm_msgsTCPOffsetResponse::SCHEMA + ['class' => Ros1Xarm_msgsTCPOffsetResponse::class],
            'Ros1Xarm_plannerExec_planRequest' => Ros1Xarm_plannerExec_planRequest::SCHEMA + ['class' => Ros1Xarm_plannerExec_planRequest::class],
            'Ros1Xarm_plannerExec_planResponse' => Ros1Xarm_plannerExec_planResponse::SCHEMA + ['class' => Ros1Xarm_plannerExec_planResponse::class],
            'Ros1Xarm_plannerJoint_planRequest' => Ros1Xarm_plannerJoint_planRequest::SCHEMA + ['class' => Ros1Xarm_plannerJoint_planRequest::class],
            'Ros1Xarm_plannerJoint_planResponse' => Ros1Xarm_plannerJoint_planResponse::SCHEMA + ['class' => Ros1Xarm_plannerJoint_planResponse::class],
            'Ros1Xarm_plannerPose_planRequest' => Ros1Xarm_plannerPose_planRequest::SCHEMA + ['class' => Ros1Xarm_plannerPose_planRequest::class],
            'Ros1Xarm_plannerPose_planResponse' => Ros1Xarm_plannerPose_planResponse::SCHEMA + ['class' => Ros1Xarm_plannerPose_planResponse::class],
            'Ros1Xarm_plannerSingle_straight_planRequest' => Ros1Xarm_plannerSingle_straight_planRequest::SCHEMA + ['class' => Ros1Xarm_plannerSingle_straight_planRequest::class],
            'Ros1Xarm_plannerSingle_straight_planResponse' => Ros1Xarm_plannerSingle_straight_planResponse::SCHEMA + ['class' => Ros1Xarm_plannerSingle_straight_planResponse::class],
        ]);
        return $wire;
    }
}
