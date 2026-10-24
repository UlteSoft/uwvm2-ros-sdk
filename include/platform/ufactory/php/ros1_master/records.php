<?php
declare(strict_types=1);
namespace Uwvm\Ufactory\ros1_master;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

/** @brief Own all 2 original xarm_gripper/MoveGoal fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_gripperMoveGoal
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_gripperMoveGoal',
        'type' => 'xarm_gripper/MoveGoal',
        'ros_version' => 1,
        'native_type' => 'xarm_gripper/MoveGoal',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'target_pulse',
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
                'name' => 'pulse_speed',
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
    /** @brief Original target_pulse field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $target_pulse;
    /** @brief Original pulse_speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pulse_speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('target_pulse', $values))
            $this->target_pulse = $values['target_pulse'];
        else
        {
            $this->target_pulse = 0.0;
        }
        if (array_key_exists('pulse_speed', $values))
            $this->pulse_speed = $values['pulse_speed'];
        else
        {
            $this->pulse_speed = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_gripperMoveGoal', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_gripperMoveGoal', $bytes);
    }
}

/** @brief Own all 2 original xarm_gripper/MoveResult fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_gripperMoveResult
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_gripperMoveResult',
        'type' => 'xarm_gripper/MoveResult',
        'ros_version' => 1,
        'native_type' => 'xarm_gripper/MoveResult',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c',
        'minimum' => 3,
        'maximum' => 3,
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
            ],
            [
                'name' => 'err_code',
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
    /** @brief Original success field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $success;
    /** @brief Original err_code field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_code;
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
        if (array_key_exists('err_code', $values))
            $this->err_code = $values['err_code'];
        else
        {
            $this->err_code = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_gripperMoveResult', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_gripperMoveResult', $bytes);
    }
}

/** @brief Own all 1 original xarm_gripper/MoveFeedback fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_gripperMoveFeedback
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_gripperMoveFeedback',
        'type' => 'xarm_gripper/MoveFeedback',
        'ros_version' => 1,
        'native_type' => 'xarm_gripper/MoveFeedback',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'current_pulse',
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
    /** @brief Original current_pulse field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $current_pulse;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('current_pulse', $values))
            $this->current_pulse = $values['current_pulse'];
        else
        {
            $this->current_pulse = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_gripperMoveFeedback', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_gripperMoveFeedback', $bytes);
    }
}

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

/** @brief Own all 2 original time fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Time
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Time',
        'type' => 'time',
        'ros_version' => 1,
        'native_type' => 'time',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
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
                'element_minimum' => 4
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
                'element_minimum' => 4
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original sec field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sec;
    /** @brief Original nsec field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $nsec;
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
            $this->sec = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('nsec', $values))
            $this->nsec = $values['nsec'];
        else
        {
            $this->nsec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Time', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Time', $bytes);
    }
}

/** @brief Own all 3 original std_msgs/Header fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros1Std_msgsHeader
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Std_msgsHeader',
        'type' => 'std_msgs/Header',
        'ros_version' => 1,
        'native_type' => 'std_msgs/Header',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
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
                'element_minimum' => 4
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
    /** @brief Original seq field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $seq;
    /** @brief Original stamp field; time scalar.
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
        if (array_key_exists('seq', $values))
            $this->seq = $values['seq'];
        else
        {
            $this->seq = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('stamp', $values))
            $this->stamp = $values['stamp'];
        else
        {
            $this->stamp = new Ros1Time();
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
        return Catalog::wire()->encode('Ros1Std_msgsHeader', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Std_msgsHeader', $bytes);
    }
}

/** @brief Own all 9 original xarm_msgs/CIOState fields.
 * @details 76..332 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsCIOState
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsCIOState',
        'type' => 'xarm_msgs/CIOState',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/CIOState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057',
        'minimum' => 76,
        'maximum' => 332,
        'semantics' => '',
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
                'element_minimum' => 16
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
    /** @brief Original header field; std_msgs/Header scalar.
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
            $this->header = new Ros1Std_msgsHeader();
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
        return Catalog::wire()->encode('Ros1Xarm_msgsCIOState', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsCIOState', $bytes);
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

/** @brief Own all 11 original xarm_msgs/RobotMsg fields.
 * @details 82..366 canonical bytes; independent nested defaults.
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
        'codec_identity' => 'UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb',
        'minimum' => 82,
        'maximum' => 366,
        'semantics' => '',
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
                'element_minimum' => 16
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
    /** @brief Original header field; std_msgs/Header scalar.
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
            $this->header = new Ros1Std_msgsHeader();
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

/** @brief Own all 4 original xarm_msgs/VeloMoveMsg fields.
 * @details 10..138 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsVeloMoveMsg
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsVeloMoveMsg',
        'type' => 'xarm_msgs/VeloMoveMsg',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/VeloMoveMsg',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032',
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
                'native_default' => null,
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
                'native_default' => null,
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
            $this->is_sync = false;
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
            $this->duration = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsVeloMoveMsg', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsVeloMoveMsg', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/CallRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsCallRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsCallRequest',
        'type' => 'xarm_msgs/CallRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/CallRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsCallRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsCallRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/CallResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsCallResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsCallResponse',
        'type' => 'xarm_msgs/CallResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/CallResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsCallResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsCallResponse', $bytes);
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

/** @brief Own all 2 original xarm_msgs/ConfigToolModbusRequest fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsConfigToolModbusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsConfigToolModbusRequest',
        'type' => 'xarm_msgs/ConfigToolModbusRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/ConfigToolModbusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'baud_rate',
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
                'name' => 'timeout_ms',
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
    /** @brief Original baud_rate field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $baud_rate;
    /** @brief Original timeout_ms field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout_ms;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('baud_rate', $values))
            $this->baud_rate = $values['baud_rate'];
        else
        {
            $this->baud_rate = 0;
        }
        if (array_key_exists('timeout_ms', $values))
            $this->timeout_ms = $values['timeout_ms'];
        else
        {
            $this->timeout_ms = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsConfigToolModbusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsConfigToolModbusRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/ConfigToolModbusResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsConfigToolModbusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsConfigToolModbusResponse',
        'type' => 'xarm_msgs/ConfigToolModbusResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/ConfigToolModbusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsConfigToolModbusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsConfigToolModbusResponse', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/FtCaliLoadRequest fields.
 * @details 5..133 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsFtCaliLoadRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsFtCaliLoadRequest',
        'type' => 'xarm_msgs/FtCaliLoadRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/FtCaliLoadRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167',
        'minimum' => 5,
        'maximum' => 133,
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
    /** @brief Original datas field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $datas;
    /** @brief Original association_setting_tcp_load field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $association_setting_tcp_load;
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsFtCaliLoadRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsFtCaliLoadRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/FtCaliLoadResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsFtCaliLoadResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsFtCaliLoadResponse',
        'type' => 'xarm_msgs/FtCaliLoadResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/FtCaliLoadResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsFtCaliLoadResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsFtCaliLoadResponse', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/FtIdenLoadRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsFtIdenLoadRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsFtIdenLoadRequest',
        'type' => 'xarm_msgs/FtIdenLoadRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/FtIdenLoadRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsFtIdenLoadRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsFtIdenLoadRequest', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/FtIdenLoadResponse fields.
 * @details 10..394 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsFtIdenLoadResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsFtIdenLoadResponse',
        'type' => 'xarm_msgs/FtIdenLoadResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/FtIdenLoadResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsFtIdenLoadResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsFtIdenLoadResponse', $bytes);
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

/** @brief Own all 1 original xarm_msgs/GetControllerDigitalIORequest fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetControllerDigitalIORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetControllerDigitalIORequest',
        'type' => 'xarm_msgs/GetControllerDigitalIORequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetControllerDigitalIORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c',
        'minimum' => 2,
        'maximum' => 2,
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original io_num field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $io_num;
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsGetControllerDigitalIORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetControllerDigitalIORequest', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/GetControllerDigitalIOResponse fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetControllerDigitalIOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetControllerDigitalIOResponse',
        'type' => 'xarm_msgs/GetControllerDigitalIOResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetControllerDigitalIOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161',
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
    /** @brief Original value field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $value;
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
        if (array_key_exists('value', $values))
            $this->value = $values['value'];
        else
        {
            $this->value = 0;
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetControllerDigitalIOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetControllerDigitalIOResponse', $bytes);
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

/** @brief Own all 0 original xarm_msgs/GetErrRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetErrRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetErrRequest',
        'type' => 'xarm_msgs/GetErrRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetErrRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetErrRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetErrRequest', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/GetErrResponse fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetErrResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetErrResponse',
        'type' => 'xarm_msgs/GetErrResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetErrResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
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
    /** @brief Original err field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err;
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
        if (array_key_exists('err', $values))
            $this->err = $values['err'];
        else
        {
            $this->err = 0;
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetErrResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetErrResponse', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/GetFloat32ListRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetFloat32ListRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetFloat32ListRequest',
        'type' => 'xarm_msgs/GetFloat32ListRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetFloat32ListRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetFloat32ListRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetFloat32ListRequest', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/GetFloat32ListResponse fields.
 * @details 10..394 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetFloat32ListResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetFloat32ListResponse',
        'type' => 'xarm_msgs/GetFloat32ListResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetFloat32ListResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetFloat32ListResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetFloat32ListResponse', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/GetInt32Request fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetInt32Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetInt32Request',
        'type' => 'xarm_msgs/GetInt32Request',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetInt32Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetInt32Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetInt32Request', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/GetInt32Response fields.
 * @details 10..266 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetInt32Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetInt32Response',
        'type' => 'xarm_msgs/GetInt32Response',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetInt32Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d',
        'minimum' => 10,
        'maximum' => 266,
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
    /** @brief Original data field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $data;
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
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = 0;
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetInt32Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetInt32Response', $bytes);
    }
}

/** @brief Own all 5 original xarm_msgs/GetSetModbusDataRequest fields.
 * @details 9..4105 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetSetModbusDataRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetSetModbusDataRequest',
        'type' => 'xarm_msgs/GetSetModbusDataRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetSetModbusDataRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7',
        'minimum' => 9,
        'maximum' => 4105,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'send_data',
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
                'name' => 'respond_len',
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
                'native_default' => null,
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
                'native_default' => null,
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
    /** @brief Original send_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $send_data;
    /** @brief Original respond_len field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $respond_len;
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
        if (array_key_exists('send_data', $values))
            $this->send_data = $values['send_data'];
        else
        {
            $this->send_data = [];
        }
        if (array_key_exists('respond_len', $values))
            $this->respond_len = $values['respond_len'];
        else
        {
            $this->respond_len = 0;
        }
        if (array_key_exists('host_id', $values))
            $this->host_id = $values['host_id'];
        else
        {
            $this->host_id = 0;
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGetSetModbusDataRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetSetModbusDataRequest', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/GetSetModbusDataResponse fields.
 * @details 10..4362 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGetSetModbusDataResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGetSetModbusDataResponse',
        'type' => 'xarm_msgs/GetSetModbusDataResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GetSetModbusDataResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead',
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
                'name' => 'respond_data',
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
    /** @brief Original respond_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $respond_data;
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
        if (array_key_exists('respond_data', $values))
            $this->respond_data = $values['respond_data'];
        else
        {
            $this->respond_data = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsGetSetModbusDataResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGetSetModbusDataResponse', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/GripperConfigRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGripperConfigRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGripperConfigRequest',
        'type' => 'xarm_msgs/GripperConfigRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GripperConfigRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pulse_vel',
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
    /** @brief Original pulse_vel field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pulse_vel;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('pulse_vel', $values))
            $this->pulse_vel = $values['pulse_vel'];
        else
        {
            $this->pulse_vel = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsGripperConfigRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGripperConfigRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/GripperConfigResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGripperConfigResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGripperConfigResponse',
        'type' => 'xarm_msgs/GripperConfigResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GripperConfigResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGripperConfigResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGripperConfigResponse', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/GripperMoveRequest fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGripperMoveRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGripperMoveRequest',
        'type' => 'xarm_msgs/GripperMoveRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GripperMoveRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pulse_pos',
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
    /** @brief Original pulse_pos field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pulse_pos;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('pulse_pos', $values))
            $this->pulse_pos = $values['pulse_pos'];
        else
        {
            $this->pulse_pos = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsGripperMoveRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGripperMoveRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/GripperMoveResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGripperMoveResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGripperMoveResponse',
        'type' => 'xarm_msgs/GripperMoveResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GripperMoveResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGripperMoveResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGripperMoveResponse', $bytes);
    }
}

/** @brief Own all 0 original xarm_msgs/GripperStateRequest fields.
 * @details 0..0 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGripperStateRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGripperStateRequest',
        'type' => 'xarm_msgs/GripperStateRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GripperStateRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsGripperStateRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGripperStateRequest', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/GripperStateResponse fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsGripperStateResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsGripperStateResponse',
        'type' => 'xarm_msgs/GripperStateResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/GripperStateResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6',
        'minimum' => 12,
        'maximum' => 268,
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
                'name' => 'curr_pos',
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
                'name' => 'err_code',
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
    /** @brief Original curr_pos field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $curr_pos;
    /** @brief Original err_code field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_code;
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
        if (array_key_exists('curr_pos', $values))
            $this->curr_pos = $values['curr_pos'];
        else
        {
            $this->curr_pos = 0.0;
        }
        if (array_key_exists('err_code', $values))
            $this->err_code = $values['err_code'];
        else
        {
            $this->err_code = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsGripperStateResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsGripperStateResponse', $bytes);
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

/** @brief Own all 6 original xarm_msgs/MoveAxisAngleRequest fields.
 * @details 20..148 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsMoveAxisAngleRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsMoveAxisAngleRequest',
        'type' => 'xarm_msgs/MoveAxisAngleRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/MoveAxisAngleRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30',
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
                'name' => 'relative',
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
    /** @brief Original coord field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $coord;
    /** @brief Original relative field; int16 scalar.
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
        if (array_key_exists('coord', $values))
            $this->coord = $values['coord'];
        else
        {
            $this->coord = 0;
        }
        if (array_key_exists('relative', $values))
            $this->relative = $values['relative'];
        else
        {
            $this->relative = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsMoveAxisAngleRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsMoveAxisAngleRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/MoveAxisAngleResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsMoveAxisAngleResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsMoveAxisAngleResponse',
        'type' => 'xarm_msgs/MoveAxisAngleResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/MoveAxisAngleResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsMoveAxisAngleResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsMoveAxisAngleResponse', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/MoveVeloRequest fields.
 * @details 8..136 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsMoveVeloRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsMoveVeloRequest',
        'type' => 'xarm_msgs/MoveVeloRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/MoveVeloRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204',
        'minimum' => 8,
        'maximum' => 136,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'velocities',
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
                'name' => 'jnt_sync',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original velocities field; float32 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $velocities;
    /** @brief Original jnt_sync field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $jnt_sync;
    /** @brief Original coord field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $coord;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('velocities', $values))
            $this->velocities = $values['velocities'];
        else
        {
            $this->velocities = [];
        }
        if (array_key_exists('jnt_sync', $values))
            $this->jnt_sync = $values['jnt_sync'];
        else
        {
            $this->jnt_sync = 0;
        }
        if (array_key_exists('coord', $values))
            $this->coord = $values['coord'];
        else
        {
            $this->coord = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsMoveVeloRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsMoveVeloRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/MoveVeloResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsMoveVeloResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsMoveVeloResponse',
        'type' => 'xarm_msgs/MoveVeloResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/MoveVeloResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsMoveVeloResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsMoveVeloResponse', $bytes);
    }
}

/** @brief Own all 4 original xarm_msgs/MoveVelocityRequest fields.
 * @details 10..138 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsMoveVelocityRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsMoveVelocityRequest',
        'type' => 'xarm_msgs/MoveVelocityRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/MoveVelocityRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef',
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
                'native_default' => null,
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
                'native_default' => null,
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
            $this->is_sync = false;
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
            $this->duration = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsMoveVelocityRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsMoveVelocityRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/MoveVelocityResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsMoveVelocityResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsMoveVelocityResponse',
        'type' => 'xarm_msgs/MoveVelocityResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/MoveVelocityResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsMoveVelocityResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsMoveVelocityResponse', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/PlayTrajRequest fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsPlayTrajRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsPlayTrajRequest',
        'type' => 'xarm_msgs/PlayTrajRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/PlayTrajRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'traj_file',
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
                'name' => 'repeat_times',
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
                'name' => 'speed_factor',
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
    /** @brief Original traj_file field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $traj_file;
    /** @brief Original repeat_times field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $repeat_times;
    /** @brief Original speed_factor field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed_factor;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('traj_file', $values))
            $this->traj_file = $values['traj_file'];
        else
        {
            $this->traj_file = '';
        }
        if (array_key_exists('repeat_times', $values))
            $this->repeat_times = $values['repeat_times'];
        else
        {
            $this->repeat_times = 0;
        }
        if (array_key_exists('speed_factor', $values))
            $this->speed_factor = $values['speed_factor'];
        else
        {
            $this->speed_factor = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsPlayTrajRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsPlayTrajRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/PlayTrajResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsPlayTrajResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsPlayTrajResponse',
        'type' => 'xarm_msgs/PlayTrajResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/PlayTrajResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsPlayTrajResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsPlayTrajResponse', $bytes);
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

/** @brief Own all 2 original xarm_msgs/SetControllerAnalogIORequest fields.
 * @details 6..6 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetControllerAnalogIORequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetControllerAnalogIORequest',
        'type' => 'xarm_msgs/SetControllerAnalogIORequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetControllerAnalogIORequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66',
        'minimum' => 6,
        'maximum' => 6,
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
            ],
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original port_num field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port_num;
    /** @brief Original analog_value field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $analog_value;
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
        if (array_key_exists('analog_value', $values))
            $this->analog_value = $values['analog_value'];
        else
        {
            $this->analog_value = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsSetControllerAnalogIORequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetControllerAnalogIORequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetControllerAnalogIOResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetControllerAnalogIOResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetControllerAnalogIOResponse',
        'type' => 'xarm_msgs/SetControllerAnalogIOResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetControllerAnalogIOResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetControllerAnalogIOResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetControllerAnalogIOResponse', $bytes);
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

/** @brief Own all 1 original xarm_msgs/SetFloat32Request fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetFloat32Request
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetFloat32Request',
        'type' => 'xarm_msgs/SetFloat32Request',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetFloat32Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetFloat32Request', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetFloat32Request', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetFloat32Response fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetFloat32Response
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetFloat32Response',
        'type' => 'xarm_msgs/SetFloat32Response',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetFloat32Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetFloat32Response', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetFloat32Response', $bytes);
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

/** @brief Own all 4 original xarm_msgs/SetLoadRequest fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetLoadRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetLoadRequest',
        'type' => 'xarm_msgs/SetLoadRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetLoadRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mass',
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
                'name' => 'xc',
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
                'name' => 'yc',
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
                'name' => 'zc',
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
    /** @brief Original mass field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mass;
    /** @brief Original xc field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $xc;
    /** @brief Original yc field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $yc;
    /** @brief Original zc field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $zc;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mass', $values))
            $this->mass = $values['mass'];
        else
        {
            $this->mass = 0.0;
        }
        if (array_key_exists('xc', $values))
            $this->xc = $values['xc'];
        else
        {
            $this->xc = 0.0;
        }
        if (array_key_exists('yc', $values))
            $this->yc = $values['yc'];
        else
        {
            $this->yc = 0.0;
        }
        if (array_key_exists('zc', $values))
            $this->zc = $values['zc'];
        else
        {
            $this->zc = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsSetLoadRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetLoadRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetLoadResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetLoadResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetLoadResponse',
        'type' => 'xarm_msgs/SetLoadResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetLoadResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetLoadResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetLoadResponse', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetModbusTimeoutRequest fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetModbusTimeoutRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetModbusTimeoutRequest',
        'type' => 'xarm_msgs/SetModbusTimeoutRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetModbusTimeoutRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'timeout_ms',
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
    /** @brief Original timeout_ms field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout_ms;
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
        if (array_key_exists('timeout_ms', $values))
            $this->timeout_ms = $values['timeout_ms'];
        else
        {
            $this->timeout_ms = 0;
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetModbusTimeoutRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetModbusTimeoutRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetModbusTimeoutResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetModbusTimeoutResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetModbusTimeoutResponse',
        'type' => 'xarm_msgs/SetModbusTimeoutResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetModbusTimeoutResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8',
        'minimum' => 6,
        'maximum' => 262,
        'semantics' => '',
        'fields' => [
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original message field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message;
    /** @brief Original ret field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ret;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('message', $values))
            $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
        if (array_key_exists('ret', $values))
            $this->ret = $values['ret'];
        else
        {
            $this->ret = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsSetModbusTimeoutResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetModbusTimeoutResponse', $bytes);
    }
}

/** @brief Own all 1 original xarm_msgs/SetMultipleIntsRequest fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetMultipleIntsRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetMultipleIntsRequest',
        'type' => 'xarm_msgs/SetMultipleIntsRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetMultipleIntsRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'data_int',
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
    /** @brief Original data_int field; int16 sequence.
     * @details Active count at most 32; text bound 0 bytes. */
    public mixed $data_int;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('data_int', $values))
            $this->data_int = $values['data_int'];
        else
        {
            $this->data_int = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsSetMultipleIntsRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetMultipleIntsRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetMultipleIntsResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetMultipleIntsResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetMultipleIntsResponse',
        'type' => 'xarm_msgs/SetMultipleIntsResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetMultipleIntsResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetMultipleIntsResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetMultipleIntsResponse', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetStringRequest fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetStringRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetStringRequest',
        'type' => 'xarm_msgs/SetStringRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetStringRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'str_data',
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
    /** @brief Original str_data field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $str_data;
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
        if (array_key_exists('str_data', $values))
            $this->str_data = $values['str_data'];
        else
        {
            $this->str_data = '';
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsSetStringRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetStringRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetStringResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetStringResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetStringResponse',
        'type' => 'xarm_msgs/SetStringResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetStringResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsSetStringResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetStringResponse', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/SetToolModbusRequest fields.
 * @details 6..4102 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetToolModbusRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetToolModbusRequest',
        'type' => 'xarm_msgs/SetToolModbusRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetToolModbusRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6',
        'minimum' => 6,
        'maximum' => 4102,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'send_data',
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
                'name' => 'respond_len',
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
    /** @brief Original send_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $send_data;
    /** @brief Original respond_len field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $respond_len;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('send_data', $values))
            $this->send_data = $values['send_data'];
        else
        {
            $this->send_data = [];
        }
        if (array_key_exists('respond_len', $values))
            $this->respond_len = $values['respond_len'];
        else
        {
            $this->respond_len = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsSetToolModbusRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetToolModbusRequest', $bytes);
    }
}

/** @brief Own all 3 original xarm_msgs/SetToolModbusResponse fields.
 * @details 10..4362 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsSetToolModbusResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsSetToolModbusResponse',
        'type' => 'xarm_msgs/SetToolModbusResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/SetToolModbusResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76',
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
                'name' => 'respond_data',
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
    /** @brief Original respond_data field; uint8 sequence.
     * @details Active count at most 4096; text bound 0 bytes. */
    public mixed $respond_data;
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
        if (array_key_exists('respond_data', $values))
            $this->respond_data = $values['respond_data'];
        else
        {
            $this->respond_data = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsSetToolModbusResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsSetToolModbusResponse', $bytes);
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

/** @brief Own all 6 original xarm_msgs/VacuumGripperCtrlRequest fields.
 * @details 13..13 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsVacuumGripperCtrlRequest
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsVacuumGripperCtrlRequest',
        'type' => 'xarm_msgs/VacuumGripperCtrlRequest',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/VacuumGripperCtrlRequest',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff',
        'minimum' => 13,
        'maximum' => 13,
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
                'native_default' => null,
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
                'native_default' => null,
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
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'sync',
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
                'name' => 'hardware_version',
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
    /** @brief Original sync field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sync;
    /** @brief Original hardware_version field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $hardware_version;
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
            $this->timeout = 0.0;
        }
        if (array_key_exists('delay_sec', $values))
            $this->delay_sec = $values['delay_sec'];
        else
        {
            $this->delay_sec = 0.0;
        }
        if (array_key_exists('sync', $values))
            $this->sync = $values['sync'];
        else
        {
            $this->sync = false;
        }
        if (array_key_exists('hardware_version', $values))
            $this->hardware_version = $values['hardware_version'];
        else
        {
            $this->hardware_version = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Xarm_msgsVacuumGripperCtrlRequest', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsVacuumGripperCtrlRequest', $bytes);
    }
}

/** @brief Own all 2 original xarm_msgs/VacuumGripperCtrlResponse fields.
 * @details 6..262 canonical bytes; independent nested defaults.
 */
final class Ros1Xarm_msgsVacuumGripperCtrlResponse
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Xarm_msgsVacuumGripperCtrlResponse',
        'type' => 'xarm_msgs/VacuumGripperCtrlResponse',
        'ros_version' => 1,
        'native_type' => 'xarm_msgs/VacuumGripperCtrlResponse',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540',
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
        return Catalog::wire()->encode('Ros1Xarm_msgsVacuumGripperCtrlResponse', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Xarm_msgsVacuumGripperCtrlResponse', $bytes);
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
            'Ros1Xarm_gripperMoveGoal' => Ros1Xarm_gripperMoveGoal::SCHEMA + ['class' => Ros1Xarm_gripperMoveGoal::class],
            'Ros1Xarm_gripperMoveResult' => Ros1Xarm_gripperMoveResult::SCHEMA + ['class' => Ros1Xarm_gripperMoveResult::class],
            'Ros1Xarm_gripperMoveFeedback' => Ros1Xarm_gripperMoveFeedback::SCHEMA + ['class' => Ros1Xarm_gripperMoveFeedback::class],
            'Ros1Geometry_msgsPoint' => Ros1Geometry_msgsPoint::SCHEMA + ['class' => Ros1Geometry_msgsPoint::class],
            'Ros1Geometry_msgsQuaternion' => Ros1Geometry_msgsQuaternion::SCHEMA + ['class' => Ros1Geometry_msgsQuaternion::class],
            'Ros1Geometry_msgsPose' => Ros1Geometry_msgsPose::SCHEMA + ['class' => Ros1Geometry_msgsPose::class],
            'Ros1Time' => Ros1Time::SCHEMA + ['class' => Ros1Time::class],
            'Ros1Std_msgsHeader' => Ros1Std_msgsHeader::SCHEMA + ['class' => Ros1Std_msgsHeader::class],
            'Ros1Xarm_msgsCIOState' => Ros1Xarm_msgsCIOState::SCHEMA + ['class' => Ros1Xarm_msgsCIOState::class],
            'Ros1Xarm_msgsIOState' => Ros1Xarm_msgsIOState::SCHEMA + ['class' => Ros1Xarm_msgsIOState::class],
            'Ros1Xarm_msgsRobotMsg' => Ros1Xarm_msgsRobotMsg::SCHEMA + ['class' => Ros1Xarm_msgsRobotMsg::class],
            'Ros1Xarm_msgsVeloMoveMsg' => Ros1Xarm_msgsVeloMoveMsg::SCHEMA + ['class' => Ros1Xarm_msgsVeloMoveMsg::class],
            'Ros1Xarm_msgsCallRequest' => Ros1Xarm_msgsCallRequest::SCHEMA + ['class' => Ros1Xarm_msgsCallRequest::class],
            'Ros1Xarm_msgsCallResponse' => Ros1Xarm_msgsCallResponse::SCHEMA + ['class' => Ros1Xarm_msgsCallResponse::class],
            'Ros1Xarm_msgsClearErrRequest' => Ros1Xarm_msgsClearErrRequest::SCHEMA + ['class' => Ros1Xarm_msgsClearErrRequest::class],
            'Ros1Xarm_msgsClearErrResponse' => Ros1Xarm_msgsClearErrResponse::SCHEMA + ['class' => Ros1Xarm_msgsClearErrResponse::class],
            'Ros1Xarm_msgsConfigToolModbusRequest' => Ros1Xarm_msgsConfigToolModbusRequest::SCHEMA + ['class' => Ros1Xarm_msgsConfigToolModbusRequest::class],
            'Ros1Xarm_msgsConfigToolModbusResponse' => Ros1Xarm_msgsConfigToolModbusResponse::SCHEMA + ['class' => Ros1Xarm_msgsConfigToolModbusResponse::class],
            'Ros1Xarm_msgsFtCaliLoadRequest' => Ros1Xarm_msgsFtCaliLoadRequest::SCHEMA + ['class' => Ros1Xarm_msgsFtCaliLoadRequest::class],
            'Ros1Xarm_msgsFtCaliLoadResponse' => Ros1Xarm_msgsFtCaliLoadResponse::SCHEMA + ['class' => Ros1Xarm_msgsFtCaliLoadResponse::class],
            'Ros1Xarm_msgsFtIdenLoadRequest' => Ros1Xarm_msgsFtIdenLoadRequest::SCHEMA + ['class' => Ros1Xarm_msgsFtIdenLoadRequest::class],
            'Ros1Xarm_msgsFtIdenLoadResponse' => Ros1Xarm_msgsFtIdenLoadResponse::SCHEMA + ['class' => Ros1Xarm_msgsFtIdenLoadResponse::class],
            'Ros1Xarm_msgsGetAnalogIORequest' => Ros1Xarm_msgsGetAnalogIORequest::SCHEMA + ['class' => Ros1Xarm_msgsGetAnalogIORequest::class],
            'Ros1Xarm_msgsGetAnalogIOResponse' => Ros1Xarm_msgsGetAnalogIOResponse::SCHEMA + ['class' => Ros1Xarm_msgsGetAnalogIOResponse::class],
            'Ros1Xarm_msgsGetControllerDigitalIORequest' => Ros1Xarm_msgsGetControllerDigitalIORequest::SCHEMA + ['class' => Ros1Xarm_msgsGetControllerDigitalIORequest::class],
            'Ros1Xarm_msgsGetControllerDigitalIOResponse' => Ros1Xarm_msgsGetControllerDigitalIOResponse::SCHEMA + ['class' => Ros1Xarm_msgsGetControllerDigitalIOResponse::class],
            'Ros1Xarm_msgsGetDigitalIORequest' => Ros1Xarm_msgsGetDigitalIORequest::SCHEMA + ['class' => Ros1Xarm_msgsGetDigitalIORequest::class],
            'Ros1Xarm_msgsGetDigitalIOResponse' => Ros1Xarm_msgsGetDigitalIOResponse::SCHEMA + ['class' => Ros1Xarm_msgsGetDigitalIOResponse::class],
            'Ros1Xarm_msgsGetErrRequest' => Ros1Xarm_msgsGetErrRequest::SCHEMA + ['class' => Ros1Xarm_msgsGetErrRequest::class],
            'Ros1Xarm_msgsGetErrResponse' => Ros1Xarm_msgsGetErrResponse::SCHEMA + ['class' => Ros1Xarm_msgsGetErrResponse::class],
            'Ros1Xarm_msgsGetFloat32ListRequest' => Ros1Xarm_msgsGetFloat32ListRequest::SCHEMA + ['class' => Ros1Xarm_msgsGetFloat32ListRequest::class],
            'Ros1Xarm_msgsGetFloat32ListResponse' => Ros1Xarm_msgsGetFloat32ListResponse::SCHEMA + ['class' => Ros1Xarm_msgsGetFloat32ListResponse::class],
            'Ros1Xarm_msgsGetInt32Request' => Ros1Xarm_msgsGetInt32Request::SCHEMA + ['class' => Ros1Xarm_msgsGetInt32Request::class],
            'Ros1Xarm_msgsGetInt32Response' => Ros1Xarm_msgsGetInt32Response::SCHEMA + ['class' => Ros1Xarm_msgsGetInt32Response::class],
            'Ros1Xarm_msgsGetSetModbusDataRequest' => Ros1Xarm_msgsGetSetModbusDataRequest::SCHEMA + ['class' => Ros1Xarm_msgsGetSetModbusDataRequest::class],
            'Ros1Xarm_msgsGetSetModbusDataResponse' => Ros1Xarm_msgsGetSetModbusDataResponse::SCHEMA + ['class' => Ros1Xarm_msgsGetSetModbusDataResponse::class],
            'Ros1Xarm_msgsGripperConfigRequest' => Ros1Xarm_msgsGripperConfigRequest::SCHEMA + ['class' => Ros1Xarm_msgsGripperConfigRequest::class],
            'Ros1Xarm_msgsGripperConfigResponse' => Ros1Xarm_msgsGripperConfigResponse::SCHEMA + ['class' => Ros1Xarm_msgsGripperConfigResponse::class],
            'Ros1Xarm_msgsGripperMoveRequest' => Ros1Xarm_msgsGripperMoveRequest::SCHEMA + ['class' => Ros1Xarm_msgsGripperMoveRequest::class],
            'Ros1Xarm_msgsGripperMoveResponse' => Ros1Xarm_msgsGripperMoveResponse::SCHEMA + ['class' => Ros1Xarm_msgsGripperMoveResponse::class],
            'Ros1Xarm_msgsGripperStateRequest' => Ros1Xarm_msgsGripperStateRequest::SCHEMA + ['class' => Ros1Xarm_msgsGripperStateRequest::class],
            'Ros1Xarm_msgsGripperStateResponse' => Ros1Xarm_msgsGripperStateResponse::SCHEMA + ['class' => Ros1Xarm_msgsGripperStateResponse::class],
            'Ros1Xarm_msgsMoveRequest' => Ros1Xarm_msgsMoveRequest::SCHEMA + ['class' => Ros1Xarm_msgsMoveRequest::class],
            'Ros1Xarm_msgsMoveResponse' => Ros1Xarm_msgsMoveResponse::SCHEMA + ['class' => Ros1Xarm_msgsMoveResponse::class],
            'Ros1Xarm_msgsMoveAxisAngleRequest' => Ros1Xarm_msgsMoveAxisAngleRequest::SCHEMA + ['class' => Ros1Xarm_msgsMoveAxisAngleRequest::class],
            'Ros1Xarm_msgsMoveAxisAngleResponse' => Ros1Xarm_msgsMoveAxisAngleResponse::SCHEMA + ['class' => Ros1Xarm_msgsMoveAxisAngleResponse::class],
            'Ros1Xarm_msgsMoveVeloRequest' => Ros1Xarm_msgsMoveVeloRequest::SCHEMA + ['class' => Ros1Xarm_msgsMoveVeloRequest::class],
            'Ros1Xarm_msgsMoveVeloResponse' => Ros1Xarm_msgsMoveVeloResponse::SCHEMA + ['class' => Ros1Xarm_msgsMoveVeloResponse::class],
            'Ros1Xarm_msgsMoveVelocityRequest' => Ros1Xarm_msgsMoveVelocityRequest::SCHEMA + ['class' => Ros1Xarm_msgsMoveVelocityRequest::class],
            'Ros1Xarm_msgsMoveVelocityResponse' => Ros1Xarm_msgsMoveVelocityResponse::SCHEMA + ['class' => Ros1Xarm_msgsMoveVelocityResponse::class],
            'Ros1Xarm_msgsPlayTrajRequest' => Ros1Xarm_msgsPlayTrajRequest::SCHEMA + ['class' => Ros1Xarm_msgsPlayTrajRequest::class],
            'Ros1Xarm_msgsPlayTrajResponse' => Ros1Xarm_msgsPlayTrajResponse::SCHEMA + ['class' => Ros1Xarm_msgsPlayTrajResponse::class],
            'Ros1Xarm_msgsSetAxisRequest' => Ros1Xarm_msgsSetAxisRequest::SCHEMA + ['class' => Ros1Xarm_msgsSetAxisRequest::class],
            'Ros1Xarm_msgsSetAxisResponse' => Ros1Xarm_msgsSetAxisResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetAxisResponse::class],
            'Ros1Xarm_msgsSetControllerAnalogIORequest' => Ros1Xarm_msgsSetControllerAnalogIORequest::SCHEMA + ['class' => Ros1Xarm_msgsSetControllerAnalogIORequest::class],
            'Ros1Xarm_msgsSetControllerAnalogIOResponse' => Ros1Xarm_msgsSetControllerAnalogIOResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetControllerAnalogIOResponse::class],
            'Ros1Xarm_msgsSetDigitalIORequest' => Ros1Xarm_msgsSetDigitalIORequest::SCHEMA + ['class' => Ros1Xarm_msgsSetDigitalIORequest::class],
            'Ros1Xarm_msgsSetDigitalIOResponse' => Ros1Xarm_msgsSetDigitalIOResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetDigitalIOResponse::class],
            'Ros1Xarm_msgsSetFloat32Request' => Ros1Xarm_msgsSetFloat32Request::SCHEMA + ['class' => Ros1Xarm_msgsSetFloat32Request::class],
            'Ros1Xarm_msgsSetFloat32Response' => Ros1Xarm_msgsSetFloat32Response::SCHEMA + ['class' => Ros1Xarm_msgsSetFloat32Response::class],
            'Ros1Xarm_msgsSetInt16Request' => Ros1Xarm_msgsSetInt16Request::SCHEMA + ['class' => Ros1Xarm_msgsSetInt16Request::class],
            'Ros1Xarm_msgsSetInt16Response' => Ros1Xarm_msgsSetInt16Response::SCHEMA + ['class' => Ros1Xarm_msgsSetInt16Response::class],
            'Ros1Xarm_msgsSetLoadRequest' => Ros1Xarm_msgsSetLoadRequest::SCHEMA + ['class' => Ros1Xarm_msgsSetLoadRequest::class],
            'Ros1Xarm_msgsSetLoadResponse' => Ros1Xarm_msgsSetLoadResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetLoadResponse::class],
            'Ros1Xarm_msgsSetModbusTimeoutRequest' => Ros1Xarm_msgsSetModbusTimeoutRequest::SCHEMA + ['class' => Ros1Xarm_msgsSetModbusTimeoutRequest::class],
            'Ros1Xarm_msgsSetModbusTimeoutResponse' => Ros1Xarm_msgsSetModbusTimeoutResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetModbusTimeoutResponse::class],
            'Ros1Xarm_msgsSetMultipleIntsRequest' => Ros1Xarm_msgsSetMultipleIntsRequest::SCHEMA + ['class' => Ros1Xarm_msgsSetMultipleIntsRequest::class],
            'Ros1Xarm_msgsSetMultipleIntsResponse' => Ros1Xarm_msgsSetMultipleIntsResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetMultipleIntsResponse::class],
            'Ros1Xarm_msgsSetStringRequest' => Ros1Xarm_msgsSetStringRequest::SCHEMA + ['class' => Ros1Xarm_msgsSetStringRequest::class],
            'Ros1Xarm_msgsSetStringResponse' => Ros1Xarm_msgsSetStringResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetStringResponse::class],
            'Ros1Xarm_msgsSetToolModbusRequest' => Ros1Xarm_msgsSetToolModbusRequest::SCHEMA + ['class' => Ros1Xarm_msgsSetToolModbusRequest::class],
            'Ros1Xarm_msgsSetToolModbusResponse' => Ros1Xarm_msgsSetToolModbusResponse::SCHEMA + ['class' => Ros1Xarm_msgsSetToolModbusResponse::class],
            'Ros1Xarm_msgsTCPOffsetRequest' => Ros1Xarm_msgsTCPOffsetRequest::SCHEMA + ['class' => Ros1Xarm_msgsTCPOffsetRequest::class],
            'Ros1Xarm_msgsTCPOffsetResponse' => Ros1Xarm_msgsTCPOffsetResponse::SCHEMA + ['class' => Ros1Xarm_msgsTCPOffsetResponse::class],
            'Ros1Xarm_msgsVacuumGripperCtrlRequest' => Ros1Xarm_msgsVacuumGripperCtrlRequest::SCHEMA + ['class' => Ros1Xarm_msgsVacuumGripperCtrlRequest::class],
            'Ros1Xarm_msgsVacuumGripperCtrlResponse' => Ros1Xarm_msgsVacuumGripperCtrlResponse::SCHEMA + ['class' => Ros1Xarm_msgsVacuumGripperCtrlResponse::class],
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
