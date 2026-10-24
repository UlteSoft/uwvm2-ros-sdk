<?php
declare(strict_types=1);
namespace Uwvm\Realman\ros1_main;
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

/** @brief Own all 4 original rm_msgs/ArmState fields.
 * @details 65..161 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArmState
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArmState',
        'type' => 'rm_msgs/ArmState',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/ArmState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f66af5e8f31c3b897559c988ef8a9fe8257199453c3973bcb9afe56a420d2f93',
        'minimum' => 65,
        'maximum' => 161,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'Pose',
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
            ],
            [
                'name' => 'err',
                'type' => 'uint16',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'dof',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original joint field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint;
    /** @brief Original Pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pose;
    /** @brief Original err field; uint16 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $err;
    /** @brief Original dof field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dof;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint', $values))
            $this->joint = $values['joint'];
        else
        {
            $this->joint = [];
        }
        if (array_key_exists('Pose', $values))
            $this->Pose = $values['Pose'];
        else
        {
            $this->Pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('err', $values))
            $this->err = $values['err'];
        else
        {
            $this->err = [];
        }
        if (array_key_exists('dof', $values))
            $this->dof = $values['dof'];
        else
        {
            $this->dof = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArmState', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArmState', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Arm_Analog_Output fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArm_Analog_Output
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArm_Analog_Output',
        'type' => 'rm_msgs/Arm_Analog_Output',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Arm_Analog_Output',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c344d257e1e5f45d1f82e60e66a38a1714dbc06b8e9379357c308b34f2ed3c94',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'num',
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
                'name' => 'voltage',
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
    /** @brief Original num field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original voltage field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $voltage;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
        }
        if (array_key_exists('voltage', $values))
            $this->voltage = $values['voltage'];
        else
        {
            $this->voltage = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArm_Analog_Output', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArm_Analog_Output', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Arm_Current_State fields.
 * @details 33..129 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArm_Current_State
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArm_Current_State',
        'type' => 'rm_msgs/Arm_Current_State',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Arm_Current_State',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b5c0206ba9eb0674b9a1ca4204aa63e41ce356ad38953a544760897d0d467844',
        'minimum' => 33,
        'maximum' => 129,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'Pose',
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
                'name' => 'err',
                'type' => 'uint16',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'dof',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original joint field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint;
    /** @brief Original Pose field; float32 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $Pose;
    /** @brief Original err field; uint16 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $err;
    /** @brief Original dof field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dof;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint', $values))
            $this->joint = $values['joint'];
        else
        {
            $this->joint = [];
        }
        if (array_key_exists('Pose', $values))
            $this->Pose = $values['Pose'];
        else
        {
            $this->Pose = [];
            $this->Pose[] = 0.0;
            $this->Pose[] = 0.0;
            $this->Pose[] = 0.0;
            $this->Pose[] = 0.0;
            $this->Pose[] = 0.0;
            $this->Pose[] = 0.0;
        }
        if (array_key_exists('err', $values))
            $this->err = $values['err'];
        else
        {
            $this->err = [];
        }
        if (array_key_exists('dof', $values))
            $this->dof = $values['dof'];
        else
        {
            $this->dof = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArm_Current_State', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArm_Current_State', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Arm_Current_Status fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArm_Current_Status
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArm_Current_Status',
        'type' => 'rm_msgs/Arm_Current_Status',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Arm_Current_Status',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_871842ca4ff929b1851a43d9cf855a85ab37ccf147e1b24dfbdb8421f4133fd3',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'arm_current_status',
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
    /** @brief Original arm_current_status field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $arm_current_status;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('arm_current_status', $values))
            $this->arm_current_status = $values['arm_current_status'];
        else
        {
            $this->arm_current_status = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArm_Current_Status', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArm_Current_Status', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Arm_Digital_Output fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArm_Digital_Output
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArm_Digital_Output',
        'type' => 'rm_msgs/Arm_Digital_Output',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Arm_Digital_Output',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_afc6da6c0b8f5e9dc9846b9c536ced62723c7e1479737bc5f4f31d14c2f5f029',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'num',
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
                'name' => 'state',
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
    /** @brief Original num field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
        }
        if (array_key_exists('state', $values))
            $this->state = $values['state'];
        else
        {
            $this->state = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArm_Digital_Output', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArm_Digital_Output', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Arm_IO_State fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArm_IO_State
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArm_IO_State',
        'type' => 'rm_msgs/Arm_IO_State',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Arm_IO_State',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bdcfa192917433b9ac60a589c42c06cc1092080e0d0410dbcd967b88298b315c',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Arm_Digital_Input',
                'type' => 'int8',
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
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original Arm_Digital_Input field; int8 array.
     * @details Active count at most 4; text bound 0 bytes. */
    public mixed $Arm_Digital_Input;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Arm_Digital_Input', $values))
            $this->Arm_Digital_Input = $values['Arm_Digital_Input'];
        else
        {
            $this->Arm_Digital_Input = [];
            $this->Arm_Digital_Input[] = 0;
            $this->Arm_Digital_Input[] = 0;
            $this->Arm_Digital_Input[] = 0;
            $this->Arm_Digital_Input[] = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArm_IO_State', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArm_IO_State', $bytes);
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

/** @brief Own all 3 original rm_msgs/Arm_Joint_Speed_Max fields.
 * @details 24..4568 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArm_Joint_Speed_Max
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArm_Joint_Speed_Max',
        'type' => 'rm_msgs/Arm_Joint_Speed_Max',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Arm_Joint_Speed_Max',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3e8703dc738f06e4e9e3ce64446ef46706350439309eb78b54801c95846f547d',
        'minimum' => 24,
        'maximum' => 4568,
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
                'name' => 'name',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'max_velocity',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original header field; std_msgs/Header scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $header;
    /** @brief Original name field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $name;
    /** @brief Original max_velocity field; float64 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $max_velocity;
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
        if (array_key_exists('name', $values))
            $this->name = $values['name'];
        else
        {
            $this->name = [];
        }
        if (array_key_exists('max_velocity', $values))
            $this->max_velocity = $values['max_velocity'];
        else
        {
            $this->max_velocity = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArm_Joint_Speed_Max', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArm_Joint_Speed_Max', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Softwarebuildinfo fields.
 * @details 8..520 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsSoftwarebuildinfo
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsSoftwarebuildinfo',
        'type' => 'rm_msgs/Softwarebuildinfo',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Softwarebuildinfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c6ee342c433ac29a8e2b2484b8e3d5071c8a37baf95b1fb59883f43b8d2e1ec5',
        'minimum' => 8,
        'maximum' => 520,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'build_time',
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
                'name' => 'version',
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
    /** @brief Original build_time field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $build_time;
    /** @brief Original version field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $version;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('build_time', $values))
            $this->build_time = $values['build_time'];
        else
        {
            $this->build_time = '';
        }
        if (array_key_exists('version', $values))
            $this->version = $values['version'];
        else
        {
            $this->version = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsSoftwarebuildinfo', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsSoftwarebuildinfo', $bytes);
    }
}

/** @brief Own all 5 original rm_msgs/Arm_Softversion_v3 fields.
 * @details 28..1820 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArm_Softversion_v3
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArm_Softversion_v3',
        'type' => 'rm_msgs/Arm_Softversion_v3',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Arm_Softversion_v3',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7965401d47a025c253634e60695689f086763ff15ed2a624c9219f67dc3bf394',
        'minimum' => 28,
        'maximum' => 1820,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'product_version',
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
                'name' => 'algorithm_info',
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
                'name' => 'ctrl_info',
                'type' => 'Ros1Rm_msgsSoftwarebuildinfo',
                'array' => '',
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
                'name' => 'dynamic_info',
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
                'name' => 'plan_info',
                'type' => 'Ros1Rm_msgsSoftwarebuildinfo',
                'array' => '',
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
    /** @brief Original product_version field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $product_version;
    /** @brief Original algorithm_info field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $algorithm_info;
    /** @brief Original ctrl_info field; rm_msgs/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ctrl_info;
    /** @brief Original dynamic_info field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $dynamic_info;
    /** @brief Original plan_info field; rm_msgs/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $plan_info;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('product_version', $values))
            $this->product_version = $values['product_version'];
        else
        {
            $this->product_version = '';
        }
        if (array_key_exists('algorithm_info', $values))
            $this->algorithm_info = $values['algorithm_info'];
        else
        {
            $this->algorithm_info = '';
        }
        if (array_key_exists('ctrl_info', $values))
            $this->ctrl_info = $values['ctrl_info'];
        else
        {
            $this->ctrl_info = new Ros1Rm_msgsSoftwarebuildinfo();
        }
        if (array_key_exists('dynamic_info', $values))
            $this->dynamic_info = $values['dynamic_info'];
        else
        {
            $this->dynamic_info = '';
        }
        if (array_key_exists('plan_info', $values))
            $this->plan_info = $values['plan_info'];
        else
        {
            $this->plan_info = new Ros1Rm_msgsSoftwarebuildinfo();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArm_Softversion_v3', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArm_Softversion_v3', $bytes);
    }
}

/** @brief Own all 6 original rm_msgs/Arm_Softversion_v4 fields.
 * @details 36..2340 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArm_Softversion_v4
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArm_Softversion_v4',
        'type' => 'rm_msgs/Arm_Softversion_v4',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Arm_Softversion_v4',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_40f59f8af4a50464ab428e1246a58ca767b21950c19e7d565c9a2aea5bc95a0f',
        'minimum' => 36,
        'maximum' => 2340,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'product_version',
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
                'name' => 'controller_version',
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
                'name' => 'algorithm_info',
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
                'name' => 'ctrl_info',
                'type' => 'Ros1Rm_msgsSoftwarebuildinfo',
                'array' => '',
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
                'name' => 'com_info',
                'type' => 'Ros1Rm_msgsSoftwarebuildinfo',
                'array' => '',
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
                'name' => 'program_info',
                'type' => 'Ros1Rm_msgsSoftwarebuildinfo',
                'array' => '',
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
    /** @brief Original product_version field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $product_version;
    /** @brief Original controller_version field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $controller_version;
    /** @brief Original algorithm_info field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $algorithm_info;
    /** @brief Original ctrl_info field; rm_msgs/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ctrl_info;
    /** @brief Original com_info field; rm_msgs/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $com_info;
    /** @brief Original program_info field; rm_msgs/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $program_info;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('product_version', $values))
            $this->product_version = $values['product_version'];
        else
        {
            $this->product_version = '';
        }
        if (array_key_exists('controller_version', $values))
            $this->controller_version = $values['controller_version'];
        else
        {
            $this->controller_version = '';
        }
        if (array_key_exists('algorithm_info', $values))
            $this->algorithm_info = $values['algorithm_info'];
        else
        {
            $this->algorithm_info = '';
        }
        if (array_key_exists('ctrl_info', $values))
            $this->ctrl_info = $values['ctrl_info'];
        else
        {
            $this->ctrl_info = new Ros1Rm_msgsSoftwarebuildinfo();
        }
        if (array_key_exists('com_info', $values))
            $this->com_info = $values['com_info'];
        else
        {
            $this->com_info = new Ros1Rm_msgsSoftwarebuildinfo();
        }
        if (array_key_exists('program_info', $values))
            $this->program_info = $values['program_info'];
        else
        {
            $this->program_info = new Ros1Rm_msgsSoftwarebuildinfo();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArm_Softversion_v4', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArm_Softversion_v4', $bytes);
    }
}

/** @brief Own all 8 original rm_msgs/Arm_Software_Version fields.
 * @details 48..3120 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsArm_Software_Version
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsArm_Software_Version',
        'type' => 'rm_msgs/Arm_Software_Version',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Arm_Software_Version',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_73a8bbc2aae36edf9b7e16773c7c683e148f81269ed380e012d8a5e4cc79d5d5',
        'minimum' => 48,
        'maximum' => 3120,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'product_version',
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
                'name' => 'algorithm_info',
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
                'name' => 'ctrl_info',
                'type' => 'Ros1Rm_msgsSoftwarebuildinfo',
                'array' => '',
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
                'name' => 'dynamic_info',
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
                'name' => 'plan_info',
                'type' => 'Ros1Rm_msgsSoftwarebuildinfo',
                'array' => '',
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
                'name' => 'controller_version',
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
                'name' => 'com_info',
                'type' => 'Ros1Rm_msgsSoftwarebuildinfo',
                'array' => '',
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
                'name' => 'program_info',
                'type' => 'Ros1Rm_msgsSoftwarebuildinfo',
                'array' => '',
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
    /** @brief Original product_version field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $product_version;
    /** @brief Original algorithm_info field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $algorithm_info;
    /** @brief Original ctrl_info field; rm_msgs/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ctrl_info;
    /** @brief Original dynamic_info field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $dynamic_info;
    /** @brief Original plan_info field; rm_msgs/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $plan_info;
    /** @brief Original controller_version field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $controller_version;
    /** @brief Original com_info field; rm_msgs/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $com_info;
    /** @brief Original program_info field; rm_msgs/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $program_info;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('product_version', $values))
            $this->product_version = $values['product_version'];
        else
        {
            $this->product_version = '';
        }
        if (array_key_exists('algorithm_info', $values))
            $this->algorithm_info = $values['algorithm_info'];
        else
        {
            $this->algorithm_info = '';
        }
        if (array_key_exists('ctrl_info', $values))
            $this->ctrl_info = $values['ctrl_info'];
        else
        {
            $this->ctrl_info = new Ros1Rm_msgsSoftwarebuildinfo();
        }
        if (array_key_exists('dynamic_info', $values))
            $this->dynamic_info = $values['dynamic_info'];
        else
        {
            $this->dynamic_info = '';
        }
        if (array_key_exists('plan_info', $values))
            $this->plan_info = $values['plan_info'];
        else
        {
            $this->plan_info = new Ros1Rm_msgsSoftwarebuildinfo();
        }
        if (array_key_exists('controller_version', $values))
            $this->controller_version = $values['controller_version'];
        else
        {
            $this->controller_version = '';
        }
        if (array_key_exists('com_info', $values))
            $this->com_info = $values['com_info'];
        else
        {
            $this->com_info = new Ros1Rm_msgsSoftwarebuildinfo();
        }
        if (array_key_exists('program_info', $values))
            $this->program_info = $values['program_info'];
        else
        {
            $this->program_info = new Ros1Rm_msgsSoftwarebuildinfo();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsArm_Software_Version', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsArm_Software_Version', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Cabinet fields.
 * @details 78..334 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsCabinet
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsCabinet',
        'type' => 'rm_msgs/Cabinet',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Cabinet',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c87786d2d26af9f8d138443f251c69d46f60b011db9abd3b3d4f80dca8e1babf',
        'minimum' => 78,
        'maximum' => 334,
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
                'element_minimum' => 56
            ],
            [
                'name' => 'label',
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
                'array' => '',
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
    /** @brief Original header field; std_msgs/Header scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $header;
    /** @brief Original pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original label field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $label;
    /** @brief Original angle field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $angle;
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
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('label', $values))
            $this->label = $values['label'];
        else
        {
            $this->label = 0;
        }
        if (array_key_exists('angle', $values))
            $this->angle = $values['angle'];
        else
        {
            $this->angle = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsCabinet', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsCabinet', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/CartePos fields.
 * @details 56..56 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsCartePos
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsCartePos',
        'type' => 'rm_msgs/CartePos',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/CartePos',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c57fa78db159ce841b371c7cad7490b2059aabfe9394776129ab3eab33b59ce9',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Pose',
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
    /** @brief Original Pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pose;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Pose', $values))
            $this->Pose = $values['Pose'];
        else
        {
            $this->Pose = new Ros1Geometry_msgsPose();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsCartePos', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsCartePos', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/CartePosCustom fields.
 * @details 59..59 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsCartePosCustom
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsCartePosCustom',
        'type' => 'rm_msgs/CartePosCustom',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/CartePosCustom',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_747920217625df52e54b9f69ea1e7375e2945ef08c1a9243d7cf88429f6f871c',
        'minimum' => 59,
        'maximum' => 59,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Pose',
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
            ],
            [
                'name' => 'follow',
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
                'name' => 'trajectory_mode',
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
                'name' => 'radio',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original Pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pose;
    /** @brief Original follow field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $follow;
    /** @brief Original trajectory_mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_mode;
    /** @brief Original radio field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $radio;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Pose', $values))
            $this->Pose = $values['Pose'];
        else
        {
            $this->Pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('follow', $values))
            $this->follow = $values['follow'];
        else
        {
            $this->follow = false;
        }
        if (array_key_exists('trajectory_mode', $values))
            $this->trajectory_mode = $values['trajectory_mode'];
        else
        {
            $this->trajectory_mode = 0;
        }
        if (array_key_exists('radio', $values))
            $this->radio = $values['radio'];
        else
        {
            $this->radio = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsCartePosCustom', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsCartePosCustom', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/ChangeTool_Name fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsChangeTool_Name
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsChangeTool_Name',
        'type' => 'rm_msgs/ChangeTool_Name',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/ChangeTool_Name',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e911c349e53bcce70562585461a9da98a2db38e964dc743d6eb49b334f7f2314',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'toolname',
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
    /** @brief Original toolname field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $toolname;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('toolname', $values))
            $this->toolname = $values['toolname'];
        else
        {
            $this->toolname = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsChangeTool_Name', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsChangeTool_Name', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/ChangeTool_State fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsChangeTool_State
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsChangeTool_State',
        'type' => 'rm_msgs/ChangeTool_State',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/ChangeTool_State',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dd7214855c8334d6c5098ec2da0fd3ee89d02d7b17ad83c58f0b28740b044b86',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'state',
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
    /** @brief Original state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
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
            $this->state = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsChangeTool_State', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsChangeTool_State', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/ChangeWorkFrame_Name fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsChangeWorkFrame_Name
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsChangeWorkFrame_Name',
        'type' => 'rm_msgs/ChangeWorkFrame_Name',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/ChangeWorkFrame_Name',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_47a75a37f6777b0aee5ad12e298e07359d1ffcbd26e4fafe5efe5a98f757cbce',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'WorkFrame_name',
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
    /** @brief Original WorkFrame_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $WorkFrame_name;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('WorkFrame_name', $values))
            $this->WorkFrame_name = $values['WorkFrame_name'];
        else
        {
            $this->WorkFrame_name = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsChangeWorkFrame_Name', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsChangeWorkFrame_Name', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/ChangeWorkFrame_State fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsChangeWorkFrame_State
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsChangeWorkFrame_State',
        'type' => 'rm_msgs/ChangeWorkFrame_State',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/ChangeWorkFrame_State',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d5b387f63fb4c309d83fbdb046a8c8a0e6678d60fb521139250f15e8e5a56856',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'state',
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
    /** @brief Original state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
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
            $this->state = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsChangeWorkFrame_State', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsChangeWorkFrame_State', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Err fields.
 * @details 4..36 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsErr
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsErr',
        'type' => 'rm_msgs/Err',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Err',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_dec53c41ca46496e0ac25a56a15fc255aa369f59d7add914de365b18acff2117',
        'minimum' => 4,
        'maximum' => 36,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'err',
                'type' => 'uint16',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original err field; uint16 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $err;
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
            $this->err = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsErr', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsErr', $bytes);
    }
}

/** @brief Own all 7 original rm_msgs/ExpandState fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsExpandState
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsExpandState',
        'type' => 'rm_msgs/ExpandState',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/ExpandState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_640f4cf4113a2c38af646bd4b1a112916b795daec1b8c4b4362712ab473d3f1a',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'get_state',
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
                'name' => 'err_flag',
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
                'name' => 'en_flag',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'current',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'mode',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => 'byte',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ],
            [
                'name' => 'joint_id',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original get_state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $get_state;
    /** @brief Original pos field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original err_flag field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_flag;
    /** @brief Original en_flag field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $en_flag;
    /** @brief Original current field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $current;
    /** @brief Original mode field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original joint_id field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_id;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('get_state', $values))
            $this->get_state = $values['get_state'];
        else
        {
            $this->get_state = false;
        }
        if (array_key_exists('pos', $values))
            $this->pos = $values['pos'];
        else
        {
            $this->pos = 0;
        }
        if (array_key_exists('err_flag', $values))
            $this->err_flag = $values['err_flag'];
        else
        {
            $this->err_flag = 0;
        }
        if (array_key_exists('en_flag', $values))
            $this->en_flag = $values['en_flag'];
        else
        {
            $this->en_flag = 0;
        }
        if (array_key_exists('current', $values))
            $this->current = $values['current'];
        else
        {
            $this->current = 0;
        }
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('joint_id', $values))
            $this->joint_id = $values['joint_id'];
        else
        {
            $this->joint_id = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsExpandState', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsExpandState', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Expand_In_Position fields.
 * @details 7..263 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsExpand_In_Position
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsExpand_In_Position',
        'type' => 'rm_msgs/Expand_In_Position',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Expand_In_Position',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_51acd7ca334e74e4c8ba72027230530ec5b1e63865cc0c35172aa6040969f3b0',
        'minimum' => 7,
        'maximum' => 263,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'device',
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
                'name' => 'state',
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
                'name' => 'trajectory_connect',
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
                'name' => 'trajectory_state',
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
    /** @brief Original device field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $device;
    /** @brief Original state field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $state;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
    /** @brief Original trajectory_state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_state;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('device', $values))
            $this->device = $values['device'];
        else
        {
            $this->device = 0;
        }
        if (array_key_exists('state', $values))
            $this->state = $values['state'];
        else
        {
            $this->state = '';
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
        }
        if (array_key_exists('trajectory_state', $values))
            $this->trajectory_state = $values['trajectory_state'];
        else
        {
            $this->trajectory_state = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsExpand_In_Position', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsExpand_In_Position', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Expand_Position fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsExpand_Position
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsExpand_Position',
        'type' => 'rm_msgs/Expand_Position',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Expand_Position',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cd07785998b7fd5698c8606538f9ed6b35ae5f0aded4ca768c446dd7d235faed',
        'minimum' => 4,
        'maximum' => 4,
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
    /** @brief Original pos field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original speed field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsExpand_Position', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsExpand_Position', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Expand_Speed fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsExpand_Speed
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsExpand_Speed',
        'type' => 'rm_msgs/Expand_Speed',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Expand_Speed',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1ec010d530738e2f4f9ba5fe992202886bb3485be97f1e72b5b36ba0f6b5d9d4',
        'minimum' => 2,
        'maximum' => 2,
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
    /** @brief Original speed field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsExpand_Speed', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsExpand_Speed', $bytes);
    }
}

/** @brief Own all 6 original rm_msgs/Flowchartrunstate fields.
 * @details 12..524 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsFlowchartrunstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsFlowchartrunstate',
        'type' => 'rm_msgs/Flowchartrunstate',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Flowchartrunstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_deafa818f1cf99a33c9443d1880f5744f721ac3c07d583a00ed269569f07e030',
        'minimum' => 12,
        'maximum' => 524,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'run_state',
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
                'name' => 'id',
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
                'name' => 'name',
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
                'name' => 'plan_speed',
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
                'name' => 'step_mode',
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
                'name' => 'modal_id',
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
    /** @brief Original run_state field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $run_state;
    /** @brief Original id field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $id;
    /** @brief Original name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $name;
    /** @brief Original plan_speed field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $plan_speed;
    /** @brief Original step_mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $step_mode;
    /** @brief Original modal_id field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $modal_id;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('run_state', $values))
            $this->run_state = $values['run_state'];
        else
        {
            $this->run_state = 0;
        }
        if (array_key_exists('id', $values))
            $this->id = $values['id'];
        else
        {
            $this->id = 0;
        }
        if (array_key_exists('name', $values))
            $this->name = $values['name'];
        else
        {
            $this->name = '';
        }
        if (array_key_exists('plan_speed', $values))
            $this->plan_speed = $values['plan_speed'];
        else
        {
            $this->plan_speed = 0;
        }
        if (array_key_exists('step_mode', $values))
            $this->step_mode = $values['step_mode'];
        else
        {
            $this->step_mode = 0;
        }
        if (array_key_exists('modal_id', $values))
            $this->modal_id = $values['modal_id'];
        else
        {
            $this->modal_id = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsFlowchartrunstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsFlowchartrunstate', $bytes);
    }
}

/** @brief Own all 6 original rm_msgs/Force_Position_Move_Joint fields.
 * @details 10..74 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsForce_Position_Move_Joint
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsForce_Position_Move_Joint',
        'type' => 'rm_msgs/Force_Position_Move_Joint',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Force_Position_Move_Joint',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_40252f1cf60424f32d01c870d44e286a0138883d8db1302ffdbbe0300e38cd39',
        'minimum' => 10,
        'maximum' => 74,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'sensor',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'dir',
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
                'name' => 'force',
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
                'name' => 'dof',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original joint field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint;
    /** @brief Original sensor field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sensor;
    /** @brief Original mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original dir field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dir;
    /** @brief Original force field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
    /** @brief Original dof field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dof;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint', $values))
            $this->joint = $values['joint'];
        else
        {
            $this->joint = [];
        }
        if (array_key_exists('sensor', $values))
            $this->sensor = $values['sensor'];
        else
        {
            $this->sensor = 0;
        }
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('dir', $values))
            $this->dir = $values['dir'];
        else
        {
            $this->dir = 0;
        }
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = 0;
        }
        if (array_key_exists('dof', $values))
            $this->dof = $values['dof'];
        else
        {
            $this->dof = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsForce_Position_Move_Joint', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsForce_Position_Move_Joint', $bytes);
    }
}

/** @brief Own all 5 original rm_msgs/Force_Position_Move_Pose fields.
 * @details 61..61 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsForce_Position_Move_Pose
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsForce_Position_Move_Pose',
        'type' => 'rm_msgs/Force_Position_Move_Pose',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Force_Position_Move_Pose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6397e7691e6a886b0ec77927e87229edf7c7c4b3164e64e4898813d240206f02',
        'minimum' => 61,
        'maximum' => 61,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Pose',
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
            ],
            [
                'name' => 'sensor',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'dir',
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
                'name' => 'force',
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
    /** @brief Original Pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pose;
    /** @brief Original sensor field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sensor;
    /** @brief Original mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original dir field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dir;
    /** @brief Original force field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Pose', $values))
            $this->Pose = $values['Pose'];
        else
        {
            $this->Pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('sensor', $values))
            $this->sensor = $values['sensor'];
        else
        {
            $this->sensor = 0;
        }
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('dir', $values))
            $this->dir = $values['dir'];
        else
        {
            $this->dir = 0;
        }
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsForce_Position_Move_Pose', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsForce_Position_Move_Pose', $bytes);
    }
}

/** @brief Own all 8 original rm_msgs/Force_Position_Move_Pose_Custom fields.
 * @details 64..64 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsForce_Position_Move_Pose_Custom
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsForce_Position_Move_Pose_Custom',
        'type' => 'rm_msgs/Force_Position_Move_Pose_Custom',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Force_Position_Move_Pose_Custom',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_85e4ff181a274b8e87937ae0eaa56b94de2b7d524caf3f6fc89c0d33a487c1bd',
        'minimum' => 64,
        'maximum' => 64,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Pose',
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
            ],
            [
                'name' => 'sensor',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'dir',
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
                'name' => 'force',
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
                'name' => 'follow',
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
                'name' => 'trajectory_mode',
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
                'name' => 'radio',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original Pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pose;
    /** @brief Original sensor field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sensor;
    /** @brief Original mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original dir field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dir;
    /** @brief Original force field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
    /** @brief Original follow field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $follow;
    /** @brief Original trajectory_mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_mode;
    /** @brief Original radio field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $radio;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Pose', $values))
            $this->Pose = $values['Pose'];
        else
        {
            $this->Pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('sensor', $values))
            $this->sensor = $values['sensor'];
        else
        {
            $this->sensor = 0;
        }
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('dir', $values))
            $this->dir = $values['dir'];
        else
        {
            $this->dir = 0;
        }
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = 0;
        }
        if (array_key_exists('follow', $values))
            $this->follow = $values['follow'];
        else
        {
            $this->follow = false;
        }
        if (array_key_exists('trajectory_mode', $values))
            $this->trajectory_mode = $values['trajectory_mode'];
        else
        {
            $this->trajectory_mode = 0;
        }
        if (array_key_exists('radio', $values))
            $this->radio = $values['radio'];
        else
        {
            $this->radio = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsForce_Position_Move_Pose_Custom', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsForce_Position_Move_Pose_Custom', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Force_Position_State fields.
 * @details 11..75 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsForce_Position_State
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsForce_Position_State',
        'type' => 'rm_msgs/Force_Position_State',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Force_Position_State',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8b817fc0422a9dcfc91e51ade9e0fc9d1d44ed315d9b813eaf88cf88d889b367',
        'minimum' => 11,
        'maximum' => 75,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'force',
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
                'name' => 'arm_err',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'dof',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original joint field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint;
    /** @brief Original force field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
    /** @brief Original arm_err field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $arm_err;
    /** @brief Original dof field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dof;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint', $values))
            $this->joint = $values['joint'];
        else
        {
            $this->joint = [];
        }
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = 0.0;
        }
        if (array_key_exists('arm_err', $values))
            $this->arm_err = $values['arm_err'];
        else
        {
            $this->arm_err = 0;
        }
        if (array_key_exists('dof', $values))
            $this->dof = $values['dof'];
        else
        {
            $this->dof = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsForce_Position_State', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsForce_Position_State', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/GetArmState_Command fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsGetArmState_Command
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsGetArmState_Command',
        'type' => 'rm_msgs/GetArmState_Command',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/GetArmState_Command',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ae8d3621dd3742fc96f2dd06907f546f1def2e1d91cb2b652d4f7fc499755d4b',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'command',
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
    /** @brief Original command field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $command;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('command', $values))
            $this->command = $values['command'];
        else
        {
            $this->command = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsGetArmState_Command', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsGetArmState_Command', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/Get_TCP_Master_List_Param fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsGet_TCP_Master_List_Param
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsGet_TCP_Master_List_Param',
        'type' => 'rm_msgs/Get_TCP_Master_List_Param',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Get_TCP_Master_List_Param',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8a8b20ec793a537927ce7190694ca820648b6492822a8284e2e072ea68a2ad00',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'page_num',
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
                'name' => 'page_size',
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
                'name' => 'vague_search',
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
    /** @brief Original page_num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $page_num;
    /** @brief Original page_size field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $page_size;
    /** @brief Original vague_search field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $vague_search;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('page_num', $values))
            $this->page_num = $values['page_num'];
        else
        {
            $this->page_num = 0;
        }
        if (array_key_exists('page_size', $values))
            $this->page_size = $values['page_size'];
        else
        {
            $this->page_size = 0;
        }
        if (array_key_exists('vague_search', $values))
            $this->vague_search = $values['vague_search'];
        else
        {
            $this->vague_search = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsGet_TCP_Master_List_Param', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsGet_TCP_Master_List_Param', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/Gettrajectorylist fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsGettrajectorylist
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsGettrajectorylist',
        'type' => 'rm_msgs/Gettrajectorylist',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Gettrajectorylist',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_da19e810ea29adcd43132897a49c6445e61cd18d1f06783162857b25b8c2cbe0',
        'minimum' => 12,
        'maximum' => 268,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'page_num',
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
                'name' => 'page_size',
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
                'name' => 'vague_search',
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
    /** @brief Original page_num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $page_num;
    /** @brief Original page_size field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $page_size;
    /** @brief Original vague_search field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $vague_search;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('page_num', $values))
            $this->page_num = $values['page_num'];
        else
        {
            $this->page_num = 0;
        }
        if (array_key_exists('page_size', $values))
            $this->page_size = $values['page_size'];
        else
        {
            $this->page_size = 0;
        }
        if (array_key_exists('vague_search', $values))
            $this->vague_search = $values['vague_search'];
        else
        {
            $this->vague_search = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsGettrajectorylist', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsGettrajectorylist', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Gripper_Pick fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsGripper_Pick
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsGripper_Pick',
        'type' => 'rm_msgs/Gripper_Pick',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Gripper_Pick',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cd54942d53ad8167aaa7f2cfe1d0d4e6ad1092d015d59deff29080fa70a9a7a9',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'speed',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'force',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original speed field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original force field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
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
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsGripper_Pick', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsGripper_Pick', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Gripper_Set fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsGripper_Set
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsGripper_Set',
        'type' => 'rm_msgs/Gripper_Set',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Gripper_Set',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6095cdd3c0ac57ed78df3676ecc946e6cdc6ff48404dc7f205e1da3efeecabe3',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'position',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original position field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $position;
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
            $this->position = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsGripper_Set', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsGripper_Set', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Hand_Angle fields.
 * @details 13..13 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsHand_Angle
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsHand_Angle',
        'type' => 'rm_msgs/Hand_Angle',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Hand_Angle',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9d1bf1c63d0cd9feae75492e0610bd9f261bef5d9b774f042534ac5ff6b2ba48',
        'minimum' => 13,
        'maximum' => 13,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'hand_angle',
                'type' => 'int16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'block',
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
    /** @brief Original hand_angle field; int16 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $hand_angle;
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('hand_angle', $values))
            $this->hand_angle = $values['hand_angle'];
        else
        {
            $this->hand_angle = [];
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
        }
        if (array_key_exists('block', $values))
            $this->block = $values['block'];
        else
        {
            $this->block = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsHand_Angle', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsHand_Angle', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Hand_Force fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsHand_Force
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsHand_Force',
        'type' => 'rm_msgs/Hand_Force',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Hand_Force',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_530176ac18800838e1648e67dbc6f4ca83101e333adcae1b44dbf749ffafd71c',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'hand_force',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original hand_force field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $hand_force;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('hand_force', $values))
            $this->hand_force = $values['hand_force'];
        else
        {
            $this->hand_force = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsHand_Force', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsHand_Force', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Hand_Posture fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsHand_Posture
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsHand_Posture',
        'type' => 'rm_msgs/Hand_Posture',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Hand_Posture',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0272a7a2465f613518f7bbcce5f31395faebe4b7f54c77bed3a076f0b9eb5785',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'posture_num',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'block',
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
    /** @brief Original posture_num field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $posture_num;
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('posture_num', $values))
            $this->posture_num = $values['posture_num'];
        else
        {
            $this->posture_num = 0;
        }
        if (array_key_exists('block', $values))
            $this->block = $values['block'];
        else
        {
            $this->block = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsHand_Posture', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsHand_Posture', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Hand_Seq fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsHand_Seq
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsHand_Seq',
        'type' => 'rm_msgs/Hand_Seq',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Hand_Seq',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f6fa34fdf69af4115af9d275026c35614ececda0084ac45bee579bae43f2d3f0',
        'minimum' => 3,
        'maximum' => 3,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'seq_num',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'block',
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
    /** @brief Original seq_num field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $seq_num;
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('seq_num', $values))
            $this->seq_num = $values['seq_num'];
        else
        {
            $this->seq_num = 0;
        }
        if (array_key_exists('block', $values))
            $this->block = $values['block'];
        else
        {
            $this->block = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsHand_Seq', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsHand_Seq', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Hand_Speed fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsHand_Speed
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsHand_Speed',
        'type' => 'rm_msgs/Hand_Speed',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Hand_Speed',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f21faf03c07ab57120835321e699b27ec6f86e462930e83499bef2a155f827ca',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'hand_speed',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original hand_speed field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $hand_speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('hand_speed', $values))
            $this->hand_speed = $values['hand_speed'];
        else
        {
            $this->hand_speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsHand_Speed', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsHand_Speed', $bytes);
    }
}

/** @brief Own all 5 original rm_msgs/Hand_Status fields.
 * @details 50..50 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsHand_Status
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsHand_Status',
        'type' => 'rm_msgs/Hand_Status',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Hand_Status',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2ff89c76aa0fc5924535b7de55609d74847aac91fc2ab8145ec7b8d958260ad8',
        'minimum' => 50,
        'maximum' => 50,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'hand_angle',
                'type' => 'uint16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'hand_pos',
                'type' => 'uint16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'hand_state',
                'type' => 'uint16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'hand_force',
                'type' => 'uint16',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'hand_err',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original hand_angle field; uint16 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $hand_angle;
    /** @brief Original hand_pos field; uint16 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $hand_pos;
    /** @brief Original hand_state field; uint16 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $hand_state;
    /** @brief Original hand_force field; uint16 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $hand_force;
    /** @brief Original hand_err field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $hand_err;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('hand_angle', $values))
            $this->hand_angle = $values['hand_angle'];
        else
        {
            $this->hand_angle = [];
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
            $this->hand_angle[] = 0;
        }
        if (array_key_exists('hand_pos', $values))
            $this->hand_pos = $values['hand_pos'];
        else
        {
            $this->hand_pos = [];
            $this->hand_pos[] = 0;
            $this->hand_pos[] = 0;
            $this->hand_pos[] = 0;
            $this->hand_pos[] = 0;
            $this->hand_pos[] = 0;
            $this->hand_pos[] = 0;
        }
        if (array_key_exists('hand_state', $values))
            $this->hand_state = $values['hand_state'];
        else
        {
            $this->hand_state = [];
            $this->hand_state[] = 0;
            $this->hand_state[] = 0;
            $this->hand_state[] = 0;
            $this->hand_state[] = 0;
            $this->hand_state[] = 0;
            $this->hand_state[] = 0;
        }
        if (array_key_exists('hand_force', $values))
            $this->hand_force = $values['hand_force'];
        else
        {
            $this->hand_force = [];
            $this->hand_force[] = 0;
            $this->hand_force[] = 0;
            $this->hand_force[] = 0;
            $this->hand_force[] = 0;
            $this->hand_force[] = 0;
            $this->hand_force[] = 0;
        }
        if (array_key_exists('hand_err', $values))
            $this->hand_err = $values['hand_err'];
        else
        {
            $this->hand_err = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsHand_Status', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsHand_Status', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/IO_Update fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsIO_Update
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsIO_Update',
        'type' => 'rm_msgs/IO_Update',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/IO_Update',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6941f85ba773344ca73a917cfef68d8a6a99f67ff76bdf6eea4b9b1a7d1ddba7',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'type',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original type field; uint8 scalar.
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
        return Catalog::wire()->encode('Ros1Rm_msgsIO_Update', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsIO_Update', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/JointPos fields.
 * @details 8..72 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJointPos
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJointPos',
        'type' => 'rm_msgs/JointPos',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/JointPos',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_55bb4d07f6901dfd381902cb71f0bfa8bb2e34b70e7c8cae455b68a8b57e5623',
        'minimum' => 8,
        'maximum' => 72,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'expand',
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
    /** @brief Original joint field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint;
    /** @brief Original expand field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $expand;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint', $values))
            $this->joint = $values['joint'];
        else
        {
            $this->joint = [];
        }
        if (array_key_exists('expand', $values))
            $this->expand = $values['expand'];
        else
        {
            $this->expand = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJointPos', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJointPos', $bytes);
    }
}

/** @brief Own all 5 original rm_msgs/JointPosCustom fields.
 * @details 11..75 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJointPosCustom
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJointPosCustom',
        'type' => 'rm_msgs/JointPosCustom',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/JointPosCustom',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d4935ad5910358dea6a8902e472c01f413574a5db91a57e4e54dee65a0bac676',
        'minimum' => 11,
        'maximum' => 75,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'expand',
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
                'name' => 'follow',
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
                'name' => 'trajectory_mode',
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
                'name' => 'radio',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original joint field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint;
    /** @brief Original expand field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $expand;
    /** @brief Original follow field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $follow;
    /** @brief Original trajectory_mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_mode;
    /** @brief Original radio field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $radio;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint', $values))
            $this->joint = $values['joint'];
        else
        {
            $this->joint = [];
        }
        if (array_key_exists('expand', $values))
            $this->expand = $values['expand'];
        else
        {
            $this->expand = 0.0;
        }
        if (array_key_exists('follow', $values))
            $this->follow = $values['follow'];
        else
        {
            $this->follow = false;
        }
        if (array_key_exists('trajectory_mode', $values))
            $this->trajectory_mode = $values['trajectory_mode'];
        else
        {
            $this->trajectory_mode = 0;
        }
        if (array_key_exists('radio', $values))
            $this->radio = $values['radio'];
        else
        {
            $this->radio = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJointPosCustom', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJointPosCustom', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Joint_Current fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_Current
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_Current',
        'type' => 'rm_msgs/Joint_Current',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_Current',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bc39b37164a42e1937db5e4404b2a9c869083a3b81e84f5d7beb34de93e04b7c',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_current',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original joint_current field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint_current;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_current', $values))
            $this->joint_current = $values['joint_current'];
        else
        {
            $this->joint_current = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_Current', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_Current', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Joint_En_Flag fields.
 * @details 4..20 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_En_Flag
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_En_Flag',
        'type' => 'rm_msgs/Joint_En_Flag',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_En_Flag',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a5fc892ad2eb36348a3b49588393c82773299a8f7a8d73079c338864430e58b8',
        'minimum' => 4,
        'maximum' => 20,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_en_flag',
                'type' => 'bool',
                'array' => 'sequence',
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
    /** @brief Original joint_en_flag field; bool sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint_en_flag;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_en_flag', $values))
            $this->joint_en_flag = $values['joint_en_flag'];
        else
        {
            $this->joint_en_flag = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_En_Flag', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_En_Flag', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Joint_Enable fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_Enable
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_Enable',
        'type' => 'rm_msgs/Joint_Enable',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_Enable',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0b54d5338f0c38491ecf9f0e9e6d7963384f45666ee235b18ae24649fa99bfb6',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_num',
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
                'name' => 'state',
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
    /** @brief Original joint_num field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_num;
    /** @brief Original state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_num', $values))
            $this->joint_num = $values['joint_num'];
        else
        {
            $this->joint_num = 0;
        }
        if (array_key_exists('state', $values))
            $this->state = $values['state'];
        else
        {
            $this->state = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_Enable', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_Enable', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Joint_Error_Code fields.
 * @details 4..36 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_Error_Code
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_Error_Code',
        'type' => 'rm_msgs/Joint_Error_Code',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_Error_Code',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_76bc10f3795648437b5021e1a3b7087d11dc1d85ddb429f6f3c87c7f00bed361',
        'minimum' => 4,
        'maximum' => 36,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_error',
                'type' => 'uint16',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original joint_error field; uint16 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint_error;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_error', $values))
            $this->joint_error = $values['joint_error'];
        else
        {
            $this->joint_error = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_Error_Code', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_Error_Code', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Joint_Max_Speed fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_Max_Speed
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_Max_Speed',
        'type' => 'rm_msgs/Joint_Max_Speed',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_Max_Speed',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_808b0661dec52a0bb942426d3cff85fa3cd025ea5e18efde14b7c3cbf12212fb',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_num',
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
                'name' => 'joint_max_speed',
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
    /** @brief Original joint_num field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_num;
    /** @brief Original joint_max_speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_max_speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_num', $values))
            $this->joint_num = $values['joint_num'];
        else
        {
            $this->joint_num = 0;
        }
        if (array_key_exists('joint_max_speed', $values))
            $this->joint_max_speed = $values['joint_max_speed'];
        else
        {
            $this->joint_max_speed = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_Max_Speed', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_Max_Speed', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Joint_PoseEuler fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_PoseEuler
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_PoseEuler',
        'type' => 'rm_msgs/Joint_PoseEuler',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_PoseEuler',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5145fe7bbcebd72b80dbb5b09cb8e736049951d5c8011af97a05bfaccd1638e1',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'euler',
                'type' => 'float32',
                'array' => 'array',
                'count' => 3,
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
                'name' => 'position',
                'type' => 'float32',
                'array' => 'array',
                'count' => 3,
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
    /** @brief Original euler field; float32 array.
     * @details Active count at most 3; text bound 0 bytes. */
    public mixed $euler;
    /** @brief Original position field; float32 array.
     * @details Active count at most 3; text bound 0 bytes. */
    public mixed $position;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('euler', $values))
            $this->euler = $values['euler'];
        else
        {
            $this->euler = [];
            $this->euler[] = 0.0;
            $this->euler[] = 0.0;
            $this->euler[] = 0.0;
        }
        if (array_key_exists('position', $values))
            $this->position = $values['position'];
        else
        {
            $this->position = [];
            $this->position[] = 0.0;
            $this->position[] = 0.0;
            $this->position[] = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_PoseEuler', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_PoseEuler', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Joint_Speed fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_Speed
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_Speed',
        'type' => 'rm_msgs/Joint_Speed',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_Speed',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fbc6add09d420c1cf11af125de1f13a40586dca5e374bd8cd970289468e6140f',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_speed',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original joint_speed field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint_speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_speed', $values))
            $this->joint_speed = $values['joint_speed'];
        else
        {
            $this->joint_speed = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_Speed', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_Speed', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/Joint_Step fields.
 * @details 9..9 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_Step
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_Step',
        'type' => 'rm_msgs/Joint_Step',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_Step',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2f8f1683b5b2734e9fc105f61ed848e905a33abeb9e5f09028ea834991d4000b',
        'minimum' => 9,
        'maximum' => 9,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_num',
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
                'name' => 'step_angle',
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
    /** @brief Original joint_num field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_num;
    /** @brief Original step_angle field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $step_angle;
    /** @brief Original speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_num', $values))
            $this->joint_num = $values['joint_num'];
        else
        {
            $this->joint_num = 0;
        }
        if (array_key_exists('step_angle', $values))
            $this->step_angle = $values['step_angle'];
        else
        {
            $this->step_angle = 0.0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_Step', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_Step', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/Joint_Teach fields.
 * @details 8..264 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_Teach
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_Teach',
        'type' => 'rm_msgs/Joint_Teach',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_Teach',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6191ef24dc181055dd0fb597fec470a8b583791e0a67edd14f3eb7a6fdac1717',
        'minimum' => 8,
        'maximum' => 264,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'teach_joint',
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
                'name' => 'direction',
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
                'name' => 'v',
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
    /** @brief Original teach_joint field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $teach_joint;
    /** @brief Original direction field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $direction;
    /** @brief Original v field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $v;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('teach_joint', $values))
            $this->teach_joint = $values['teach_joint'];
        else
        {
            $this->teach_joint = 0;
        }
        if (array_key_exists('direction', $values))
            $this->direction = $values['direction'];
        else
        {
            $this->direction = '';
        }
        if (array_key_exists('v', $values))
            $this->v = $values['v'];
        else
        {
            $this->v = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_Teach', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_Teach', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Joint_Temperature fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_Temperature
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_Temperature',
        'type' => 'rm_msgs/Joint_Temperature',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_Temperature',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6c3dd6374ed98e575b6e4db3a15691bdde6e174c9aa6e15ce5d2ada37e79507e',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_temperature',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original joint_temperature field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint_temperature;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_temperature', $values))
            $this->joint_temperature = $values['joint_temperature'];
        else
        {
            $this->joint_temperature = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_Temperature', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_Temperature', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Joint_Voltage fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJoint_Voltage
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJoint_Voltage',
        'type' => 'rm_msgs/Joint_Voltage',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Joint_Voltage',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_45e56529f780d399f86c70e4303dc63e49760f1247124a866d7830a656bf830d',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_voltage',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original joint_voltage field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint_voltage;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_voltage', $values))
            $this->joint_voltage = $values['joint_voltage'];
        else
        {
            $this->joint_voltage = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJoint_Voltage', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJoint_Voltage', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Jointversion fields.
 * @details 28..1820 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsJointversion
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsJointversion',
        'type' => 'rm_msgs/Jointversion',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Jointversion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e49b2595327fcedf6a8a15f690deac2f4809eefb25957cf2c0ac9d7117579e1e',
        'minimum' => 28,
        'maximum' => 1820,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_version',
                'type' => 'string',
                'array' => 'array',
                'count' => 7,
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
    /** @brief Original joint_version field; string array.
     * @details Active count at most 7; text bound 256 bytes. */
    public mixed $joint_version;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint_version', $values))
            $this->joint_version = $values['joint_version'];
        else
        {
            $this->joint_version = [];
            $this->joint_version[] = '';
            $this->joint_version[] = '';
            $this->joint_version[] = '';
            $this->joint_version[] = '';
            $this->joint_version[] = '';
            $this->joint_version[] = '';
            $this->joint_version[] = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsJointversion', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsJointversion', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/LiftState fields.
 * @details 7..7 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsLiftState
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsLiftState',
        'type' => 'rm_msgs/LiftState',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/LiftState',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c09f03491729bb1f271578da29f8b68fba3da3e57a3b15dc1c835373d2406aea',
        'minimum' => 7,
        'maximum' => 7,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'height',
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
                'name' => 'current',
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
                'name' => 'err_flag',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'mode',
                'type' => 'int8',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => 'byte',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original height field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $height;
    /** @brief Original current field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $current;
    /** @brief Original err_flag field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_flag;
    /** @brief Original mode field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('height', $values))
            $this->height = $values['height'];
        else
        {
            $this->height = 0;
        }
        if (array_key_exists('current', $values))
            $this->current = $values['current'];
        else
        {
            $this->current = 0;
        }
        if (array_key_exists('err_flag', $values))
            $this->err_flag = $values['err_flag'];
        else
        {
            $this->err_flag = 0;
        }
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsLiftState', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsLiftState', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Lift_Height fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsLift_Height
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsLift_Height',
        'type' => 'rm_msgs/Lift_Height',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Lift_Height',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_91f1e27a75ec4d5b8e9a677e5a3eb0493cc19067019121a2d6397a87ebff5c61',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'height',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'speed',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original height field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $height;
    /** @brief Original speed field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('height', $values))
            $this->height = $values['height'];
        else
        {
            $this->height = 0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsLift_Height', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsLift_Height', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Lift_In_Position fields.
 * @details 7..263 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsLift_In_Position
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsLift_In_Position',
        'type' => 'rm_msgs/Lift_In_Position',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Lift_In_Position',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_eeb51df403cc708bf439f6a54b6d010981ad3d7919fd1d6cea84a77935ced787',
        'minimum' => 7,
        'maximum' => 263,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'device',
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
                'name' => 'state',
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
                'name' => 'trajectory_connect',
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
                'name' => 'trajectory_state',
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
    /** @brief Original device field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $device;
    /** @brief Original state field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $state;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
    /** @brief Original trajectory_state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_state;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('device', $values))
            $this->device = $values['device'];
        else
        {
            $this->device = 0;
        }
        if (array_key_exists('state', $values))
            $this->state = $values['state'];
        else
        {
            $this->state = '';
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
        }
        if (array_key_exists('trajectory_state', $values))
            $this->trajectory_state = $values['trajectory_state'];
        else
        {
            $this->trajectory_state = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsLift_In_Position', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsLift_In_Position', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Lift_Speed fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsLift_Speed
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsLift_Speed',
        'type' => 'rm_msgs/Lift_Speed',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Lift_Speed',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_19aa9a2cffa38998503715ba68a5281d58933a12b16e1a2bfca7c8f96dcca0a8',
        'minimum' => 2,
        'maximum' => 2,
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
    /** @brief Original speed field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsLift_Speed', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsLift_Speed', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Manual_Set_Force_Pose fields.
 * @details 8..392 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsManual_Set_Force_Pose
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsManual_Set_Force_Pose',
        'type' => 'rm_msgs/Manual_Set_Force_Pose',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Manual_Set_Force_Pose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_215450b7ec8f49bc87aea83627cc98d887c29b3a3c6377eee217d64eac2f3ea0',
        'minimum' => 8,
        'maximum' => 392,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pose',
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
                'name' => 'joint',
                'type' => 'int64',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original pose field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $pose;
    /** @brief Original joint field; int64 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint;
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
            $this->pose = '';
        }
        if (array_key_exists('joint', $values))
            $this->joint = $values['joint'];
        else
        {
            $this->joint = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsManual_Set_Force_Pose', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsManual_Set_Force_Pose', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Mastername fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsMastername
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsMastername',
        'type' => 'rm_msgs/Mastername',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Mastername',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a10623bdcabd2f64e702b69c6549bdb219796e9516dc9cf505070036353cc59f',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'master_name',
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
    /** @brief Original master_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $master_name;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('master_name', $values))
            $this->master_name = $values['master_name'];
        else
        {
            $this->master_name = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsMastername', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsMastername', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Modbusreaddata fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsModbusreaddata
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsModbusreaddata',
        'type' => 'rm_msgs/Modbusreaddata',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Modbusreaddata',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_107972f1e16052d7b327932447d7d704c7888041f715105f30a416fbf429dd20',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'read_data',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original read_data field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $read_data;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('read_data', $values))
            $this->read_data = $values['read_data'];
        else
        {
            $this->read_data = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsModbusreaddata', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsModbusreaddata', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/Modbustcpmasterinfo fields.
 * @details 12..524 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsModbustcpmasterinfo
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsModbustcpmasterinfo',
        'type' => 'rm_msgs/Modbustcpmasterinfo',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Modbustcpmasterinfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7f45c814efbc1268c68b7955f3c077f319f46ba4dc532f36914ccd3c55420680',
        'minimum' => 12,
        'maximum' => 524,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'master_name',
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
                'name' => 'ip',
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
                'name' => 'port',
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
    /** @brief Original master_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $master_name;
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original port field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('master_name', $values))
            $this->master_name = $values['master_name'];
        else
        {
            $this->master_name = '';
        }
        if (array_key_exists('ip', $values))
            $this->ip = $values['ip'];
        else
        {
            $this->ip = '';
        }
        if (array_key_exists('port', $values))
            $this->port = $values['port'];
        else
        {
            $this->port = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsModbustcpmasterinfo', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsModbustcpmasterinfo', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Modbustcpmasterlist fields.
 * @details 4..8388 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsModbustcpmasterlist
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsModbustcpmasterlist',
        'type' => 'rm_msgs/Modbustcpmasterlist',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Modbustcpmasterlist',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a656fe16126d96dc7de6bdb80d60087d9ceb3f2680e403437283a1eaee3b5eb1',
        'minimum' => 4,
        'maximum' => 8388,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'master_list',
                'type' => 'Ros1Rm_msgsModbustcpmasterinfo',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original master_list field; rm_msgs/Modbustcpmasterinfo sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $master_list;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('master_list', $values))
            $this->master_list = $values['master_list'];
        else
        {
            $this->master_list = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsModbustcpmasterlist', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsModbustcpmasterlist', $bytes);
    }
}

/** @brief Own all 5 original rm_msgs/MoveC fields.
 * @details 119..119 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsMoveC
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsMoveC',
        'type' => 'rm_msgs/MoveC',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/MoveC',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a7c9838edb369a30428d4225ce45305e72ddd5a9a315147dfa47288e3a367a69',
        'minimum' => 119,
        'maximum' => 119,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Mid_Pose',
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
            ],
            [
                'name' => 'End_Pose',
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
            ],
            [
                'name' => 'speed',
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
                'name' => 'loop',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'trajectory_connect',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original Mid_Pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Mid_Pose;
    /** @brief Original End_Pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $End_Pose;
    /** @brief Original speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original loop field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $loop;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Mid_Pose', $values))
            $this->Mid_Pose = $values['Mid_Pose'];
        else
        {
            $this->Mid_Pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('End_Pose', $values))
            $this->End_Pose = $values['End_Pose'];
        else
        {
            $this->End_Pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('loop', $values))
            $this->loop = $values['loop'];
        else
        {
            $this->loop = 0;
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsMoveC', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsMoveC', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/MoveJ fields.
 * @details 9..73 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsMoveJ
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsMoveJ',
        'type' => 'rm_msgs/MoveJ',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/MoveJ',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b06164ba46d0b515ea1b853f6e91af08ac358839fef3174797ba097b2f4a0d93',
        'minimum' => 9,
        'maximum' => 73,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint',
                'type' => 'float32',
                'array' => 'sequence',
                'count' => 16,
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
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4
            ],
            [
                'name' => 'trajectory_connect',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original joint field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint;
    /** @brief Original speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('joint', $values))
            $this->joint = $values['joint'];
        else
        {
            $this->joint = [];
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsMoveJ', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsMoveJ', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/MoveJ_P fields.
 * @details 61..61 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsMoveJ_P
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsMoveJ_P',
        'type' => 'rm_msgs/MoveJ_P',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/MoveJ_P',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e2f03dd50bed12ea4e61705e6cb09bfb224e8dd92b02a0bacf3dfeb253f72b65',
        'minimum' => 61,
        'maximum' => 61,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Pose',
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
            ],
            [
                'name' => 'speed',
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
                'name' => 'trajectory_connect',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original Pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pose;
    /** @brief Original speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Pose', $values))
            $this->Pose = $values['Pose'];
        else
        {
            $this->Pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsMoveJ_P', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsMoveJ_P', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/MoveL fields.
 * @details 61..61 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsMoveL
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsMoveL',
        'type' => 'rm_msgs/MoveL',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/MoveL',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2816f8d5ff4be8578d2dfa17425b165a4263456573dfd23ade5bd679a685cd49',
        'minimum' => 61,
        'maximum' => 61,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Pose',
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
            ],
            [
                'name' => 'speed',
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
                'name' => 'trajectory_connect',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original Pose field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $Pose;
    /** @brief Original speed field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Pose', $values))
            $this->Pose = $values['Pose'];
        else
        {
            $this->Pose = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsMoveL', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsMoveL', $bytes);
    }
}

/** @brief Own all 6 original rm_msgs/Moveloffset fields.
 * @details 67..67 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsMoveloffset
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsMoveloffset',
        'type' => 'rm_msgs/Moveloffset',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Moveloffset',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_886f3c1a20875ee75df0a4e50fd4dd0c3ec47ffd7bc3f868ac90ad9e7f0dec28',
        'minimum' => 67,
        'maximum' => 67,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'offset',
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
            ],
            [
                'name' => 'speed',
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
                'name' => 'r',
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
                'name' => 'trajectory_connect',
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
                'name' => 'frame_type',
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
                'name' => 'block',
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
    /** @brief Original offset field; geometry_msgs/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $offset;
    /** @brief Original speed field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original r field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $r;
    /** @brief Original trajectory_connect field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
    /** @brief Original frame_type field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $frame_type;
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('offset', $values))
            $this->offset = $values['offset'];
        else
        {
            $this->offset = new Ros1Geometry_msgsPose();
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('r', $values))
            $this->r = $values['r'];
        else
        {
            $this->r = 0;
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = false;
        }
        if (array_key_exists('frame_type', $values))
            $this->frame_type = $values['frame_type'];
        else
        {
            $this->frame_type = false;
        }
        if (array_key_exists('block', $values))
            $this->block = $values['block'];
        else
        {
            $this->block = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsMoveloffset', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsMoveloffset', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/Ort_Teach fields.
 * @details 10..522 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsOrt_Teach
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsOrt_Teach',
        'type' => 'rm_msgs/Ort_Teach',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Ort_Teach',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_42dfe53597ed6f1ba5ffaa6042babc85f1a5ff43e2880f2c6fb383211ebed497',
        'minimum' => 10,
        'maximum' => 522,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'teach_type',
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
                'name' => 'direction',
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
                'name' => 'v',
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
    /** @brief Original teach_type field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $teach_type;
    /** @brief Original direction field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $direction;
    /** @brief Original v field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $v;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('teach_type', $values))
            $this->teach_type = $values['teach_type'];
        else
        {
            $this->teach_type = '';
        }
        if (array_key_exists('direction', $values))
            $this->direction = $values['direction'];
        else
        {
            $this->direction = '';
        }
        if (array_key_exists('v', $values))
            $this->v = $values['v'];
        else
        {
            $this->v = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsOrt_Teach', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsOrt_Teach', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Plan_State fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsPlan_State
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsPlan_State',
        'type' => 'rm_msgs/Plan_State',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Plan_State',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a9ac3bd0f8c096d42c8a5852fb71d9aac18315645cf0fb4669c38d6371fb2ba9',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'state',
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
    /** @brief Original state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
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
            $this->state = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsPlan_State', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsPlan_State', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/Pos_Teach fields.
 * @details 10..522 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsPos_Teach
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsPos_Teach',
        'type' => 'rm_msgs/Pos_Teach',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Pos_Teach',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6cf8ac67bafa4470a0a338053f3bef98e6c4c97cc508fbade9ebe590e4bf691a',
        'minimum' => 10,
        'maximum' => 522,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'teach_type',
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
                'name' => 'direction',
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
                'name' => 'v',
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
    /** @brief Original teach_type field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $teach_type;
    /** @brief Original direction field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $direction;
    /** @brief Original v field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $v;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('teach_type', $values))
            $this->teach_type = $values['teach_type'];
        else
        {
            $this->teach_type = '';
        }
        if (array_key_exists('direction', $values))
            $this->direction = $values['direction'];
        else
        {
            $this->direction = '';
        }
        if (array_key_exists('v', $values))
            $this->v = $values['v'];
        else
        {
            $this->v = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsPos_Teach', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsPos_Teach', $bytes);
    }
}

/** @brief Own all 9 original rm_msgs/Programrunstate fields.
 * @details 36..164 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsProgramrunstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsProgramrunstate',
        'type' => 'rm_msgs/Programrunstate',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Programrunstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_33f9f3bf9c238c3b304fdb6f8394ff1efd76d312dafb908a2e39260dadd1434a',
        'minimum' => 36,
        'maximum' => 164,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'run_state',
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
                'name' => 'id',
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
                'name' => 'edit_id',
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
                'name' => 'plan_num',
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
                'name' => 'total_loop',
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
                'name' => 'step_mode',
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
                'name' => 'plan_speed',
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
                'name' => 'loop_num',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'loop_cont',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original run_state field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $run_state;
    /** @brief Original id field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $id;
    /** @brief Original edit_id field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $edit_id;
    /** @brief Original plan_num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $plan_num;
    /** @brief Original total_loop field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $total_loop;
    /** @brief Original step_mode field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $step_mode;
    /** @brief Original plan_speed field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $plan_speed;
    /** @brief Original loop_num field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $loop_num;
    /** @brief Original loop_cont field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $loop_cont;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('run_state', $values))
            $this->run_state = $values['run_state'];
        else
        {
            $this->run_state = 0;
        }
        if (array_key_exists('id', $values))
            $this->id = $values['id'];
        else
        {
            $this->id = 0;
        }
        if (array_key_exists('edit_id', $values))
            $this->edit_id = $values['edit_id'];
        else
        {
            $this->edit_id = 0;
        }
        if (array_key_exists('plan_num', $values))
            $this->plan_num = $values['plan_num'];
        else
        {
            $this->plan_num = 0;
        }
        if (array_key_exists('total_loop', $values))
            $this->total_loop = $values['total_loop'];
        else
        {
            $this->total_loop = 0;
        }
        if (array_key_exists('step_mode', $values))
            $this->step_mode = $values['step_mode'];
        else
        {
            $this->step_mode = 0;
        }
        if (array_key_exists('plan_speed', $values))
            $this->plan_speed = $values['plan_speed'];
        else
        {
            $this->plan_speed = 0;
        }
        if (array_key_exists('loop_num', $values))
            $this->loop_num = $values['loop_num'];
        else
        {
            $this->loop_num = [];
        }
        if (array_key_exists('loop_cont', $values))
            $this->loop_cont = $values['loop_cont'];
        else
        {
            $this->loop_cont = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsProgramrunstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsProgramrunstate', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/RS485_Mode fields.
 * @details 10..10 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsRS485_Mode
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsRS485_Mode',
        'type' => 'rm_msgs/RS485_Mode',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/RS485_Mode',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_47bf8f6bb74160b4acfea2fe14a2d75f35a0232f11419cda7c0d2333aab31424',
        'minimum' => 10,
        'maximum' => 10,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'controller_RS485_mode',
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
                'name' => 'tool_RS485_mode',
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
                'name' => 'baudrate',
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
                'name' => 'modbus_timeout',
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
    /** @brief Original controller_RS485_mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $controller_RS485_mode;
    /** @brief Original tool_RS485_mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tool_RS485_mode;
    /** @brief Original baudrate field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $baudrate;
    /** @brief Original modbus_timeout field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $modbus_timeout;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('controller_RS485_mode', $values))
            $this->controller_RS485_mode = $values['controller_RS485_mode'];
        else
        {
            $this->controller_RS485_mode = 0;
        }
        if (array_key_exists('tool_RS485_mode', $values))
            $this->tool_RS485_mode = $values['tool_RS485_mode'];
        else
        {
            $this->tool_RS485_mode = 0;
        }
        if (array_key_exists('baudrate', $values))
            $this->baudrate = $values['baudrate'];
        else
        {
            $this->baudrate = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('modbus_timeout', $values))
            $this->modbus_timeout = $values['modbus_timeout'];
        else
        {
            $this->modbus_timeout = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsRS485_Mode', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsRS485_Mode', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/RS485params fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsRS485params
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsRS485params',
        'type' => 'rm_msgs/RS485params',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/RS485params',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7c8cce477352cfa8e2647042f8734dad2ed44aa35f51701d528cd0d9931f4eec',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'mode',
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
                'name' => 'baudrate',
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
    /** @brief Original mode field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original baudrate field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $baudrate;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('baudrate', $values))
            $this->baudrate = $values['baudrate'];
        else
        {
            $this->baudrate = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsRS485params', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsRS485params', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Read_ModbusRTU fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsRead_ModbusRTU
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsRead_ModbusRTU',
        'type' => 'rm_msgs/Read_ModbusRTU',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Read_ModbusRTU',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a81a5257d7f140e3d988d283c4fa2fdabfda43ca1d0c80f5dfad3f498a776969',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
                'name' => 'device',
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
                'name' => 'num',
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
                'name' => 'type',
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
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original device field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $device;
    /** @brief Original num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original type field; int32 scalar.
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
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
        if (array_key_exists('device', $values))
            $this->device = $values['device'];
        else
        {
            $this->device = 0;
        }
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
        }
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
        return Catalog::wire()->encode('Ros1Rm_msgsRead_ModbusRTU', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsRead_ModbusRTU', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Read_Register fields.
 * @details 13..13 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsRead_Register
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsRead_Register',
        'type' => 'rm_msgs/Read_Register',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Read_Register',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_917ea5dfecf096965284116556b7d6e34011714da4cb369fbf3d9a497c630d4f',
        'minimum' => 13,
        'maximum' => 13,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'port',
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
                'name' => 'address',
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
                'name' => 'num',
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
                'name' => 'device',
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
    /** @brief Original port field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original address field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original num field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original device field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $device;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('port', $values))
            $this->port = $values['port'];
        else
        {
            $this->port = 0;
        }
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('device', $values))
            $this->device = $values['device'];
        else
        {
            $this->device = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsRead_Register', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsRead_Register', $bytes);
    }
}

/** @brief Own all 7 original rm_msgs/Read_TCPandRTU fields.
 * @details 28..540 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsRead_TCPandRTU
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsRead_TCPandRTU',
        'type' => 'rm_msgs/Read_TCPandRTU',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Read_TCPandRTU',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6380b88d7659fa5c4acc02f200882400b978c960d948edc551359a74bd3376b9',
        'minimum' => 28,
        'maximum' => 540,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
                'name' => 'num',
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
                'name' => 'ip',
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
                'name' => 'port',
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
                'name' => 'master_name',
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
                'name' => 'device',
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
                'name' => 'type',
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
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original port field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original master_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $master_name;
    /** @brief Original device field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $device;
    /** @brief Original type field; int32 scalar.
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
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
        }
        if (array_key_exists('ip', $values))
            $this->ip = $values['ip'];
        else
        {
            $this->ip = '';
        }
        if (array_key_exists('port', $values))
            $this->port = $values['port'];
        else
        {
            $this->port = 0;
        }
        if (array_key_exists('master_name', $values))
            $this->master_name = $values['master_name'];
        else
        {
            $this->master_name = '';
        }
        if (array_key_exists('device', $values))
            $this->device = $values['device'];
        else
        {
            $this->device = 0;
        }
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
        return Catalog::wire()->encode('Ros1Rm_msgsRead_TCPandRTU', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsRead_TCPandRTU', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Register_Data fields.
 * @details 5..37 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsRegister_Data
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsRegister_Data',
        'type' => 'rm_msgs/Register_Data',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Register_Data',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ba1d780495f79683c483081c8326ce806edc62e8402dcc0566dc34d86b3a8867',
        'minimum' => 5,
        'maximum' => 37,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'state',
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
                'name' => 'data',
                'type' => 'uint16',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
    /** @brief Original data field; uint16 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $data;
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
            $this->state = false;
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsRegister_Data', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsRegister_Data', $bytes);
    }
}

/** @brief Own all 22 original rm_msgs/Rm_Plus_Base fields.
 * @details 61..1597 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsRm_Plus_Base
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsRm_Plus_Base',
        'type' => 'rm_msgs/Rm_Plus_Base',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Rm_Plus_Base',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9ca40bb3db27ce29bdb768b19fbb9d83f54894b107844c5d127c99d45702c1d6',
        'minimum' => 61,
        'maximum' => 1597,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'manu',
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
                'name' => 'type',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'hv',
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
                'name' => 'sv',
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
                'name' => 'bv',
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
                'name' => 'id',
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
                'name' => 'dof',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'check',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'bee',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'force',
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
                'name' => 'touch',
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
                'name' => 'touch_num',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'touch_sw',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'hand',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'pos_up',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'pos_low',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'angle_up',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'angle_low',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'speed_up',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'speed_low',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'force_up',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'force_low',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original manu field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $manu;
    /** @brief Original type field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $type;
    /** @brief Original hv field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $hv;
    /** @brief Original sv field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $sv;
    /** @brief Original bv field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $bv;
    /** @brief Original id field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $id;
    /** @brief Original dof field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dof;
    /** @brief Original check field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $check;
    /** @brief Original bee field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $bee;
    /** @brief Original force field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
    /** @brief Original touch field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $touch;
    /** @brief Original touch_num field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $touch_num;
    /** @brief Original touch_sw field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $touch_sw;
    /** @brief Original hand field; int8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $hand;
    /** @brief Original pos_up field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $pos_up;
    /** @brief Original pos_low field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $pos_low;
    /** @brief Original angle_up field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $angle_up;
    /** @brief Original angle_low field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $angle_low;
    /** @brief Original speed_up field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $speed_up;
    /** @brief Original speed_low field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $speed_low;
    /** @brief Original force_up field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $force_up;
    /** @brief Original force_low field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $force_low;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('manu', $values))
            $this->manu = $values['manu'];
        else
        {
            $this->manu = '';
        }
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
        if (array_key_exists('hv', $values))
            $this->hv = $values['hv'];
        else
        {
            $this->hv = '';
        }
        if (array_key_exists('sv', $values))
            $this->sv = $values['sv'];
        else
        {
            $this->sv = '';
        }
        if (array_key_exists('bv', $values))
            $this->bv = $values['bv'];
        else
        {
            $this->bv = '';
        }
        if (array_key_exists('id', $values))
            $this->id = $values['id'];
        else
        {
            $this->id = 0;
        }
        if (array_key_exists('dof', $values))
            $this->dof = $values['dof'];
        else
        {
            $this->dof = 0;
        }
        if (array_key_exists('check', $values))
            $this->check = $values['check'];
        else
        {
            $this->check = 0;
        }
        if (array_key_exists('bee', $values))
            $this->bee = $values['bee'];
        else
        {
            $this->bee = 0;
        }
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = false;
        }
        if (array_key_exists('touch', $values))
            $this->touch = $values['touch'];
        else
        {
            $this->touch = false;
        }
        if (array_key_exists('touch_num', $values))
            $this->touch_num = $values['touch_num'];
        else
        {
            $this->touch_num = 0;
        }
        if (array_key_exists('touch_sw', $values))
            $this->touch_sw = $values['touch_sw'];
        else
        {
            $this->touch_sw = 0;
        }
        if (array_key_exists('hand', $values))
            $this->hand = $values['hand'];
        else
        {
            $this->hand = 0;
        }
        if (array_key_exists('pos_up', $values))
            $this->pos_up = $values['pos_up'];
        else
        {
            $this->pos_up = [];
        }
        if (array_key_exists('pos_low', $values))
            $this->pos_low = $values['pos_low'];
        else
        {
            $this->pos_low = [];
        }
        if (array_key_exists('angle_up', $values))
            $this->angle_up = $values['angle_up'];
        else
        {
            $this->angle_up = [];
        }
        if (array_key_exists('angle_low', $values))
            $this->angle_low = $values['angle_low'];
        else
        {
            $this->angle_low = [];
        }
        if (array_key_exists('speed_up', $values))
            $this->speed_up = $values['speed_up'];
        else
        {
            $this->speed_up = [];
        }
        if (array_key_exists('speed_low', $values))
            $this->speed_low = $values['speed_low'];
        else
        {
            $this->speed_low = [];
        }
        if (array_key_exists('force_up', $values))
            $this->force_up = $values['force_up'];
        else
        {
            $this->force_up = [];
        }
        if (array_key_exists('force_low', $values))
            $this->force_low = $values['force_low'];
        else
        {
            $this->force_low = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsRm_Plus_Base', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsRm_Plus_Base', $bytes);
    }
}

/** @brief Own all 15 original rm_msgs/Rm_Plus_State fields.
 * @details 60..892 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsRm_Plus_State
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsRm_Plus_State',
        'type' => 'rm_msgs/Rm_Plus_State',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Rm_Plus_State',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_430d17485316136f019ee6cda961a0152b7f024cb24aa235d2e048b0216f6db1',
        'minimum' => 60,
        'maximum' => 892,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'sys_state',
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
                'name' => 'sys_err',
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
                'name' => 'dof_state',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'dof_err',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'pos',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'angle',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'current',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'normal_force',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'tangential_force',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'tangential_force_dir',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'tsa',
                'type' => 'uint32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'tma',
                'type' => 'uint32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'touch_data',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'force',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
    /** @brief Original sys_state field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sys_state;
    /** @brief Original sys_err field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sys_err;
    /** @brief Original dof_state field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $dof_state;
    /** @brief Original dof_err field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $dof_err;
    /** @brief Original pos field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original speed field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original angle field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $angle;
    /** @brief Original current field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $current;
    /** @brief Original normal_force field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $normal_force;
    /** @brief Original tangential_force field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $tangential_force;
    /** @brief Original tangential_force_dir field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $tangential_force_dir;
    /** @brief Original tsa field; uint32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $tsa;
    /** @brief Original tma field; uint32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $tma;
    /** @brief Original touch_data field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $touch_data;
    /** @brief Original force field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $force;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('sys_state', $values))
            $this->sys_state = $values['sys_state'];
        else
        {
            $this->sys_state = 0;
        }
        if (array_key_exists('sys_err', $values))
            $this->sys_err = $values['sys_err'];
        else
        {
            $this->sys_err = 0;
        }
        if (array_key_exists('dof_state', $values))
            $this->dof_state = $values['dof_state'];
        else
        {
            $this->dof_state = [];
        }
        if (array_key_exists('dof_err', $values))
            $this->dof_err = $values['dof_err'];
        else
        {
            $this->dof_err = [];
        }
        if (array_key_exists('pos', $values))
            $this->pos = $values['pos'];
        else
        {
            $this->pos = [];
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = [];
        }
        if (array_key_exists('angle', $values))
            $this->angle = $values['angle'];
        else
        {
            $this->angle = [];
        }
        if (array_key_exists('current', $values))
            $this->current = $values['current'];
        else
        {
            $this->current = [];
        }
        if (array_key_exists('normal_force', $values))
            $this->normal_force = $values['normal_force'];
        else
        {
            $this->normal_force = [];
        }
        if (array_key_exists('tangential_force', $values))
            $this->tangential_force = $values['tangential_force'];
        else
        {
            $this->tangential_force = [];
        }
        if (array_key_exists('tangential_force_dir', $values))
            $this->tangential_force_dir = $values['tangential_force_dir'];
        else
        {
            $this->tangential_force_dir = [];
        }
        if (array_key_exists('tsa', $values))
            $this->tsa = $values['tsa'];
        else
        {
            $this->tsa = [];
        }
        if (array_key_exists('tma', $values))
            $this->tma = $values['tma'];
        else
        {
            $this->tma = [];
        }
        if (array_key_exists('touch_data', $values))
            $this->touch_data = $values['touch_data'];
        else
        {
            $this->touch_data = [];
        }
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsRm_Plus_State', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsRm_Plus_State', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Servo_GetAngle fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsServo_GetAngle
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsServo_GetAngle',
        'type' => 'rm_msgs/Servo_GetAngle',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Servo_GetAngle',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f3f0398034088c5c94c1551f041a808898ea8f6bdc82226ef69099be11286784',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'servo_id',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original servo_id field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $servo_id;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('servo_id', $values))
            $this->servo_id = $values['servo_id'];
        else
        {
            $this->servo_id = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsServo_GetAngle', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsServo_GetAngle', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Servo_Move fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsServo_Move
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsServo_Move',
        'type' => 'rm_msgs/Servo_Move',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Servo_Move',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_776097952cd219d20f95b4e953dc4b0a9fbbe2652475309fd976537988f241fb',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'servo_id',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'angle',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original servo_id field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $servo_id;
    /** @brief Original angle field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $angle;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('servo_id', $values))
            $this->servo_id = $values['servo_id'];
        else
        {
            $this->servo_id = 0;
        }
        if (array_key_exists('angle', $values))
            $this->angle = $values['angle'];
        else
        {
            $this->angle = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsServo_Move', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsServo_Move', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Set_Force_Position fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsSet_Force_Position
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsSet_Force_Position',
        'type' => 'rm_msgs/Set_Force_Position',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Set_Force_Position',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f2837e2588cbaabc85d66b6693a18ca1581be1ec09fbb4207d6e377d00fdbf87',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'sensor',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'direction',
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
                'name' => 'N',
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
    /** @brief Original sensor field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sensor;
    /** @brief Original mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original direction field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $direction;
    /** @brief Original N field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $N;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('sensor', $values))
            $this->sensor = $values['sensor'];
        else
        {
            $this->sensor = 0;
        }
        if (array_key_exists('mode', $values))
            $this->mode = $values['mode'];
        else
        {
            $this->mode = 0;
        }
        if (array_key_exists('direction', $values))
            $this->direction = $values['direction'];
        else
        {
            $this->direction = 0;
        }
        if (array_key_exists('N', $values))
            $this->N = $values['N'];
        else
        {
            $this->N = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsSet_Force_Position', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsSet_Force_Position', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Set_Modbus_Mode fields.
 * @details 16..272 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsSet_Modbus_Mode
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsSet_Modbus_Mode',
        'type' => 'rm_msgs/Set_Modbus_Mode',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Set_Modbus_Mode',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_007fd5321b9c408191b697ed67ff0a439220fdabdec81e94ef1cc53b35de028e',
        'minimum' => 16,
        'maximum' => 272,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'port',
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
                'name' => 'baudrate',
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
                'name' => 'timeout',
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
                'name' => 'ip',
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
    /** @brief Original port field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original baudrate field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $baudrate;
    /** @brief Original timeout field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $timeout;
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('port', $values))
            $this->port = $values['port'];
        else
        {
            $this->port = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('baudrate', $values))
            $this->baudrate = $values['baudrate'];
        else
        {
            $this->baudrate = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('ip', $values))
            $this->ip = $values['ip'];
        else
        {
            $this->ip = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsSet_Modbus_Mode', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsSet_Modbus_Mode', $bytes);
    }
}

/** @brief Own all 14 original rm_msgs/Set_Realtime_Push fields.
 * @details 20..276 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsSet_Realtime_Push
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsSet_Realtime_Push',
        'type' => 'rm_msgs/Set_Realtime_Push',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Set_Realtime_Push',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_aa3d4add03b4a1d307e389813bf8337b34c8260c9eb186ac5a3aabee7e344375',
        'minimum' => 20,
        'maximum' => 276,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'cycle',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'port',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'force_coordinate',
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
                'element_minimum' => 2
            ],
            [
                'name' => 'ip',
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
                'name' => 'aloha_state_enable',
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
                'name' => 'arm_current_status_enable',
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
                'name' => 'expand_state_enable',
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
                'name' => 'hand_enable',
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
                'name' => 'joint_acc_enable',
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
                'name' => 'joint_speed_enable',
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
                'name' => 'lift_state_enable',
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
                'name' => 'tail_end_enable',
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
                'name' => 'rm_plus_base_enable',
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
                'name' => 'rm_plus_state_enable',
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
    /** @brief Original cycle field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $cycle;
    /** @brief Original port field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original force_coordinate field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_coordinate;
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original aloha_state_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $aloha_state_enable;
    /** @brief Original arm_current_status_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $arm_current_status_enable;
    /** @brief Original expand_state_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $expand_state_enable;
    /** @brief Original hand_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $hand_enable;
    /** @brief Original joint_acc_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_acc_enable;
    /** @brief Original joint_speed_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_speed_enable;
    /** @brief Original lift_state_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $lift_state_enable;
    /** @brief Original tail_end_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $tail_end_enable;
    /** @brief Original rm_plus_base_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rm_plus_base_enable;
    /** @brief Original rm_plus_state_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $rm_plus_state_enable;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('cycle', $values))
            $this->cycle = $values['cycle'];
        else
        {
            $this->cycle = 0;
        }
        if (array_key_exists('port', $values))
            $this->port = $values['port'];
        else
        {
            $this->port = 0;
        }
        if (array_key_exists('force_coordinate', $values))
            $this->force_coordinate = $values['force_coordinate'];
        else
        {
            $this->force_coordinate = 0;
        }
        if (array_key_exists('ip', $values))
            $this->ip = $values['ip'];
        else
        {
            $this->ip = '';
        }
        if (array_key_exists('aloha_state_enable', $values))
            $this->aloha_state_enable = $values['aloha_state_enable'];
        else
        {
            $this->aloha_state_enable = false;
        }
        if (array_key_exists('arm_current_status_enable', $values))
            $this->arm_current_status_enable = $values['arm_current_status_enable'];
        else
        {
            $this->arm_current_status_enable = false;
        }
        if (array_key_exists('expand_state_enable', $values))
            $this->expand_state_enable = $values['expand_state_enable'];
        else
        {
            $this->expand_state_enable = false;
        }
        if (array_key_exists('hand_enable', $values))
            $this->hand_enable = $values['hand_enable'];
        else
        {
            $this->hand_enable = false;
        }
        if (array_key_exists('joint_acc_enable', $values))
            $this->joint_acc_enable = $values['joint_acc_enable'];
        else
        {
            $this->joint_acc_enable = false;
        }
        if (array_key_exists('joint_speed_enable', $values))
            $this->joint_speed_enable = $values['joint_speed_enable'];
        else
        {
            $this->joint_speed_enable = false;
        }
        if (array_key_exists('lift_state_enable', $values))
            $this->lift_state_enable = $values['lift_state_enable'];
        else
        {
            $this->lift_state_enable = false;
        }
        if (array_key_exists('tail_end_enable', $values))
            $this->tail_end_enable = $values['tail_end_enable'];
        else
        {
            $this->tail_end_enable = false;
        }
        if (array_key_exists('rm_plus_base_enable', $values))
            $this->rm_plus_base_enable = $values['rm_plus_base_enable'];
        else
        {
            $this->rm_plus_base_enable = false;
        }
        if (array_key_exists('rm_plus_state_enable', $values))
            $this->rm_plus_state_enable = $values['rm_plus_state_enable'];
        else
        {
            $this->rm_plus_state_enable = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsSet_Realtime_Push', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsSet_Realtime_Push', $bytes);
    }
}

/** @brief Own all 6 original rm_msgs/Six_Force fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsSix_Force
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsSix_Force',
        'type' => 'rm_msgs/Six_Force',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Six_Force',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_16909106e846dce81f6ff66583cdb569fecd956c7e08367b9d532ce096d5d720',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'force_Fx',
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
                'name' => 'force_Fy',
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
                'name' => 'force_Fz',
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
                'name' => 'force_Mx',
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
                'name' => 'force_My',
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
                'name' => 'force_Mz',
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
    /** @brief Original force_Fx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_Fx;
    /** @brief Original force_Fy field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_Fy;
    /** @brief Original force_Fz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_Fz;
    /** @brief Original force_Mx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_Mx;
    /** @brief Original force_My field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_My;
    /** @brief Original force_Mz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_Mz;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('force_Fx', $values))
            $this->force_Fx = $values['force_Fx'];
        else
        {
            $this->force_Fx = 0.0;
        }
        if (array_key_exists('force_Fy', $values))
            $this->force_Fy = $values['force_Fy'];
        else
        {
            $this->force_Fy = 0.0;
        }
        if (array_key_exists('force_Fz', $values))
            $this->force_Fz = $values['force_Fz'];
        else
        {
            $this->force_Fz = 0.0;
        }
        if (array_key_exists('force_Mx', $values))
            $this->force_Mx = $values['force_Mx'];
        else
        {
            $this->force_Mx = 0.0;
        }
        if (array_key_exists('force_My', $values))
            $this->force_My = $values['force_My'];
        else
        {
            $this->force_My = 0.0;
        }
        if (array_key_exists('force_Mz', $values))
            $this->force_Mz = $values['force_Mz'];
        else
        {
            $this->force_Mz = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsSix_Force', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsSix_Force', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Socket_Command fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsSocket_Command
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsSocket_Command',
        'type' => 'rm_msgs/Socket_Command',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Socket_Command',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f55143fcc5bf1da4e0fbf538f9faf480932d5b8405d6c1f880c6091a38f68d17',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'command',
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
                'element_minimum' => 2
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original command field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $command;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('command', $values))
            $this->command = $values['command'];
        else
        {
            $this->command = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsSocket_Command', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsSocket_Command', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/Start_Multi_Drag_Teach fields.
 * @details 32..32 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsStart_Multi_Drag_Teach
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsStart_Multi_Drag_Teach',
        'type' => 'rm_msgs/Start_Multi_Drag_Teach',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Start_Multi_Drag_Teach',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5bc8bea8dc6051a6ec45da2fabd12107e8b7a9731cc6031af49371cb2b6c64a8',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'free_axes',
                'type' => 'int32',
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
                'name' => 'frame',
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
                'name' => 'singular_wall',
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
    /** @brief Original free_axes field; int32 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $free_axes;
    /** @brief Original frame field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $frame;
    /** @brief Original singular_wall field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $singular_wall;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('free_axes', $values))
            $this->free_axes = $values['free_axes'];
        else
        {
            $this->free_axes = [];
            $this->free_axes[] = 0;
            $this->free_axes[] = 0;
            $this->free_axes[] = 0;
            $this->free_axes[] = 0;
            $this->free_axes[] = 0;
            $this->free_axes[] = 0;
        }
        if (array_key_exists('frame', $values))
            $this->frame = $values['frame'];
        else
        {
            $this->frame = 0;
        }
        if (array_key_exists('singular_wall', $values))
            $this->singular_wall = $values['singular_wall'];
        else
        {
            $this->singular_wall = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsStart_Multi_Drag_Teach', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsStart_Multi_Drag_Teach', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Stop fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsStop
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsStop',
        'type' => 'rm_msgs/Stop',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Stop',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_87bbb0270d31ccd7e207da872d191cf01d4f10f9eed6bcffaef9f440a2c5378a',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'state',
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
    /** @brief Original state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
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
            $this->state = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsStop', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsStop', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Stop_Teach fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsStop_Teach
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsStop_Teach',
        'type' => 'rm_msgs/Stop_Teach',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Stop_Teach',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d7e8a4419f9a4132ecad0fcb738953bc3dc029aba09bc8f4fa97e12ab088f97e',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'command',
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
    /** @brief Original command field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $command;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('command', $values))
            $this->command = $values['command'];
        else
        {
            $this->command = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsStop_Teach', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsStop_Teach', $bytes);
    }
}

/** @brief Own all 1 original rm_msgs/Tool_Analog_Output fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsTool_Analog_Output
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsTool_Analog_Output',
        'type' => 'rm_msgs/Tool_Analog_Output',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Tool_Analog_Output',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8ce6b700a85d05fa99167fad521b7162b9a0e4670c9022782ed522d1c320979f',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'voltage',
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
    /** @brief Original voltage field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $voltage;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('voltage', $values))
            $this->voltage = $values['voltage'];
        else
        {
            $this->voltage = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsTool_Analog_Output', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsTool_Analog_Output', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Tool_Digital_Output fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsTool_Digital_Output
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsTool_Digital_Output',
        'type' => 'rm_msgs/Tool_Digital_Output',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Tool_Digital_Output',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_10c924520a9c47a999bfebbf55c9474aa8e7770a8e8a58d446af0c1eacc1889e',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'num',
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
                'name' => 'state',
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
    /** @brief Original num field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
        }
        if (array_key_exists('state', $values))
            $this->state = $values['state'];
        else
        {
            $this->state = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsTool_Digital_Output', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsTool_Digital_Output', $bytes);
    }
}

/** @brief Own all 2 original rm_msgs/Tool_IO_State fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsTool_IO_State
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsTool_IO_State',
        'type' => 'rm_msgs/Tool_IO_State',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Tool_IO_State',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3259adff977d4832fc6ba1e9e2a13aca1e99f86c4f4177b54ccd7c459f86fb84',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'Tool_IO_Mode',
                'type' => 'int8',
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
                'element_minimum' => 1
            ],
            [
                'name' => 'Tool_IO_State',
                'type' => 'int8',
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
                'element_minimum' => 1
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original Tool_IO_Mode field; int8 array.
     * @details Active count at most 2; text bound 0 bytes. */
    public mixed $Tool_IO_Mode;
    /** @brief Original Tool_IO_State field; int8 array.
     * @details Active count at most 2; text bound 0 bytes. */
    public mixed $Tool_IO_State;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('Tool_IO_Mode', $values))
            $this->Tool_IO_Mode = $values['Tool_IO_Mode'];
        else
        {
            $this->Tool_IO_Mode = [];
            $this->Tool_IO_Mode[] = 0;
            $this->Tool_IO_Mode[] = 0;
        }
        if (array_key_exists('Tool_IO_State', $values))
            $this->Tool_IO_State = $values['Tool_IO_State'];
        else
        {
            $this->Tool_IO_State = [];
            $this->Tool_IO_State[] = 0;
            $this->Tool_IO_State[] = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsTool_IO_State', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsTool_IO_State', $bytes);
    }
}

/** @brief Own all 3 original rm_msgs/Trajectoryinfo fields.
 * @details 12..524 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsTrajectoryinfo
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsTrajectoryinfo',
        'type' => 'rm_msgs/Trajectoryinfo',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Trajectoryinfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_16571d503b8ffbc3d3bbd71f2f4eea11e8d0c30ff1dc8a40349d00c6294bbebd',
        'minimum' => 12,
        'maximum' => 524,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'name',
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
                'name' => 'create_time',
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
                'name' => 'point_num',
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
    /** @brief Original name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $name;
    /** @brief Original create_time field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $create_time;
    /** @brief Original point_num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point_num;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('name', $values))
            $this->name = $values['name'];
        else
        {
            $this->name = '';
        }
        if (array_key_exists('create_time', $values))
            $this->create_time = $values['create_time'];
        else
        {
            $this->create_time = '';
        }
        if (array_key_exists('point_num', $values))
            $this->point_num = $values['point_num'];
        else
        {
            $this->point_num = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsTrajectoryinfo', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsTrajectoryinfo', $bytes);
    }
}

/** @brief Own all 5 original rm_msgs/Trajectorylist fields.
 * @details 20..8660 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsTrajectorylist
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsTrajectorylist',
        'type' => 'rm_msgs/Trajectorylist',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Trajectorylist',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2a6f11ce34da610b3a2c7738fbdc705ce549702edf8869972ab1126d86717fd9',
        'minimum' => 20,
        'maximum' => 8660,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'page_num',
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
                'name' => 'page_size',
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
                'name' => 'total_size',
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
                'name' => 'vague_search',
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
                'name' => 'tra_list',
                'type' => 'Ros1Rm_msgsTrajectoryinfo',
                'array' => 'sequence',
                'count' => 16,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 12
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original page_num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $page_num;
    /** @brief Original page_size field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $page_size;
    /** @brief Original total_size field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $total_size;
    /** @brief Original vague_search field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $vague_search;
    /** @brief Original tra_list field; rm_msgs/Trajectoryinfo sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $tra_list;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('page_num', $values))
            $this->page_num = $values['page_num'];
        else
        {
            $this->page_num = 0;
        }
        if (array_key_exists('page_size', $values))
            $this->page_size = $values['page_size'];
        else
        {
            $this->page_size = 0;
        }
        if (array_key_exists('total_size', $values))
            $this->total_size = $values['total_size'];
        else
        {
            $this->total_size = 0;
        }
        if (array_key_exists('vague_search', $values))
            $this->vague_search = $values['vague_search'];
        else
        {
            $this->vague_search = '';
        }
        if (array_key_exists('tra_list', $values))
            $this->tra_list = $values['tra_list'];
        else
        {
            $this->tra_list = [];
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsTrajectorylist', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsTrajectorylist', $bytes);
    }
}

/** @brief Own all 5 original rm_msgs/Turtle_Driver fields.
 * @details 20..532 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsTurtle_Driver
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsTurtle_Driver',
        'type' => 'rm_msgs/Turtle_Driver',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Turtle_Driver',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d78bbc2b8ade4cc0f3a2807b674b87cf49f46faa33185187b579b7836c5bb7fe',
        'minimum' => 20,
        'maximum' => 532,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'message_type',
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
                'name' => 'robot_mac_address',
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
                'name' => 'vx',
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
                'name' => 'vy',
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
                'name' => 'vtheta',
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
    /** @brief Original message_type field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $message_type;
    /** @brief Original robot_mac_address field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $robot_mac_address;
    /** @brief Original vx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $vx;
    /** @brief Original vy field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $vy;
    /** @brief Original vtheta field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $vtheta;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('message_type', $values))
            $this->message_type = $values['message_type'];
        else
        {
            $this->message_type = '';
        }
        if (array_key_exists('robot_mac_address', $values))
            $this->robot_mac_address = $values['robot_mac_address'];
        else
        {
            $this->robot_mac_address = '';
        }
        if (array_key_exists('vx', $values))
            $this->vx = $values['vx'];
        else
        {
            $this->vx = 0.0;
        }
        if (array_key_exists('vy', $values))
            $this->vy = $values['vy'];
        else
        {
            $this->vy = 0.0;
        }
        if (array_key_exists('vtheta', $values))
            $this->vtheta = $values['vtheta'];
        else
        {
            $this->vtheta = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsTurtle_Driver', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsTurtle_Driver', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/UpdateTCPmasterparam fields.
 * @details 16..784 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsUpdateTCPmasterparam
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsUpdateTCPmasterparam',
        'type' => 'rm_msgs/UpdateTCPmasterparam',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/UpdateTCPmasterparam',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_588eaac57487dc2d7ab412bf221ca0157959d2826d310ff218c63ddbfa287872',
        'minimum' => 16,
        'maximum' => 784,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'master_name',
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
                'name' => 'new_name',
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
                'name' => 'ip',
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
                'name' => 'port',
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
    /** @brief Original master_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $master_name;
    /** @brief Original new_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $new_name;
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original port field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('master_name', $values))
            $this->master_name = $values['master_name'];
        else
        {
            $this->master_name = '';
        }
        if (array_key_exists('new_name', $values))
            $this->new_name = $values['new_name'];
        else
        {
            $this->new_name = '';
        }
        if (array_key_exists('ip', $values))
            $this->ip = $values['ip'];
        else
        {
            $this->ip = '';
        }
        if (array_key_exists('port', $values))
            $this->port = $values['port'];
        else
        {
            $this->port = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsUpdateTCPmasterparam', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsUpdateTCPmasterparam', $bytes);
    }
}

/** @brief Own all 4 original rm_msgs/Write_ModbusRTU fields.
 * @details 16..80 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsWrite_ModbusRTU
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsWrite_ModbusRTU',
        'type' => 'rm_msgs/Write_ModbusRTU',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Write_ModbusRTU',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_09caba0e331ca32e826368f575bcfd26ec1e0e2ae63da26bdbfdda5f7cc486c8',
        'minimum' => 16,
        'maximum' => 80,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
                'name' => 'data',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'type',
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
                'name' => 'device',
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
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original data field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $data;
    /** @brief Original type field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $type;
    /** @brief Original device field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $device;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = [];
        }
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
        if (array_key_exists('device', $values))
            $this->device = $values['device'];
        else
        {
            $this->device = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsWrite_ModbusRTU', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsWrite_ModbusRTU', $bytes);
    }
}

/** @brief Own all 5 original rm_msgs/Write_Register fields.
 * @details 17..49 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsWrite_Register
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsWrite_Register',
        'type' => 'rm_msgs/Write_Register',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Write_Register',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ef2fb0ea4f38aecce5111c39f35aa4195d9658fe6bbe4f9c059b85ee3ce32251',
        'minimum' => 17,
        'maximum' => 49,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'port',
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
                'name' => 'address',
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
                'name' => 'num',
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
                'name' => 'data',
                'type' => 'uint16',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'device',
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
    /** @brief Original port field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original address field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original num field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original data field; uint16 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $data;
    /** @brief Original device field; uint32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $device;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('port', $values))
            $this->port = $values['port'];
        else
        {
            $this->port = 0;
        }
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = [];
        }
        if (array_key_exists('device', $values))
            $this->device = $values['device'];
        else
        {
            $this->device = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsWrite_Register', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsWrite_Register', $bytes);
    }
}

/** @brief Own all 7 original rm_msgs/Write_TCPandRTU fields.
 * @details 28..604 canonical bytes; independent nested defaults.
 */
final class Ros1Rm_msgsWrite_TCPandRTU
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros1Rm_msgsWrite_TCPandRTU',
        'type' => 'rm_msgs/Write_TCPandRTU',
        'ros_version' => 1,
        'native_type' => 'rm_msgs/Write_TCPandRTU',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8e0690efe69c300dc98a90b00a785109bb3cf0b603a36e173a346383e6b7e16a',
        'minimum' => 28,
        'maximum' => 604,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'address',
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
                'name' => 'data',
                'type' => 'int32',
                'array' => 'sequence',
                'count' => 16,
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
                'name' => 'ip',
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
                'name' => 'port',
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
                'name' => 'master_name',
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
                'name' => 'type',
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
                'name' => 'device',
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
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original data field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $data;
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original port field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original master_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $master_name;
    /** @brief Original type field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $type;
    /** @brief Original device field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $device;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
        if (array_key_exists('data', $values))
            $this->data = $values['data'];
        else
        {
            $this->data = [];
        }
        if (array_key_exists('ip', $values))
            $this->ip = $values['ip'];
        else
        {
            $this->ip = '';
        }
        if (array_key_exists('port', $values))
            $this->port = $values['port'];
        else
        {
            $this->port = 0;
        }
        if (array_key_exists('master_name', $values))
            $this->master_name = $values['master_name'];
        else
        {
            $this->master_name = '';
        }
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
        if (array_key_exists('device', $values))
            $this->device = $values['device'];
        else
        {
            $this->device = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros1Rm_msgsWrite_TCPandRTU', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros1Rm_msgsWrite_TCPandRTU', $bytes);
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
            'Ros1Rm_msgsArmState' => Ros1Rm_msgsArmState::SCHEMA + ['class' => Ros1Rm_msgsArmState::class],
            'Ros1Rm_msgsArm_Analog_Output' => Ros1Rm_msgsArm_Analog_Output::SCHEMA + ['class' => Ros1Rm_msgsArm_Analog_Output::class],
            'Ros1Rm_msgsArm_Current_State' => Ros1Rm_msgsArm_Current_State::SCHEMA + ['class' => Ros1Rm_msgsArm_Current_State::class],
            'Ros1Rm_msgsArm_Current_Status' => Ros1Rm_msgsArm_Current_Status::SCHEMA + ['class' => Ros1Rm_msgsArm_Current_Status::class],
            'Ros1Rm_msgsArm_Digital_Output' => Ros1Rm_msgsArm_Digital_Output::SCHEMA + ['class' => Ros1Rm_msgsArm_Digital_Output::class],
            'Ros1Rm_msgsArm_IO_State' => Ros1Rm_msgsArm_IO_State::SCHEMA + ['class' => Ros1Rm_msgsArm_IO_State::class],
            'Ros1Time' => Ros1Time::SCHEMA + ['class' => Ros1Time::class],
            'Ros1Std_msgsHeader' => Ros1Std_msgsHeader::SCHEMA + ['class' => Ros1Std_msgsHeader::class],
            'Ros1Rm_msgsArm_Joint_Speed_Max' => Ros1Rm_msgsArm_Joint_Speed_Max::SCHEMA + ['class' => Ros1Rm_msgsArm_Joint_Speed_Max::class],
            'Ros1Rm_msgsSoftwarebuildinfo' => Ros1Rm_msgsSoftwarebuildinfo::SCHEMA + ['class' => Ros1Rm_msgsSoftwarebuildinfo::class],
            'Ros1Rm_msgsArm_Softversion_v3' => Ros1Rm_msgsArm_Softversion_v3::SCHEMA + ['class' => Ros1Rm_msgsArm_Softversion_v3::class],
            'Ros1Rm_msgsArm_Softversion_v4' => Ros1Rm_msgsArm_Softversion_v4::SCHEMA + ['class' => Ros1Rm_msgsArm_Softversion_v4::class],
            'Ros1Rm_msgsArm_Software_Version' => Ros1Rm_msgsArm_Software_Version::SCHEMA + ['class' => Ros1Rm_msgsArm_Software_Version::class],
            'Ros1Rm_msgsCabinet' => Ros1Rm_msgsCabinet::SCHEMA + ['class' => Ros1Rm_msgsCabinet::class],
            'Ros1Rm_msgsCartePos' => Ros1Rm_msgsCartePos::SCHEMA + ['class' => Ros1Rm_msgsCartePos::class],
            'Ros1Rm_msgsCartePosCustom' => Ros1Rm_msgsCartePosCustom::SCHEMA + ['class' => Ros1Rm_msgsCartePosCustom::class],
            'Ros1Rm_msgsChangeTool_Name' => Ros1Rm_msgsChangeTool_Name::SCHEMA + ['class' => Ros1Rm_msgsChangeTool_Name::class],
            'Ros1Rm_msgsChangeTool_State' => Ros1Rm_msgsChangeTool_State::SCHEMA + ['class' => Ros1Rm_msgsChangeTool_State::class],
            'Ros1Rm_msgsChangeWorkFrame_Name' => Ros1Rm_msgsChangeWorkFrame_Name::SCHEMA + ['class' => Ros1Rm_msgsChangeWorkFrame_Name::class],
            'Ros1Rm_msgsChangeWorkFrame_State' => Ros1Rm_msgsChangeWorkFrame_State::SCHEMA + ['class' => Ros1Rm_msgsChangeWorkFrame_State::class],
            'Ros1Rm_msgsErr' => Ros1Rm_msgsErr::SCHEMA + ['class' => Ros1Rm_msgsErr::class],
            'Ros1Rm_msgsExpandState' => Ros1Rm_msgsExpandState::SCHEMA + ['class' => Ros1Rm_msgsExpandState::class],
            'Ros1Rm_msgsExpand_In_Position' => Ros1Rm_msgsExpand_In_Position::SCHEMA + ['class' => Ros1Rm_msgsExpand_In_Position::class],
            'Ros1Rm_msgsExpand_Position' => Ros1Rm_msgsExpand_Position::SCHEMA + ['class' => Ros1Rm_msgsExpand_Position::class],
            'Ros1Rm_msgsExpand_Speed' => Ros1Rm_msgsExpand_Speed::SCHEMA + ['class' => Ros1Rm_msgsExpand_Speed::class],
            'Ros1Rm_msgsFlowchartrunstate' => Ros1Rm_msgsFlowchartrunstate::SCHEMA + ['class' => Ros1Rm_msgsFlowchartrunstate::class],
            'Ros1Rm_msgsForce_Position_Move_Joint' => Ros1Rm_msgsForce_Position_Move_Joint::SCHEMA + ['class' => Ros1Rm_msgsForce_Position_Move_Joint::class],
            'Ros1Rm_msgsForce_Position_Move_Pose' => Ros1Rm_msgsForce_Position_Move_Pose::SCHEMA + ['class' => Ros1Rm_msgsForce_Position_Move_Pose::class],
            'Ros1Rm_msgsForce_Position_Move_Pose_Custom' => Ros1Rm_msgsForce_Position_Move_Pose_Custom::SCHEMA + ['class' => Ros1Rm_msgsForce_Position_Move_Pose_Custom::class],
            'Ros1Rm_msgsForce_Position_State' => Ros1Rm_msgsForce_Position_State::SCHEMA + ['class' => Ros1Rm_msgsForce_Position_State::class],
            'Ros1Rm_msgsGetArmState_Command' => Ros1Rm_msgsGetArmState_Command::SCHEMA + ['class' => Ros1Rm_msgsGetArmState_Command::class],
            'Ros1Rm_msgsGet_TCP_Master_List_Param' => Ros1Rm_msgsGet_TCP_Master_List_Param::SCHEMA + ['class' => Ros1Rm_msgsGet_TCP_Master_List_Param::class],
            'Ros1Rm_msgsGettrajectorylist' => Ros1Rm_msgsGettrajectorylist::SCHEMA + ['class' => Ros1Rm_msgsGettrajectorylist::class],
            'Ros1Rm_msgsGripper_Pick' => Ros1Rm_msgsGripper_Pick::SCHEMA + ['class' => Ros1Rm_msgsGripper_Pick::class],
            'Ros1Rm_msgsGripper_Set' => Ros1Rm_msgsGripper_Set::SCHEMA + ['class' => Ros1Rm_msgsGripper_Set::class],
            'Ros1Rm_msgsHand_Angle' => Ros1Rm_msgsHand_Angle::SCHEMA + ['class' => Ros1Rm_msgsHand_Angle::class],
            'Ros1Rm_msgsHand_Force' => Ros1Rm_msgsHand_Force::SCHEMA + ['class' => Ros1Rm_msgsHand_Force::class],
            'Ros1Rm_msgsHand_Posture' => Ros1Rm_msgsHand_Posture::SCHEMA + ['class' => Ros1Rm_msgsHand_Posture::class],
            'Ros1Rm_msgsHand_Seq' => Ros1Rm_msgsHand_Seq::SCHEMA + ['class' => Ros1Rm_msgsHand_Seq::class],
            'Ros1Rm_msgsHand_Speed' => Ros1Rm_msgsHand_Speed::SCHEMA + ['class' => Ros1Rm_msgsHand_Speed::class],
            'Ros1Rm_msgsHand_Status' => Ros1Rm_msgsHand_Status::SCHEMA + ['class' => Ros1Rm_msgsHand_Status::class],
            'Ros1Rm_msgsIO_Update' => Ros1Rm_msgsIO_Update::SCHEMA + ['class' => Ros1Rm_msgsIO_Update::class],
            'Ros1Rm_msgsJointPos' => Ros1Rm_msgsJointPos::SCHEMA + ['class' => Ros1Rm_msgsJointPos::class],
            'Ros1Rm_msgsJointPosCustom' => Ros1Rm_msgsJointPosCustom::SCHEMA + ['class' => Ros1Rm_msgsJointPosCustom::class],
            'Ros1Rm_msgsJoint_Current' => Ros1Rm_msgsJoint_Current::SCHEMA + ['class' => Ros1Rm_msgsJoint_Current::class],
            'Ros1Rm_msgsJoint_En_Flag' => Ros1Rm_msgsJoint_En_Flag::SCHEMA + ['class' => Ros1Rm_msgsJoint_En_Flag::class],
            'Ros1Rm_msgsJoint_Enable' => Ros1Rm_msgsJoint_Enable::SCHEMA + ['class' => Ros1Rm_msgsJoint_Enable::class],
            'Ros1Rm_msgsJoint_Error_Code' => Ros1Rm_msgsJoint_Error_Code::SCHEMA + ['class' => Ros1Rm_msgsJoint_Error_Code::class],
            'Ros1Rm_msgsJoint_Max_Speed' => Ros1Rm_msgsJoint_Max_Speed::SCHEMA + ['class' => Ros1Rm_msgsJoint_Max_Speed::class],
            'Ros1Rm_msgsJoint_PoseEuler' => Ros1Rm_msgsJoint_PoseEuler::SCHEMA + ['class' => Ros1Rm_msgsJoint_PoseEuler::class],
            'Ros1Rm_msgsJoint_Speed' => Ros1Rm_msgsJoint_Speed::SCHEMA + ['class' => Ros1Rm_msgsJoint_Speed::class],
            'Ros1Rm_msgsJoint_Step' => Ros1Rm_msgsJoint_Step::SCHEMA + ['class' => Ros1Rm_msgsJoint_Step::class],
            'Ros1Rm_msgsJoint_Teach' => Ros1Rm_msgsJoint_Teach::SCHEMA + ['class' => Ros1Rm_msgsJoint_Teach::class],
            'Ros1Rm_msgsJoint_Temperature' => Ros1Rm_msgsJoint_Temperature::SCHEMA + ['class' => Ros1Rm_msgsJoint_Temperature::class],
            'Ros1Rm_msgsJoint_Voltage' => Ros1Rm_msgsJoint_Voltage::SCHEMA + ['class' => Ros1Rm_msgsJoint_Voltage::class],
            'Ros1Rm_msgsJointversion' => Ros1Rm_msgsJointversion::SCHEMA + ['class' => Ros1Rm_msgsJointversion::class],
            'Ros1Rm_msgsLiftState' => Ros1Rm_msgsLiftState::SCHEMA + ['class' => Ros1Rm_msgsLiftState::class],
            'Ros1Rm_msgsLift_Height' => Ros1Rm_msgsLift_Height::SCHEMA + ['class' => Ros1Rm_msgsLift_Height::class],
            'Ros1Rm_msgsLift_In_Position' => Ros1Rm_msgsLift_In_Position::SCHEMA + ['class' => Ros1Rm_msgsLift_In_Position::class],
            'Ros1Rm_msgsLift_Speed' => Ros1Rm_msgsLift_Speed::SCHEMA + ['class' => Ros1Rm_msgsLift_Speed::class],
            'Ros1Rm_msgsManual_Set_Force_Pose' => Ros1Rm_msgsManual_Set_Force_Pose::SCHEMA + ['class' => Ros1Rm_msgsManual_Set_Force_Pose::class],
            'Ros1Rm_msgsMastername' => Ros1Rm_msgsMastername::SCHEMA + ['class' => Ros1Rm_msgsMastername::class],
            'Ros1Rm_msgsModbusreaddata' => Ros1Rm_msgsModbusreaddata::SCHEMA + ['class' => Ros1Rm_msgsModbusreaddata::class],
            'Ros1Rm_msgsModbustcpmasterinfo' => Ros1Rm_msgsModbustcpmasterinfo::SCHEMA + ['class' => Ros1Rm_msgsModbustcpmasterinfo::class],
            'Ros1Rm_msgsModbustcpmasterlist' => Ros1Rm_msgsModbustcpmasterlist::SCHEMA + ['class' => Ros1Rm_msgsModbustcpmasterlist::class],
            'Ros1Rm_msgsMoveC' => Ros1Rm_msgsMoveC::SCHEMA + ['class' => Ros1Rm_msgsMoveC::class],
            'Ros1Rm_msgsMoveJ' => Ros1Rm_msgsMoveJ::SCHEMA + ['class' => Ros1Rm_msgsMoveJ::class],
            'Ros1Rm_msgsMoveJ_P' => Ros1Rm_msgsMoveJ_P::SCHEMA + ['class' => Ros1Rm_msgsMoveJ_P::class],
            'Ros1Rm_msgsMoveL' => Ros1Rm_msgsMoveL::SCHEMA + ['class' => Ros1Rm_msgsMoveL::class],
            'Ros1Rm_msgsMoveloffset' => Ros1Rm_msgsMoveloffset::SCHEMA + ['class' => Ros1Rm_msgsMoveloffset::class],
            'Ros1Rm_msgsOrt_Teach' => Ros1Rm_msgsOrt_Teach::SCHEMA + ['class' => Ros1Rm_msgsOrt_Teach::class],
            'Ros1Rm_msgsPlan_State' => Ros1Rm_msgsPlan_State::SCHEMA + ['class' => Ros1Rm_msgsPlan_State::class],
            'Ros1Rm_msgsPos_Teach' => Ros1Rm_msgsPos_Teach::SCHEMA + ['class' => Ros1Rm_msgsPos_Teach::class],
            'Ros1Rm_msgsProgramrunstate' => Ros1Rm_msgsProgramrunstate::SCHEMA + ['class' => Ros1Rm_msgsProgramrunstate::class],
            'Ros1Rm_msgsRS485_Mode' => Ros1Rm_msgsRS485_Mode::SCHEMA + ['class' => Ros1Rm_msgsRS485_Mode::class],
            'Ros1Rm_msgsRS485params' => Ros1Rm_msgsRS485params::SCHEMA + ['class' => Ros1Rm_msgsRS485params::class],
            'Ros1Rm_msgsRead_ModbusRTU' => Ros1Rm_msgsRead_ModbusRTU::SCHEMA + ['class' => Ros1Rm_msgsRead_ModbusRTU::class],
            'Ros1Rm_msgsRead_Register' => Ros1Rm_msgsRead_Register::SCHEMA + ['class' => Ros1Rm_msgsRead_Register::class],
            'Ros1Rm_msgsRead_TCPandRTU' => Ros1Rm_msgsRead_TCPandRTU::SCHEMA + ['class' => Ros1Rm_msgsRead_TCPandRTU::class],
            'Ros1Rm_msgsRegister_Data' => Ros1Rm_msgsRegister_Data::SCHEMA + ['class' => Ros1Rm_msgsRegister_Data::class],
            'Ros1Rm_msgsRm_Plus_Base' => Ros1Rm_msgsRm_Plus_Base::SCHEMA + ['class' => Ros1Rm_msgsRm_Plus_Base::class],
            'Ros1Rm_msgsRm_Plus_State' => Ros1Rm_msgsRm_Plus_State::SCHEMA + ['class' => Ros1Rm_msgsRm_Plus_State::class],
            'Ros1Rm_msgsServo_GetAngle' => Ros1Rm_msgsServo_GetAngle::SCHEMA + ['class' => Ros1Rm_msgsServo_GetAngle::class],
            'Ros1Rm_msgsServo_Move' => Ros1Rm_msgsServo_Move::SCHEMA + ['class' => Ros1Rm_msgsServo_Move::class],
            'Ros1Rm_msgsSet_Force_Position' => Ros1Rm_msgsSet_Force_Position::SCHEMA + ['class' => Ros1Rm_msgsSet_Force_Position::class],
            'Ros1Rm_msgsSet_Modbus_Mode' => Ros1Rm_msgsSet_Modbus_Mode::SCHEMA + ['class' => Ros1Rm_msgsSet_Modbus_Mode::class],
            'Ros1Rm_msgsSet_Realtime_Push' => Ros1Rm_msgsSet_Realtime_Push::SCHEMA + ['class' => Ros1Rm_msgsSet_Realtime_Push::class],
            'Ros1Rm_msgsSix_Force' => Ros1Rm_msgsSix_Force::SCHEMA + ['class' => Ros1Rm_msgsSix_Force::class],
            'Ros1Rm_msgsSocket_Command' => Ros1Rm_msgsSocket_Command::SCHEMA + ['class' => Ros1Rm_msgsSocket_Command::class],
            'Ros1Rm_msgsStart_Multi_Drag_Teach' => Ros1Rm_msgsStart_Multi_Drag_Teach::SCHEMA + ['class' => Ros1Rm_msgsStart_Multi_Drag_Teach::class],
            'Ros1Rm_msgsStop' => Ros1Rm_msgsStop::SCHEMA + ['class' => Ros1Rm_msgsStop::class],
            'Ros1Rm_msgsStop_Teach' => Ros1Rm_msgsStop_Teach::SCHEMA + ['class' => Ros1Rm_msgsStop_Teach::class],
            'Ros1Rm_msgsTool_Analog_Output' => Ros1Rm_msgsTool_Analog_Output::SCHEMA + ['class' => Ros1Rm_msgsTool_Analog_Output::class],
            'Ros1Rm_msgsTool_Digital_Output' => Ros1Rm_msgsTool_Digital_Output::SCHEMA + ['class' => Ros1Rm_msgsTool_Digital_Output::class],
            'Ros1Rm_msgsTool_IO_State' => Ros1Rm_msgsTool_IO_State::SCHEMA + ['class' => Ros1Rm_msgsTool_IO_State::class],
            'Ros1Rm_msgsTrajectoryinfo' => Ros1Rm_msgsTrajectoryinfo::SCHEMA + ['class' => Ros1Rm_msgsTrajectoryinfo::class],
            'Ros1Rm_msgsTrajectorylist' => Ros1Rm_msgsTrajectorylist::SCHEMA + ['class' => Ros1Rm_msgsTrajectorylist::class],
            'Ros1Rm_msgsTurtle_Driver' => Ros1Rm_msgsTurtle_Driver::SCHEMA + ['class' => Ros1Rm_msgsTurtle_Driver::class],
            'Ros1Rm_msgsUpdateTCPmasterparam' => Ros1Rm_msgsUpdateTCPmasterparam::SCHEMA + ['class' => Ros1Rm_msgsUpdateTCPmasterparam::class],
            'Ros1Rm_msgsWrite_ModbusRTU' => Ros1Rm_msgsWrite_ModbusRTU::SCHEMA + ['class' => Ros1Rm_msgsWrite_ModbusRTU::class],
            'Ros1Rm_msgsWrite_Register' => Ros1Rm_msgsWrite_Register::SCHEMA + ['class' => Ros1Rm_msgsWrite_Register::class],
            'Ros1Rm_msgsWrite_TCPandRTU' => Ros1Rm_msgsWrite_TCPandRTU::SCHEMA + ['class' => Ros1Rm_msgsWrite_TCPandRTU::class],
        ]);
        return $wire;
    }
}
