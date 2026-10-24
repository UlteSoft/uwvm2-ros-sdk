<?php
declare(strict_types=1);
namespace Uwvm\Realman\ros2_humble;
/** @file records.php
 * @brief Own every original vendor field using the shared exact-word codec.
 * @details This module creates local values only. Native identities are not inferred.
 */
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;

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

/** @brief Own all 2 original rm_ros_interfaces/msg/Alohastate fields.
 * @details 4..4 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgAlohastate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgAlohastate',
        'type' => 'rm_ros_interfaces/msg/Alohastate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Alohastate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab',
        'minimum' => 4,
        'maximum' => 4,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'io1_state',
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
                'name' => 'io2_state',
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
    /** @brief Original io1_state field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $io1_state;
    /** @brief Original io2_state field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $io2_state;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('io1_state', $values))
            $this->io1_state = $values['io1_state'];
        else
        {
            $this->io1_state = 0;
        }
        if (array_key_exists('io2_state', $values))
            $this->io2_state = $values['io2_state'];
        else
        {
            $this->io2_state = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgAlohastate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgAlohastate', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Armcurrentstatus fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgArmcurrentstatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgArmcurrentstatus',
        'type' => 'rm_ros_interfaces/msg/Armcurrentstatus',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Armcurrentstatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'arm_current_status',
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
    /** @brief Original arm_current_status field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
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
            $this->arm_current_status = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgArmcurrentstatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgArmcurrentstatus', $bytes);
    }
}

/** @brief Own all 5 original rm_ros_interfaces/msg/Armoriginalstate fields.
 * @details 32..96 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgArmoriginalstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgArmoriginalstate',
        'type' => 'rm_ros_interfaces/msg/Armoriginalstate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Armoriginalstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c',
        'minimum' => 32,
        'maximum' => 96,
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
                'name' => 'err',
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
                'name' => 'err_len',
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
    /** @brief Original pose field; float32 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original err field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err;
    /** @brief Original err_len field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_len;
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
        if (array_key_exists('err', $values))
            $this->err = $values['err'];
        else
        {
            $this->err = 0;
        }
        if (array_key_exists('err_len', $values))
            $this->err_len = $values['err_len'];
        else
        {
            $this->err_len = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgArmoriginalstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgArmoriginalstate', $bytes);
    }
}

/** @brief Own all 2 original rm_ros_interfaces/msg/Softwarebuildinfo fields.
 * @details 8..520 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
        'type' => 'rm_ros_interfaces/msg/Softwarebuildinfo',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Softwarebuildinfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgSoftwarebuildinfo', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgSoftwarebuildinfo', $bytes);
    }
}

/** @brief Own all 14 original rm_ros_interfaces/msg/Armsoftversion fields.
 * @details 69..4421 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgArmsoftversion
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgArmsoftversion',
        'type' => 'rm_ros_interfaces/msg/Armsoftversion',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Armsoftversion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c',
        'minimum' => 69,
        'maximum' => 4421,
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
                'type' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
                'array' => '',
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
                'type' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
                'array' => '',
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
                'type' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
                'array' => '',
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
                'type' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
                'array' => '',
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
                'name' => 'planversion',
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
                'name' => 'ctrlversion',
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
                'name' => 'kernal1',
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
                'name' => 'kernal2',
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
                'name' => 'productversion',
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
    /** @brief Original product_version field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $product_version;
    /** @brief Original controller_version field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $controller_version;
    /** @brief Original algorithm_info field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $algorithm_info;
    /** @brief Original ctrl_info field; rm_ros_interfaces/msg/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ctrl_info;
    /** @brief Original dynamic_info field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $dynamic_info;
    /** @brief Original plan_info field; rm_ros_interfaces/msg/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $plan_info;
    /** @brief Original com_info field; rm_ros_interfaces/msg/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $com_info;
    /** @brief Original program_info field; rm_ros_interfaces/msg/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $program_info;
    /** @brief Original state field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $state;
    /** @brief Original planversion field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $planversion;
    /** @brief Original ctrlversion field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ctrlversion;
    /** @brief Original kernal1 field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $kernal1;
    /** @brief Original kernal2 field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $kernal2;
    /** @brief Original productversion field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $productversion;
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
            $this->ctrl_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
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
            $this->plan_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        }
        if (array_key_exists('com_info', $values))
            $this->com_info = $values['com_info'];
        else
        {
            $this->com_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        }
        if (array_key_exists('program_info', $values))
            $this->program_info = $values['program_info'];
        else
        {
            $this->program_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        }
        if (array_key_exists('state', $values))
            $this->state = $values['state'];
        else
        {
            $this->state = false;
        }
        if (array_key_exists('planversion', $values))
            $this->planversion = $values['planversion'];
        else
        {
            $this->planversion = '';
        }
        if (array_key_exists('ctrlversion', $values))
            $this->ctrlversion = $values['ctrlversion'];
        else
        {
            $this->ctrlversion = '';
        }
        if (array_key_exists('kernal1', $values))
            $this->kernal1 = $values['kernal1'];
        else
        {
            $this->kernal1 = '';
        }
        if (array_key_exists('kernal2', $values))
            $this->kernal2 = $values['kernal2'];
        else
        {
            $this->kernal2 = '';
        }
        if (array_key_exists('productversion', $values))
            $this->productversion = $values['productversion'];
        else
        {
            $this->productversion = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgArmsoftversion', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgArmsoftversion', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Armsoftversionv3 fields.
 * @details 32..2080 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgArmsoftversionv3
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgArmsoftversionv3',
        'type' => 'rm_ros_interfaces/msg/Armsoftversionv3',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Armsoftversionv3',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b',
        'minimum' => 32,
        'maximum' => 2080,
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
                'type' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
                'array' => '',
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
                'type' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
                'array' => '',
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
    /** @brief Original ctrl_info field; rm_ros_interfaces/msg/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ctrl_info;
    /** @brief Original dynamic_info field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $dynamic_info;
    /** @brief Original plan_info field; rm_ros_interfaces/msg/Softwarebuildinfo scalar.
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
            $this->ctrl_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
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
            $this->plan_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgArmsoftversionv3', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgArmsoftversionv3', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Armsoftversionv4 fields.
 * @details 36..2340 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgArmsoftversionv4
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgArmsoftversionv4',
        'type' => 'rm_ros_interfaces/msg/Armsoftversionv4',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Armsoftversionv4',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d',
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
                'type' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
                'array' => '',
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
                'type' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
                'array' => '',
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
                'type' => 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
                'array' => '',
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
    /** @brief Original ctrl_info field; rm_ros_interfaces/msg/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $ctrl_info;
    /** @brief Original com_info field; rm_ros_interfaces/msg/Softwarebuildinfo scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $com_info;
    /** @brief Original program_info field; rm_ros_interfaces/msg/Softwarebuildinfo scalar.
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
            $this->ctrl_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        }
        if (array_key_exists('com_info', $values))
            $this->com_info = $values['com_info'];
        else
        {
            $this->com_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        }
        if (array_key_exists('program_info', $values))
            $this->program_info = $values['program_info'];
        else
        {
            $this->program_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgArmsoftversionv4', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgArmsoftversionv4', $bytes);
    }
}

/** @brief Own all 5 original rm_ros_interfaces/msg/Armstate fields.
 * @details 64..128 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgArmstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgArmstate',
        'type' => 'rm_ros_interfaces/msg/Armstate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Armstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7',
        'minimum' => 64,
        'maximum' => 128,
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
            ],
            [
                'name' => 'err',
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
                'name' => 'err_len',
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
    /** @brief Original pose field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original err field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err;
    /** @brief Original err_len field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_len;
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
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('err', $values))
            $this->err = $values['err'];
        else
        {
            $this->err = 0;
        }
        if (array_key_exists('err_len', $values))
            $this->err_len = $values['err_len'];
        else
        {
            $this->err_len = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgArmstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgArmstate', $bytes);
    }
}

/** @brief Own all 2 original rm_ros_interfaces/msg/Cartepos fields.
 * @details 57..57 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgCartepos
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgCartepos',
        'type' => 'rm_ros_interfaces/msg/Cartepos',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Cartepos',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13',
        'minimum' => 57,
        'maximum' => 57,
        'semantics' => '',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original pose field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original follow field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $follow;
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
            $this->pose = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('follow', $values))
            $this->follow = $values['follow'];
        else
        {
            $this->follow = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgCartepos', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgCartepos', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Carteposcustom fields.
 * @details 59..59 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgCarteposcustom
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgCarteposcustom',
        'type' => 'rm_ros_interfaces/msg/Carteposcustom',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Carteposcustom',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c',
        'minimum' => 59,
        'maximum' => 59,
        'semantics' => '',
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
    /** @brief Original pose field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose;
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
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = new Ros2Geometry_msgsMsgPose();
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgCarteposcustom', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgCarteposcustom', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Expandpos fields.
 * @details 7..7 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgExpandpos
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgExpandpos',
        'type' => 'rm_ros_interfaces/msg/Expandpos',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Expandpos',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c',
        'minimum' => 7,
        'maximum' => 7,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pos',
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
    /** @brief Original pos field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original speed field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgExpandpos', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgExpandpos', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Expandstate fields.
 * @details 12..12 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgExpandstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgExpandstate',
        'type' => 'rm_ros_interfaces/msg/Expandstate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Expandstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4',
        'minimum' => 12,
        'maximum' => 12,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pos',
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
                'name' => 'current',
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
    /** @brief Original pos field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original current field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $current;
    /** @brief Original err_flag field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_flag;
    /** @brief Original mode field; int16 scalar.
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
        if (array_key_exists('pos', $values))
            $this->pos = $values['pos'];
        else
        {
            $this->pos = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgExpandstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgExpandstate', $bytes);
    }
}

/** @brief Own all 7 original rm_ros_interfaces/msg/Flowchartrunstate fields.
 * @details 13..525 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgFlowchartrunstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgFlowchartrunstate',
        'type' => 'rm_ros_interfaces/msg/Flowchartrunstate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Flowchartrunstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f',
        'minimum' => 13,
        'maximum' => 525,
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgFlowchartrunstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgFlowchartrunstate', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Force_Position_State fields.
 * @details 30..30 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgForce_Position_State
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgForce_Position_State',
        'type' => 'rm_ros_interfaces/msg/Force_Position_State',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Force_Position_State',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7',
        'minimum' => 30,
        'maximum' => 30,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original joint field; float32 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $joint;
    /** @brief Original force field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
    /** @brief Original arm_err field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $arm_err;
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
            $this->joint[] = 0.0;
            $this->joint[] = 0.0;
            $this->joint[] = 0.0;
            $this->joint[] = 0.0;
            $this->joint[] = 0.0;
            $this->joint[] = 0.0;
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgForce_Position_State', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgForce_Position_State', $bytes);
    }
}

/** @brief Own all 11 original rm_ros_interfaces/msg/Forcepositionmove fields.
 * @details 121..185 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgForcepositionmove
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgForcepositionmove',
        'type' => 'rm_ros_interfaces/msg/Forcepositionmove',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Forcepositionmove',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224',
        'minimum' => 121,
        'maximum' => 185,
        'semantics' => '',
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
                'element_minimum' => 56
            ],
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
                'name' => 'flag',
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
                'name' => 'control_mode',
                'type' => 'uint8',
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
                'element_minimum' => 1
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
                'name' => 'desired_force',
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
                'name' => 'limit_vel',
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
    /** @brief Original pose field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original joint field; float32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint;
    /** @brief Original flag field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $flag;
    /** @brief Original sensor field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $sensor;
    /** @brief Original mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original control_mode field; uint8 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $control_mode;
    /** @brief Original follow field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $follow;
    /** @brief Original desired_force field; float32 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $desired_force;
    /** @brief Original limit_vel field; float32 array.
     * @details Active count at most 6; text bound 0 bytes. */
    public mixed $limit_vel;
    /** @brief Original trajectory_mode field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_mode;
    /** @brief Original radio field; uint16 scalar.
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
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('joint', $values))
            $this->joint = $values['joint'];
        else
        {
            $this->joint = [];
        }
        if (array_key_exists('flag', $values))
            $this->flag = $values['flag'];
        else
        {
            $this->flag = 0;
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
        if (array_key_exists('control_mode', $values))
            $this->control_mode = $values['control_mode'];
        else
        {
            $this->control_mode = [];
            $this->control_mode[] = 0;
            $this->control_mode[] = 0;
            $this->control_mode[] = 0;
            $this->control_mode[] = 0;
            $this->control_mode[] = 0;
            $this->control_mode[] = 0;
        }
        if (array_key_exists('follow', $values))
            $this->follow = $values['follow'];
        else
        {
            $this->follow = false;
        }
        if (array_key_exists('desired_force', $values))
            $this->desired_force = $values['desired_force'];
        else
        {
            $this->desired_force = [];
            $this->desired_force[] = 0.0;
            $this->desired_force[] = 0.0;
            $this->desired_force[] = 0.0;
            $this->desired_force[] = 0.0;
            $this->desired_force[] = 0.0;
            $this->desired_force[] = 0.0;
        }
        if (array_key_exists('limit_vel', $values))
            $this->limit_vel = $values['limit_vel'];
        else
        {
            $this->limit_vel = [];
            $this->limit_vel[] = 0.0;
            $this->limit_vel[] = 0.0;
            $this->limit_vel[] = 0.0;
            $this->limit_vel[] = 0.0;
            $this->limit_vel[] = 0.0;
            $this->limit_vel[] = 0.0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgForcepositionmove', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgForcepositionmove', $bytes);
    }
}

/** @brief Own all 7 original rm_ros_interfaces/msg/Forcepositionmovejoint fields.
 * @details 14..78 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgForcepositionmovejoint
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgForcepositionmovejoint',
        'type' => 'rm_ros_interfaces/msg/Forcepositionmovejoint',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Forcepositionmovejoint',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed',
        'minimum' => 14,
        'maximum' => 78,
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
    /** @brief Original dir field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dir;
    /** @brief Original force field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force;
    /** @brief Original follow field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $follow;
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
            $this->force = 0.0;
        }
        if (array_key_exists('follow', $values))
            $this->follow = $values['follow'];
        else
        {
            $this->follow = false;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgForcepositionmovejoint', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgForcepositionmovejoint', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Forcepositionmovepose fields.
 * @details 62..62 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgForcepositionmovepose
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgForcepositionmovepose',
        'type' => 'rm_ros_interfaces/msg/Forcepositionmovepose',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Forcepositionmovepose',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3',
        'minimum' => 62,
        'maximum' => 62,
        'semantics' => '',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original pose field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose;
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
            $this->pose = new Ros2Geometry_msgsMsgPose();
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgForcepositionmovepose', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgForcepositionmovepose', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/GetArmState_Command fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgGetArmState_Command
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgGetArmState_Command',
        'type' => 'rm_ros_interfaces/msg/GetArmState_Command',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/GetArmState_Command',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgGetArmState_Command', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgGetArmState_Command', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Getallframe fields.
 * @details 40..2600 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgGetallframe
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgGetallframe',
        'type' => 'rm_ros_interfaces/msg/Getallframe',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Getallframe',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef',
        'minimum' => 40,
        'maximum' => 2600,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'frame_name',
                'type' => 'string',
                'array' => 'array',
                'count' => 10,
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
    /** @brief Original frame_name field; string array.
     * @details Active count at most 10; text bound 256 bytes. */
    public mixed $frame_name;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('frame_name', $values))
            $this->frame_name = $values['frame_name'];
        else
        {
            $this->frame_name = [];
            $this->frame_name[] = '';
            $this->frame_name[] = '';
            $this->frame_name[] = '';
            $this->frame_name[] = '';
            $this->frame_name[] = '';
            $this->frame_name[] = '';
            $this->frame_name[] = '';
            $this->frame_name[] = '';
            $this->frame_name[] = '';
            $this->frame_name[] = '';
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgGetallframe', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgGetallframe', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Getmodbustcpmasterlist fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist',
        'type' => 'rm_ros_interfaces/msg/Getmodbustcpmasterlist',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Getmodbustcpmasterlist',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Gettrajectorylist fields.
 * @details 12..268 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgGettrajectorylist
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgGettrajectorylist',
        'type' => 'rm_ros_interfaces/msg/Gettrajectorylist',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Gettrajectorylist',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgGettrajectorylist', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgGettrajectorylist', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Gripperpick fields.
 * @details 7..7 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgGripperpick
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgGripperpick',
        'type' => 'rm_ros_interfaces/msg/Gripperpick',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Gripperpick',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2',
        'minimum' => 7,
        'maximum' => 7,
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
            ],
            [
                'name' => 'timeout',
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
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Original timeout field; uint16 scalar.
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
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = 0;
        }
        if (array_key_exists('block', $values))
            $this->block = $values['block'];
        else
        {
            $this->block = false;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgGripperpick', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgGripperpick', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Gripperset fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgGripperset
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgGripperset',
        'type' => 'rm_ros_interfaces/msg/Gripperset',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Gripperset',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b',
        'minimum' => 5,
        'maximum' => 5,
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
            ],
            [
                'name' => 'timeout',
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
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Original timeout field; uint16 scalar.
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
        if (array_key_exists('position', $values))
            $this->position = $values['position'];
        else
        {
            $this->position = 0;
        }
        if (array_key_exists('block', $values))
            $this->block = $values['block'];
        else
        {
            $this->block = false;
        }
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgGripperset', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgGripperset', $bytes);
    }
}

/** @brief Own all 2 original rm_ros_interfaces/msg/Handangle fields.
 * @details 13..13 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgHandangle
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgHandangle',
        'type' => 'rm_ros_interfaces/msg/Handangle',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Handangle',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgHandangle', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgHandangle', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Handforce fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgHandforce
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgHandforce',
        'type' => 'rm_ros_interfaces/msg/Handforce',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Handforce',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgHandforce', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgHandforce', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Handposture fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgHandposture
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgHandposture',
        'type' => 'rm_ros_interfaces/msg/Handposture',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Handposture',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f',
        'minimum' => 5,
        'maximum' => 5,
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
            ],
            [
                'name' => 'timeout',
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
    /** @brief Original posture_num field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $posture_num;
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Original timeout field; uint16 scalar.
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
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgHandposture', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgHandposture', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Handseq fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgHandseq
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgHandseq',
        'type' => 'rm_ros_interfaces/msg/Handseq',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Handseq',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842',
        'minimum' => 5,
        'maximum' => 5,
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
            ],
            [
                'name' => 'timeout',
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
    /** @brief Original seq_num field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $seq_num;
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Original timeout field; uint16 scalar.
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
        if (array_key_exists('timeout', $values))
            $this->timeout = $values['timeout'];
        else
        {
            $this->timeout = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgHandseq', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgHandseq', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Handspeed fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgHandspeed
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgHandspeed',
        'type' => 'rm_ros_interfaces/msg/Handspeed',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Handspeed',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgHandspeed', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgHandspeed', $bytes);
    }
}

/** @brief Own all 5 original rm_ros_interfaces/msg/Handstatus fields.
 * @details 50..50 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgHandstatus
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgHandstatus',
        'type' => 'rm_ros_interfaces/msg/Handstatus',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Handstatus',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgHandstatus', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgHandstatus', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Jointcurrent fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointcurrent
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointcurrent',
        'type' => 'rm_ros_interfaces/msg/Jointcurrent',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointcurrent',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointcurrent', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointcurrent', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Jointenflag fields.
 * @details 4..20 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointenflag
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointenflag',
        'type' => 'rm_ros_interfaces/msg/Jointenflag',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointenflag',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointenflag', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointenflag', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Jointerrclear fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointerrclear
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointerrclear',
        'type' => 'rm_ros_interfaces/msg/Jointerrclear',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointerrclear',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45',
        'minimum' => 1,
        'maximum' => 1,
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original joint_num field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_num;
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
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointerrclear', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointerrclear', $bytes);
    }
}

/** @brief Own all 2 original rm_ros_interfaces/msg/Jointerrorcode fields.
 * @details 5..37 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointerrorcode
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointerrorcode',
        'type' => 'rm_ros_interfaces/msg/Jointerrorcode',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointerrorcode',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b',
        'minimum' => 5,
        'maximum' => 37,
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
    /** @brief Original joint_error field; uint16 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $joint_error;
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
        if (array_key_exists('joint_error', $values))
            $this->joint_error = $values['joint_error'];
        else
        {
            $this->joint_error = [];
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointerrorcode', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointerrorcode', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Jointpos fields.
 * @details 10..74 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointpos
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointpos',
        'type' => 'rm_ros_interfaces/msg/Jointpos',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointpos',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9',
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
    /** @brief Original follow field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $follow;
    /** @brief Original expand field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $expand;
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
        if (array_key_exists('follow', $values))
            $this->follow = $values['follow'];
        else
        {
            $this->follow = false;
        }
        if (array_key_exists('expand', $values))
            $this->expand = $values['expand'];
        else
        {
            $this->expand = 0.0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointpos', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointpos', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Jointposcustom fields.
 * @details 12..76 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointposcustom
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointposcustom',
        'type' => 'rm_ros_interfaces/msg/Jointposcustom',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointposcustom',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128',
        'minimum' => 12,
        'maximum' => 76,
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
    /** @brief Original follow field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $follow;
    /** @brief Original expand field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $expand;
    /** @brief Original dof field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $dof;
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
        if (array_key_exists('follow', $values))
            $this->follow = $values['follow'];
        else
        {
            $this->follow = false;
        }
        if (array_key_exists('expand', $values))
            $this->expand = $values['expand'];
        else
        {
            $this->expand = 0.0;
        }
        if (array_key_exists('dof', $values))
            $this->dof = $values['dof'];
        else
        {
            $this->dof = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointposcustom', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointposcustom', $bytes);
    }
}

/** @brief Own all 2 original rm_ros_interfaces/msg/Jointposeeuler fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointposeeuler
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointposeeuler',
        'type' => 'rm_ros_interfaces/msg/Jointposeeuler',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointposeeuler',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointposeeuler', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointposeeuler', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Jointspeed fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointspeed
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointspeed',
        'type' => 'rm_ros_interfaces/msg/Jointspeed',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointspeed',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointspeed', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointspeed', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Jointteach fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointteach
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointteach',
        'type' => 'rm_ros_interfaces/msg/Jointteach',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointteach',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795',
        'minimum' => 3,
        'maximum' => 3,
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
                'name' => 'speed',
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
    /** @brief Original num field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original direction field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $direction;
    /** @brief Original speed field; uint8 scalar.
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
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
        }
        if (array_key_exists('direction', $values))
            $this->direction = $values['direction'];
        else
        {
            $this->direction = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointteach', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointteach', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Jointtemperature fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointtemperature
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointtemperature',
        'type' => 'rm_ros_interfaces/msg/Jointtemperature',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointtemperature',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointtemperature', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointtemperature', $bytes);
    }
}

/** @brief Own all 2 original rm_ros_interfaces/msg/Jointversion fields.
 * @details 5..4165 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointversion
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointversion',
        'type' => 'rm_ros_interfaces/msg/Jointversion',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointversion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962',
        'minimum' => 5,
        'maximum' => 4165,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'joint_version',
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
    /** @brief Original joint_version field; string sequence.
     * @details Active count at most 16; text bound 256 bytes. */
    public mixed $joint_version;
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
        if (array_key_exists('joint_version', $values))
            $this->joint_version = $values['joint_version'];
        else
        {
            $this->joint_version = [];
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointversion', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointversion', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Jointvoltage fields.
 * @details 4..68 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgJointvoltage
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgJointvoltage',
        'type' => 'rm_ros_interfaces/msg/Jointvoltage',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Jointvoltage',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgJointvoltage', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgJointvoltage', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Liftheight fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgLiftheight
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgLiftheight',
        'type' => 'rm_ros_interfaces/msg/Liftheight',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Liftheight',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2',
        'minimum' => 5,
        'maximum' => 5,
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
    /** @brief Original height field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $height;
    /** @brief Original speed field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgLiftheight', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgLiftheight', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Liftspeed fields.
 * @details 2..2 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgLiftspeed
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgLiftspeed',
        'type' => 'rm_ros_interfaces/msg/Liftspeed',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Liftspeed',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgLiftspeed', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgLiftspeed', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Liftstate fields.
 * @details 8..8 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgLiftstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgLiftstate',
        'type' => 'rm_ros_interfaces/msg/Liftstate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Liftstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87',
        'minimum' => 8,
        'maximum' => 8,
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
    /** @brief Original height field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $height;
    /** @brief Original current field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $current;
    /** @brief Original err_flag field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_flag;
    /** @brief Original mode field; int16 scalar.
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgLiftstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgLiftstate', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Mastername fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgMastername
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgMastername',
        'type' => 'rm_ros_interfaces/msg/Mastername',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Mastername',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgMastername', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgMastername', $bytes);
    }
}

/** @brief Own all 2 original rm_ros_interfaces/msg/Modbusreaddata fields.
 * @details 5..69 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgModbusreaddata
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgModbusreaddata',
        'type' => 'rm_ros_interfaces/msg/Modbusreaddata',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Modbusreaddata',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4',
        'minimum' => 5,
        'maximum' => 69,
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
    /** @brief Original read_data field; int32 sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $read_data;
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
        if (array_key_exists('read_data', $values))
            $this->read_data = $values['read_data'];
        else
        {
            $this->read_data = [];
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgModbusreaddata', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgModbusreaddata', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Modbusrtureadparams fields.
 * @details 16..16 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgModbusrtureadparams
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgModbusrtureadparams',
        'type' => 'rm_ros_interfaces/msg/Modbusrtureadparams',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Modbusrtureadparams',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d',
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
    /** @brief Original type field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $type;
    /** @brief Original num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
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
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgModbusrtureadparams', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgModbusrtureadparams', $bytes);
    }
}

/** @brief Own all 5 original rm_ros_interfaces/msg/Modbusrtuwriteparams fields.
 * @details 20..84 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgModbusrtuwriteparams',
        'type' => 'rm_ros_interfaces/msg/Modbusrtuwriteparams',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Modbusrtuwriteparams',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18',
        'minimum' => 20,
        'maximum' => 84,
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
    /** @brief Original type field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $type;
    /** @brief Original num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original data field; int32 sequence.
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
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgModbusrtuwriteparams', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgModbusrtuwriteparams', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Modbustcpmasterinfo fields.
 * @details 13..525 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgModbustcpmasterinfo',
        'type' => 'rm_ros_interfaces/msg/Modbustcpmasterinfo',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Modbustcpmasterinfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa',
        'minimum' => 13,
        'maximum' => 525,
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
    /** @brief Original master_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $master_name;
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original port field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgModbustcpmasterinfo', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgModbustcpmasterinfo', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Modbustcpmasterlist fields.
 * @details 12..8668 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgModbustcpmasterlist
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgModbustcpmasterlist',
        'type' => 'rm_ros_interfaces/msg/Modbustcpmasterlist',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Modbustcpmasterlist',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1',
        'minimum' => 12,
        'maximum' => 8668,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'page_num',
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
                'name' => 'page_size',
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
                'name' => 'total_size',
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
                'name' => 'master_list',
                'type' => 'Ros2Rm_ros_interfacesMsgModbustcpmasterinfo',
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
                'element_minimum' => 13
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
    /** @brief Original page_num field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $page_num;
    /** @brief Original page_size field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $page_size;
    /** @brief Original total_size field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $total_size;
    /** @brief Original vague_search field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $vague_search;
    /** @brief Original master_list field; rm_ros_interfaces/msg/Modbustcpmasterinfo sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $master_list;
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
        if (array_key_exists('master_list', $values))
            $this->master_list = $values['master_list'];
        else
        {
            $this->master_list = [];
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgModbustcpmasterlist', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgModbustcpmasterlist', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Modbustcpmasterupdata fields.
 * @details 16..784 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgModbustcpmasterupdata',
        'type' => 'rm_ros_interfaces/msg/Modbustcpmasterupdata',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Modbustcpmasterupdata',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad',
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
                'name' => 'new_master_name',
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
    /** @brief Original new_master_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $new_master_name;
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
        if (array_key_exists('new_master_name', $values))
            $this->new_master_name = $values['new_master_name'];
        else
        {
            $this->new_master_name = '';
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgModbustcpmasterupdata', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgModbustcpmasterupdata', $bytes);
    }
}

/** @brief Own all 5 original rm_ros_interfaces/msg/Modbustcpreadparams fields.
 * @details 20..532 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgModbustcpreadparams
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgModbustcpreadparams',
        'type' => 'rm_ros_interfaces/msg/Modbustcpreadparams',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Modbustcpreadparams',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7',
        'minimum' => 20,
        'maximum' => 532,
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original master_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $master_name;
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original port field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
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
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgModbustcpreadparams', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgModbustcpreadparams', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Modbustcpwriteparams fields.
 * @details 24..600 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgModbustcpwriteparams
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgModbustcpwriteparams',
        'type' => 'rm_ros_interfaces/msg/Modbustcpwriteparams',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Modbustcpwriteparams',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b',
        'minimum' => 24,
        'maximum' => 600,
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original address field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $address;
    /** @brief Original master_name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $master_name;
    /** @brief Original ip field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $ip;
    /** @brief Original port field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $port;
    /** @brief Original num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $num;
    /** @brief Original data field; int32 sequence.
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
        if (array_key_exists('address', $values))
            $this->address = $values['address'];
        else
        {
            $this->address = 0;
        }
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
        if (array_key_exists('num', $values))
            $this->num = $values['num'];
        else
        {
            $this->num = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgModbustcpwriteparams', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgModbustcpwriteparams', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Movec fields.
 * @details 116..116 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgMovec
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgMovec',
        'type' => 'rm_ros_interfaces/msg/Movec',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Movec',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b',
        'minimum' => 116,
        'maximum' => 116,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pose_mid',
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
            ],
            [
                'name' => 'pose_end',
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
            ],
            [
                'name' => 'speed',
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
            ],
            [
                'name' => 'loop',
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
    /** @brief Original pose_mid field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose_mid;
    /** @brief Original pose_end field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose_end;
    /** @brief Original speed field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Original loop field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $loop;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('pose_mid', $values))
            $this->pose_mid = $values['pose_mid'];
        else
        {
            $this->pose_mid = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('pose_end', $values))
            $this->pose_end = $values['pose_end'];
        else
        {
            $this->pose_end = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
        }
        if (array_key_exists('block', $values))
            $this->block = $values['block'];
        else
        {
            $this->block = false;
        }
        if (array_key_exists('loop', $values))
            $this->loop = $values['loop'];
        else
        {
            $this->loop = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgMovec', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgMovec', $bytes);
    }
}

/** @brief Own all 5 original rm_ros_interfaces/msg/Movej fields.
 * @details 8..72 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgMovej
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgMovej',
        'type' => 'rm_ros_interfaces/msg/Movej',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Movej',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b',
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
                'name' => 'speed',
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
    /** @brief Original speed field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original block field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $block;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
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
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('block', $values))
            $this->block = $values['block'];
        else
        {
            $this->block = false;
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgMovej', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgMovej', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Movejp fields.
 * @details 59..59 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgMovejp
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgMovejp',
        'type' => 'rm_ros_interfaces/msg/Movejp',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Movejp',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72',
        'minimum' => 59,
        'maximum' => 59,
        'semantics' => '',
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
                'element_minimum' => 56
            ],
            [
                'name' => 'speed',
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
    /** @brief Original pose field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original speed field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
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
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgMovejp', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgMovejp', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Movel fields.
 * @details 59..59 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgMovel
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgMovel',
        'type' => 'rm_ros_interfaces/msg/Movel',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Movel',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8',
        'minimum' => 59,
        'maximum' => 59,
        'semantics' => '',
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
                'element_minimum' => 56
            ],
            [
                'name' => 'speed',
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
    /** @brief Original pose field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose;
    /** @brief Original speed field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original trajectory_connect field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $trajectory_connect;
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
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = new Ros2Geometry_msgsMsgPose();
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = 0;
        }
        if (array_key_exists('trajectory_connect', $values))
            $this->trajectory_connect = $values['trajectory_connect'];
        else
        {
            $this->trajectory_connect = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgMovel', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgMovel', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Moveloffset fields.
 * @details 67..67 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgMoveloffset
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgMoveloffset',
        'type' => 'rm_ros_interfaces/msg/Moveloffset',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Moveloffset',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493',
        'minimum' => 67,
        'maximum' => 67,
        'semantics' => '',
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
    /** @brief Original pose field; geometry_msgs/msg/Pose scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pose;
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
        if (array_key_exists('pose', $values))
            $this->pose = $values['pose'];
        else
        {
            $this->pose = new Ros2Geometry_msgsMsgPose();
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgMoveloffset', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgMoveloffset', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Ortteach fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgOrtteach
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgOrtteach',
        'type' => 'rm_ros_interfaces/msg/Ortteach',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Ortteach',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3',
        'minimum' => 3,
        'maximum' => 3,
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
                'name' => 'speed',
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
    /** @brief Original direction field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $direction;
    /** @brief Original speed field; uint8 scalar.
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
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
        if (array_key_exists('direction', $values))
            $this->direction = $values['direction'];
        else
        {
            $this->direction = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgOrtteach', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgOrtteach', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/Posteach fields.
 * @details 3..3 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgPosteach
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgPosteach',
        'type' => 'rm_ros_interfaces/msg/Posteach',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Posteach',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439',
        'minimum' => 3,
        'maximum' => 3,
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
                'name' => 'speed',
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
    /** @brief Original direction field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $direction;
    /** @brief Original speed field; uint8 scalar.
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
        if (array_key_exists('type', $values))
            $this->type = $values['type'];
        else
        {
            $this->type = 0;
        }
        if (array_key_exists('direction', $values))
            $this->direction = $values['direction'];
        else
        {
            $this->direction = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgPosteach', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgPosteach', $bytes);
    }
}

/** @brief Own all 10 original rm_ros_interfaces/msg/Programrunstate fields.
 * @details 37..165 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgProgramrunstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgProgramrunstate',
        'type' => 'rm_ros_interfaces/msg/Programrunstate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Programrunstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964',
        'minimum' => 37,
        'maximum' => 165,
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgProgramrunstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgProgramrunstate', $bytes);
    }
}

/** @brief Own all 3 original rm_ros_interfaces/msg/RS485params fields.
 * @details 9..9 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgRS485params
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgRS485params',
        'type' => 'rm_ros_interfaces/msg/RS485params',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/RS485params',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7',
        'minimum' => 9,
        'maximum' => 9,
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
    /** @brief Original mode field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $mode;
    /** @brief Original baudrate field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $baudrate;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgRS485params', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgRS485params', $bytes);
    }
}

/** @brief Own all 2 original rm_ros_interfaces/msg/Rmerr fields.
 * @details 5..69 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgRmerr
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgRmerr',
        'type' => 'rm_ros_interfaces/msg/Rmerr',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Rmerr',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b',
        'minimum' => 5,
        'maximum' => 69,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'err_len',
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
                'name' => 'err',
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
    /** @brief Original err_len field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_len;
    /** @brief Original err field; int32 sequence.
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
        if (array_key_exists('err_len', $values))
            $this->err_len = $values['err_len'];
        else
        {
            $this->err_len = 0;
        }
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgRmerr', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgRmerr', $bytes);
    }
}

/** @brief Own all 22 original rm_ros_interfaces/msg/Rmplusbase fields.
 * @details 413..1437 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgRmplusbase
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgRmplusbase',
        'type' => 'rm_ros_interfaces/msg/Rmplusbase',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Rmplusbase',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6',
        'minimum' => 413,
        'maximum' => 1437,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
    /** @brief Original pos_up field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $pos_up;
    /** @brief Original pos_low field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $pos_low;
    /** @brief Original angle_up field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $angle_up;
    /** @brief Original angle_low field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $angle_low;
    /** @brief Original speed_up field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $speed_up;
    /** @brief Original speed_low field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $speed_low;
    /** @brief Original force_up field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $force_up;
    /** @brief Original force_low field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
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
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
            $this->pos_up[] = 0;
        }
        if (array_key_exists('pos_low', $values))
            $this->pos_low = $values['pos_low'];
        else
        {
            $this->pos_low = [];
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
            $this->pos_low[] = 0;
        }
        if (array_key_exists('angle_up', $values))
            $this->angle_up = $values['angle_up'];
        else
        {
            $this->angle_up = [];
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
            $this->angle_up[] = 0;
        }
        if (array_key_exists('angle_low', $values))
            $this->angle_low = $values['angle_low'];
        else
        {
            $this->angle_low = [];
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
            $this->angle_low[] = 0;
        }
        if (array_key_exists('speed_up', $values))
            $this->speed_up = $values['speed_up'];
        else
        {
            $this->speed_up = [];
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
            $this->speed_up[] = 0;
        }
        if (array_key_exists('speed_low', $values))
            $this->speed_low = $values['speed_low'];
        else
        {
            $this->speed_low = [];
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
            $this->speed_low[] = 0;
        }
        if (array_key_exists('force_up', $values))
            $this->force_up = $values['force_up'];
        else
        {
            $this->force_up = [];
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
            $this->force_up[] = 0;
        }
        if (array_key_exists('force_low', $values))
            $this->force_low = $values['force_low'];
        else
        {
            $this->force_low = [];
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
            $this->force_low[] = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgRmplusbase', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgRmplusbase', $bytes);
    }
}

/** @brief Own all 14 original rm_ros_interfaces/msg/Rmplusstate fields.
 * @details 724..724 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgRmplusstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgRmplusstate',
        'type' => 'rm_ros_interfaces/msg/Rmplusstate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Rmplusstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1',
        'minimum' => 724,
        'maximum' => 724,
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
                'name' => 'dof_state',
                'type' => 'int32',
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 18,
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
                'array' => 'array',
                'count' => 18,
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
                'array' => 'array',
                'count' => 18,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 12,
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
                'array' => 'array',
                'count' => 18,
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
                'array' => 'array',
                'count' => 12,
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
    /** @brief Original dof_state field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $dof_state;
    /** @brief Original dof_err field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $dof_err;
    /** @brief Original pos field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original speed field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $speed;
    /** @brief Original angle field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $angle;
    /** @brief Original current field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $current;
    /** @brief Original normal_force field; int32 array.
     * @details Active count at most 18; text bound 0 bytes. */
    public mixed $normal_force;
    /** @brief Original tangential_force field; int32 array.
     * @details Active count at most 18; text bound 0 bytes. */
    public mixed $tangential_force;
    /** @brief Original tangential_force_dir field; int32 array.
     * @details Active count at most 18; text bound 0 bytes. */
    public mixed $tangential_force_dir;
    /** @brief Original tsa field; uint32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $tsa;
    /** @brief Original tma field; uint32 array.
     * @details Active count at most 12; text bound 0 bytes. */
    public mixed $tma;
    /** @brief Original touch_data field; int32 array.
     * @details Active count at most 18; text bound 0 bytes. */
    public mixed $touch_data;
    /** @brief Original force field; int32 array.
     * @details Active count at most 12; text bound 0 bytes. */
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
        if (array_key_exists('dof_state', $values))
            $this->dof_state = $values['dof_state'];
        else
        {
            $this->dof_state = [];
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
            $this->dof_state[] = 0;
        }
        if (array_key_exists('dof_err', $values))
            $this->dof_err = $values['dof_err'];
        else
        {
            $this->dof_err = [];
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
            $this->dof_err[] = 0;
        }
        if (array_key_exists('pos', $values))
            $this->pos = $values['pos'];
        else
        {
            $this->pos = [];
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
            $this->pos[] = 0;
        }
        if (array_key_exists('speed', $values))
            $this->speed = $values['speed'];
        else
        {
            $this->speed = [];
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
            $this->speed[] = 0;
        }
        if (array_key_exists('angle', $values))
            $this->angle = $values['angle'];
        else
        {
            $this->angle = [];
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
            $this->angle[] = 0;
        }
        if (array_key_exists('current', $values))
            $this->current = $values['current'];
        else
        {
            $this->current = [];
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
            $this->current[] = 0;
        }
        if (array_key_exists('normal_force', $values))
            $this->normal_force = $values['normal_force'];
        else
        {
            $this->normal_force = [];
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
            $this->normal_force[] = 0;
        }
        if (array_key_exists('tangential_force', $values))
            $this->tangential_force = $values['tangential_force'];
        else
        {
            $this->tangential_force = [];
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
            $this->tangential_force[] = 0;
        }
        if (array_key_exists('tangential_force_dir', $values))
            $this->tangential_force_dir = $values['tangential_force_dir'];
        else
        {
            $this->tangential_force_dir = [];
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
            $this->tangential_force_dir[] = 0;
        }
        if (array_key_exists('tsa', $values))
            $this->tsa = $values['tsa'];
        else
        {
            $this->tsa = [];
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
            $this->tsa[] = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('tma', $values))
            $this->tma = $values['tma'];
        else
        {
            $this->tma = [];
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
            $this->tma[] = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('touch_data', $values))
            $this->touch_data = $values['touch_data'];
        else
        {
            $this->touch_data = [];
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
            $this->touch_data[] = 0;
        }
        if (array_key_exists('force', $values))
            $this->force = $values['force'];
        else
        {
            $this->force = [];
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
            $this->force[] = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgRmplusstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgRmplusstate', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Rmversion fields.
 * @details 4..260 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgRmversion
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgRmversion',
        'type' => 'rm_ros_interfaces/msg/Rmversion',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Rmversion',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff',
        'minimum' => 4,
        'maximum' => 260,
        'semantics' => '',
        'fields' => [
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgRmversion', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgRmversion', $bytes);
    }
}

/** @brief Own all 5 original rm_ros_interfaces/msg/RobotInfo fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgRobotInfo
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgRobotInfo',
        'type' => 'rm_ros_interfaces/msg/RobotInfo',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/RobotInfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2',
        'minimum' => 5,
        'maximum' => 5,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'arm_dof',
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
                'name' => 'arm_model',
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
                'name' => 'force_type',
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
                'name' => 'robot_controller_version',
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
    /** @brief Original arm_dof field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $arm_dof;
    /** @brief Original arm_model field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $arm_model;
    /** @brief Original force_type field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_type;
    /** @brief Original robot_controller_version field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $robot_controller_version;
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
        if (array_key_exists('arm_dof', $values))
            $this->arm_dof = $values['arm_dof'];
        else
        {
            $this->arm_dof = 0;
        }
        if (array_key_exists('arm_model', $values))
            $this->arm_model = $values['arm_model'];
        else
        {
            $this->arm_model = 0;
        }
        if (array_key_exists('force_type', $values))
            $this->force_type = $values['force_type'];
        else
        {
            $this->force_type = 0;
        }
        if (array_key_exists('robot_controller_version', $values))
            $this->robot_controller_version = $values['robot_controller_version'];
        else
        {
            $this->robot_controller_version = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgRobotInfo', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgRobotInfo', $bytes);
    }
}

/** @brief Own all 8 original rm_ros_interfaces/msg/Sendproject fields.
 * @details 32..288 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgSendproject
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgSendproject',
        'type' => 'rm_ros_interfaces/msg/Sendproject',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Sendproject',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330',
        'minimum' => 32,
        'maximum' => 288,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'project_path',
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
                'name' => 'project_path_len',
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
                'name' => 'only_save',
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
                'name' => 'save_id',
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
                'name' => 'step_flag',
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
                'name' => 'auto_start',
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
                'name' => 'project_type',
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
    /** @brief Original project_path field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $project_path;
    /** @brief Original project_path_len field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $project_path_len;
    /** @brief Original plan_speed field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $plan_speed;
    /** @brief Original only_save field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $only_save;
    /** @brief Original save_id field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $save_id;
    /** @brief Original step_flag field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $step_flag;
    /** @brief Original auto_start field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $auto_start;
    /** @brief Original project_type field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $project_type;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('project_path', $values))
            $this->project_path = $values['project_path'];
        else
        {
            $this->project_path = '';
        }
        if (array_key_exists('project_path_len', $values))
            $this->project_path_len = $values['project_path_len'];
        else
        {
            $this->project_path_len = 0;
        }
        if (array_key_exists('plan_speed', $values))
            $this->plan_speed = $values['plan_speed'];
        else
        {
            $this->plan_speed = 0;
        }
        if (array_key_exists('only_save', $values))
            $this->only_save = $values['only_save'];
        else
        {
            $this->only_save = 0;
        }
        if (array_key_exists('save_id', $values))
            $this->save_id = $values['save_id'];
        else
        {
            $this->save_id = 0;
        }
        if (array_key_exists('step_flag', $values))
            $this->step_flag = $values['step_flag'];
        else
        {
            $this->step_flag = 0;
        }
        if (array_key_exists('auto_start', $values))
            $this->auto_start = $values['auto_start'];
        else
        {
            $this->auto_start = 0;
        }
        if (array_key_exists('project_type', $values))
            $this->project_type = $values['project_type'];
        else
        {
            $this->project_type = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgSendproject', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgSendproject', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Setforceposition fields.
 * @details 5..5 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgSetforceposition
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgSetforceposition',
        'type' => 'rm_ros_interfaces/msg/Setforceposition',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Setforceposition',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157',
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
                'name' => 'n',
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
    /** @brief Original n field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $n;
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
        if (array_key_exists('n', $values))
            $this->n = $values['n'];
        else
        {
            $this->n = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgSetforceposition', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgSetforceposition', $bytes);
    }
}

/** @brief Own all 12 original rm_ros_interfaces/msg/Setrealtimepush fields.
 * @details 18..274 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgSetrealtimepush
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgSetrealtimepush',
        'type' => 'rm_ros_interfaces/msg/Setrealtimepush',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Setrealtimepush',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368',
        'minimum' => 18,
        'maximum' => 274,
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
                'name' => 'plus_base_enable',
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
                'name' => 'plus_state_enable',
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
    /** @brief Original joint_speed_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_speed_enable;
    /** @brief Original lift_state_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $lift_state_enable;
    /** @brief Original plus_base_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $plus_base_enable;
    /** @brief Original plus_state_enable field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $plus_state_enable;
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
        if (array_key_exists('plus_base_enable', $values))
            $this->plus_base_enable = $values['plus_base_enable'];
        else
        {
            $this->plus_base_enable = false;
        }
        if (array_key_exists('plus_state_enable', $values))
            $this->plus_state_enable = $values['plus_state_enable'];
        else
        {
            $this->plus_state_enable = false;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgSetrealtimepush', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgSetrealtimepush', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Sixforce fields.
 * @details 24..24 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgSixforce
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgSixforce',
        'type' => 'rm_ros_interfaces/msg/Sixforce',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Sixforce',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'force_fx',
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
                'name' => 'force_fy',
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
                'name' => 'force_fz',
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
                'name' => 'force_mx',
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
                'name' => 'force_my',
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
                'name' => 'force_mz',
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
    /** @brief Original force_fx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_fx;
    /** @brief Original force_fy field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_fy;
    /** @brief Original force_fz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_fz;
    /** @brief Original force_mx field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_mx;
    /** @brief Original force_my field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_my;
    /** @brief Original force_mz field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $force_mz;
    /** @brief Construct original defaults with independent nested storage.
     * @param array $values Exact original field keys; unknown keys are rejected.
     * @details Supplied nested objects keep ordinary PHP reference semantics.
     */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name')))
            throw new \InvalidArgumentException('unknown original field');
        if (array_key_exists('force_fx', $values))
            $this->force_fx = $values['force_fx'];
        else
        {
            $this->force_fx = 0.0;
        }
        if (array_key_exists('force_fy', $values))
            $this->force_fy = $values['force_fy'];
        else
        {
            $this->force_fy = 0.0;
        }
        if (array_key_exists('force_fz', $values))
            $this->force_fz = $values['force_fz'];
        else
        {
            $this->force_fz = 0.0;
        }
        if (array_key_exists('force_mx', $values))
            $this->force_mx = $values['force_mx'];
        else
        {
            $this->force_mx = 0.0;
        }
        if (array_key_exists('force_my', $values))
            $this->force_my = $values['force_my'];
        else
        {
            $this->force_my = 0.0;
        }
        if (array_key_exists('force_mz', $values))
            $this->force_mz = $values['force_mz'];
        else
        {
            $this->force_mz = 0.0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgSixforce', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgSixforce', $bytes);
    }
}

/** @brief Own all 1 original rm_ros_interfaces/msg/Stop fields.
 * @details 1..1 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgStop
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgStop',
        'type' => 'rm_ros_interfaces/msg/Stop',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Stop',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a',
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgStop', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgStop', $bytes);
    }
}

/** @brief Own all 2 original rm_ros_interfaces/msg/Toolsoftwareversionv4 fields.
 * @details 5..261 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgToolsoftwareversionv4',
        'type' => 'rm_ros_interfaces/msg/Toolsoftwareversionv4',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Toolsoftwareversionv4',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'tool_version',
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
    /** @brief Original tool_version field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $tool_version;
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
        if (array_key_exists('tool_version', $values))
            $this->tool_version = $values['tool_version'];
        else
        {
            $this->tool_version = '';
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgToolsoftwareversionv4', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgToolsoftwareversionv4', $bytes);
    }
}

/** @brief Own all 4 original rm_ros_interfaces/msg/Trajectoryinfo fields.
 * @details 13..525 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgTrajectoryinfo
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgTrajectoryinfo',
        'type' => 'rm_ros_interfaces/msg/Trajectoryinfo',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Trajectoryinfo',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1',
        'minimum' => 13,
        'maximum' => 525,
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
    /** @brief Original name field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $name;
    /** @brief Original create_time field; string scalar.
     * @details Active count at most 0; text bound 256 bytes. */
    public mixed $create_time;
    /** @brief Original point_num field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $point_num;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgTrajectoryinfo', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgTrajectoryinfo', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Trajectorylist fields.
 * @details 21..8677 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgTrajectorylist
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgTrajectorylist',
        'type' => 'rm_ros_interfaces/msg/Trajectorylist',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Trajectorylist',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f',
        'minimum' => 21,
        'maximum' => 8677,
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
                'type' => 'Ros2Rm_ros_interfacesMsgTrajectoryinfo',
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
                'element_minimum' => 13
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
    /** @brief Original tra_list field; rm_ros_interfaces/msg/Trajectoryinfo sequence.
     * @details Active count at most 16; text bound 0 bytes. */
    public mixed $tra_list;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgTrajectorylist', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgTrajectorylist', $bytes);
    }
}

/** @brief Own all 6 original rm_ros_interfaces/msg/Udpexpandstate fields.
 * @details 14..14 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgUdpexpandstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgUdpexpandstate',
        'type' => 'rm_ros_interfaces/msg/Udpexpandstate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Udpexpandstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5',
        'minimum' => 14,
        'maximum' => 14,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'pos',
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
                'name' => 'current',
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
                'name' => 'en_flag',
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
                'name' => 'joint_id',
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
    /** @brief Original pos field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original current field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $current;
    /** @brief Original err_flag field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_flag;
    /** @brief Original en_flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $en_flag;
    /** @brief Original joint_id field; uint8 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $joint_id;
    /** @brief Original mode field; int16 scalar.
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
        if (array_key_exists('pos', $values))
            $this->pos = $values['pos'];
        else
        {
            $this->pos = 0;
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
        if (array_key_exists('en_flag', $values))
            $this->en_flag = $values['en_flag'];
        else
        {
            $this->en_flag = false;
        }
        if (array_key_exists('joint_id', $values))
            $this->joint_id = $values['joint_id'];
        else
        {
            $this->joint_id = 0;
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
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgUdpexpandstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgUdpexpandstate', $bytes);
    }
}

/** @brief Own all 5 original rm_ros_interfaces/msg/Udpliftstate fields.
 * @details 13..13 canonical bytes; independent nested defaults.
 */
final class Ros2Rm_ros_interfacesMsgUdpliftstate
{
    /** @brief Complete field order, finite quotas and unbound native identity. */
    public const SCHEMA = [
        'symbol' => 'Ros2Rm_ros_interfacesMsgUdpliftstate',
        'type' => 'rm_ros_interfaces/msg/Udpliftstate',
        'ros_version' => 2,
        'native_type' => 'rm_ros_interfaces/msg/Udpliftstate',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817',
        'minimum' => 13,
        'maximum' => 13,
        'semantics' => '',
        'fields' => [
            [
                'name' => 'height',
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
                'name' => 'en_flag',
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
            ]
        ],
        'constants' => [

        ]
    ];
    /** @brief Original height field; int32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $height;
    /** @brief Original pos field; float32 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $pos;
    /** @brief Original current field; int16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $current;
    /** @brief Original en_flag field; bool scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $en_flag;
    /** @brief Original err_flag field; uint16 scalar.
     * @details Active count at most 0; text bound 0 bytes. */
    public mixed $err_flag;
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
        if (array_key_exists('pos', $values))
            $this->pos = $values['pos'];
        else
        {
            $this->pos = 0.0;
        }
        if (array_key_exists('current', $values))
            $this->current = $values['current'];
        else
        {
            $this->current = 0;
        }
        if (array_key_exists('en_flag', $values))
            $this->en_flag = $values['en_flag'];
        else
        {
            $this->en_flag = false;
        }
        if (array_key_exists('err_flag', $values))
            $this->err_flag = $values['err_flag'];
        else
        {
            $this->err_flag = 0;
        }
    }
    /** @brief Encode the entire validated value.
     * @return string Owned complete bytes; domain/quota failures throw without partial output. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Rm_ros_interfacesMsgUdpliftstate', $this);
    }
    /** @brief Decode exactly one entire original value.
     * @param string $bytes Borrowed complete input; trailing data is refused.
     * @return self Owned full record; invalid input throws before exposure. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Rm_ros_interfacesMsgUdpliftstate', $bytes);
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
            'Ros2Geometry_msgsMsgPoint' => Ros2Geometry_msgsMsgPoint::SCHEMA + ['class' => Ros2Geometry_msgsMsgPoint::class],
            'Ros2Geometry_msgsMsgQuaternion' => Ros2Geometry_msgsMsgQuaternion::SCHEMA + ['class' => Ros2Geometry_msgsMsgQuaternion::class],
            'Ros2Geometry_msgsMsgPose' => Ros2Geometry_msgsMsgPose::SCHEMA + ['class' => Ros2Geometry_msgsMsgPose::class],
            'Ros2Rm_ros_interfacesMsgAlohastate' => Ros2Rm_ros_interfacesMsgAlohastate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgAlohastate::class],
            'Ros2Rm_ros_interfacesMsgArmcurrentstatus' => Ros2Rm_ros_interfacesMsgArmcurrentstatus::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgArmcurrentstatus::class],
            'Ros2Rm_ros_interfacesMsgArmoriginalstate' => Ros2Rm_ros_interfacesMsgArmoriginalstate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgArmoriginalstate::class],
            'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo' => Ros2Rm_ros_interfacesMsgSoftwarebuildinfo::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgSoftwarebuildinfo::class],
            'Ros2Rm_ros_interfacesMsgArmsoftversion' => Ros2Rm_ros_interfacesMsgArmsoftversion::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgArmsoftversion::class],
            'Ros2Rm_ros_interfacesMsgArmsoftversionv3' => Ros2Rm_ros_interfacesMsgArmsoftversionv3::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgArmsoftversionv3::class],
            'Ros2Rm_ros_interfacesMsgArmsoftversionv4' => Ros2Rm_ros_interfacesMsgArmsoftversionv4::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgArmsoftversionv4::class],
            'Ros2Rm_ros_interfacesMsgArmstate' => Ros2Rm_ros_interfacesMsgArmstate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgArmstate::class],
            'Ros2Rm_ros_interfacesMsgCartepos' => Ros2Rm_ros_interfacesMsgCartepos::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgCartepos::class],
            'Ros2Rm_ros_interfacesMsgCarteposcustom' => Ros2Rm_ros_interfacesMsgCarteposcustom::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgCarteposcustom::class],
            'Ros2Rm_ros_interfacesMsgExpandpos' => Ros2Rm_ros_interfacesMsgExpandpos::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgExpandpos::class],
            'Ros2Rm_ros_interfacesMsgExpandstate' => Ros2Rm_ros_interfacesMsgExpandstate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgExpandstate::class],
            'Ros2Rm_ros_interfacesMsgFlowchartrunstate' => Ros2Rm_ros_interfacesMsgFlowchartrunstate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgFlowchartrunstate::class],
            'Ros2Rm_ros_interfacesMsgForce_Position_State' => Ros2Rm_ros_interfacesMsgForce_Position_State::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgForce_Position_State::class],
            'Ros2Rm_ros_interfacesMsgForcepositionmove' => Ros2Rm_ros_interfacesMsgForcepositionmove::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgForcepositionmove::class],
            'Ros2Rm_ros_interfacesMsgForcepositionmovejoint' => Ros2Rm_ros_interfacesMsgForcepositionmovejoint::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgForcepositionmovejoint::class],
            'Ros2Rm_ros_interfacesMsgForcepositionmovepose' => Ros2Rm_ros_interfacesMsgForcepositionmovepose::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgForcepositionmovepose::class],
            'Ros2Rm_ros_interfacesMsgGetArmState_Command' => Ros2Rm_ros_interfacesMsgGetArmState_Command::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgGetArmState_Command::class],
            'Ros2Rm_ros_interfacesMsgGetallframe' => Ros2Rm_ros_interfacesMsgGetallframe::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgGetallframe::class],
            'Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist' => Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist::class],
            'Ros2Rm_ros_interfacesMsgGettrajectorylist' => Ros2Rm_ros_interfacesMsgGettrajectorylist::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgGettrajectorylist::class],
            'Ros2Rm_ros_interfacesMsgGripperpick' => Ros2Rm_ros_interfacesMsgGripperpick::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgGripperpick::class],
            'Ros2Rm_ros_interfacesMsgGripperset' => Ros2Rm_ros_interfacesMsgGripperset::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgGripperset::class],
            'Ros2Rm_ros_interfacesMsgHandangle' => Ros2Rm_ros_interfacesMsgHandangle::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgHandangle::class],
            'Ros2Rm_ros_interfacesMsgHandforce' => Ros2Rm_ros_interfacesMsgHandforce::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgHandforce::class],
            'Ros2Rm_ros_interfacesMsgHandposture' => Ros2Rm_ros_interfacesMsgHandposture::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgHandposture::class],
            'Ros2Rm_ros_interfacesMsgHandseq' => Ros2Rm_ros_interfacesMsgHandseq::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgHandseq::class],
            'Ros2Rm_ros_interfacesMsgHandspeed' => Ros2Rm_ros_interfacesMsgHandspeed::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgHandspeed::class],
            'Ros2Rm_ros_interfacesMsgHandstatus' => Ros2Rm_ros_interfacesMsgHandstatus::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgHandstatus::class],
            'Ros2Rm_ros_interfacesMsgJointcurrent' => Ros2Rm_ros_interfacesMsgJointcurrent::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointcurrent::class],
            'Ros2Rm_ros_interfacesMsgJointenflag' => Ros2Rm_ros_interfacesMsgJointenflag::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointenflag::class],
            'Ros2Rm_ros_interfacesMsgJointerrclear' => Ros2Rm_ros_interfacesMsgJointerrclear::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointerrclear::class],
            'Ros2Rm_ros_interfacesMsgJointerrorcode' => Ros2Rm_ros_interfacesMsgJointerrorcode::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointerrorcode::class],
            'Ros2Rm_ros_interfacesMsgJointpos' => Ros2Rm_ros_interfacesMsgJointpos::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointpos::class],
            'Ros2Rm_ros_interfacesMsgJointposcustom' => Ros2Rm_ros_interfacesMsgJointposcustom::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointposcustom::class],
            'Ros2Rm_ros_interfacesMsgJointposeeuler' => Ros2Rm_ros_interfacesMsgJointposeeuler::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointposeeuler::class],
            'Ros2Rm_ros_interfacesMsgJointspeed' => Ros2Rm_ros_interfacesMsgJointspeed::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointspeed::class],
            'Ros2Rm_ros_interfacesMsgJointteach' => Ros2Rm_ros_interfacesMsgJointteach::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointteach::class],
            'Ros2Rm_ros_interfacesMsgJointtemperature' => Ros2Rm_ros_interfacesMsgJointtemperature::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointtemperature::class],
            'Ros2Rm_ros_interfacesMsgJointversion' => Ros2Rm_ros_interfacesMsgJointversion::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointversion::class],
            'Ros2Rm_ros_interfacesMsgJointvoltage' => Ros2Rm_ros_interfacesMsgJointvoltage::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgJointvoltage::class],
            'Ros2Rm_ros_interfacesMsgLiftheight' => Ros2Rm_ros_interfacesMsgLiftheight::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgLiftheight::class],
            'Ros2Rm_ros_interfacesMsgLiftspeed' => Ros2Rm_ros_interfacesMsgLiftspeed::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgLiftspeed::class],
            'Ros2Rm_ros_interfacesMsgLiftstate' => Ros2Rm_ros_interfacesMsgLiftstate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgLiftstate::class],
            'Ros2Rm_ros_interfacesMsgMastername' => Ros2Rm_ros_interfacesMsgMastername::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgMastername::class],
            'Ros2Rm_ros_interfacesMsgModbusreaddata' => Ros2Rm_ros_interfacesMsgModbusreaddata::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgModbusreaddata::class],
            'Ros2Rm_ros_interfacesMsgModbusrtureadparams' => Ros2Rm_ros_interfacesMsgModbusrtureadparams::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgModbusrtureadparams::class],
            'Ros2Rm_ros_interfacesMsgModbusrtuwriteparams' => Ros2Rm_ros_interfacesMsgModbusrtuwriteparams::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgModbusrtuwriteparams::class],
            'Ros2Rm_ros_interfacesMsgModbustcpmasterinfo' => Ros2Rm_ros_interfacesMsgModbustcpmasterinfo::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgModbustcpmasterinfo::class],
            'Ros2Rm_ros_interfacesMsgModbustcpmasterlist' => Ros2Rm_ros_interfacesMsgModbustcpmasterlist::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgModbustcpmasterlist::class],
            'Ros2Rm_ros_interfacesMsgModbustcpmasterupdata' => Ros2Rm_ros_interfacesMsgModbustcpmasterupdata::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgModbustcpmasterupdata::class],
            'Ros2Rm_ros_interfacesMsgModbustcpreadparams' => Ros2Rm_ros_interfacesMsgModbustcpreadparams::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgModbustcpreadparams::class],
            'Ros2Rm_ros_interfacesMsgModbustcpwriteparams' => Ros2Rm_ros_interfacesMsgModbustcpwriteparams::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgModbustcpwriteparams::class],
            'Ros2Rm_ros_interfacesMsgMovec' => Ros2Rm_ros_interfacesMsgMovec::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgMovec::class],
            'Ros2Rm_ros_interfacesMsgMovej' => Ros2Rm_ros_interfacesMsgMovej::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgMovej::class],
            'Ros2Rm_ros_interfacesMsgMovejp' => Ros2Rm_ros_interfacesMsgMovejp::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgMovejp::class],
            'Ros2Rm_ros_interfacesMsgMovel' => Ros2Rm_ros_interfacesMsgMovel::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgMovel::class],
            'Ros2Rm_ros_interfacesMsgMoveloffset' => Ros2Rm_ros_interfacesMsgMoveloffset::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgMoveloffset::class],
            'Ros2Rm_ros_interfacesMsgOrtteach' => Ros2Rm_ros_interfacesMsgOrtteach::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgOrtteach::class],
            'Ros2Rm_ros_interfacesMsgPosteach' => Ros2Rm_ros_interfacesMsgPosteach::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgPosteach::class],
            'Ros2Rm_ros_interfacesMsgProgramrunstate' => Ros2Rm_ros_interfacesMsgProgramrunstate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgProgramrunstate::class],
            'Ros2Rm_ros_interfacesMsgRS485params' => Ros2Rm_ros_interfacesMsgRS485params::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgRS485params::class],
            'Ros2Rm_ros_interfacesMsgRmerr' => Ros2Rm_ros_interfacesMsgRmerr::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgRmerr::class],
            'Ros2Rm_ros_interfacesMsgRmplusbase' => Ros2Rm_ros_interfacesMsgRmplusbase::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgRmplusbase::class],
            'Ros2Rm_ros_interfacesMsgRmplusstate' => Ros2Rm_ros_interfacesMsgRmplusstate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgRmplusstate::class],
            'Ros2Rm_ros_interfacesMsgRmversion' => Ros2Rm_ros_interfacesMsgRmversion::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgRmversion::class],
            'Ros2Rm_ros_interfacesMsgRobotInfo' => Ros2Rm_ros_interfacesMsgRobotInfo::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgRobotInfo::class],
            'Ros2Rm_ros_interfacesMsgSendproject' => Ros2Rm_ros_interfacesMsgSendproject::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgSendproject::class],
            'Ros2Rm_ros_interfacesMsgSetforceposition' => Ros2Rm_ros_interfacesMsgSetforceposition::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgSetforceposition::class],
            'Ros2Rm_ros_interfacesMsgSetrealtimepush' => Ros2Rm_ros_interfacesMsgSetrealtimepush::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgSetrealtimepush::class],
            'Ros2Rm_ros_interfacesMsgSixforce' => Ros2Rm_ros_interfacesMsgSixforce::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgSixforce::class],
            'Ros2Rm_ros_interfacesMsgStop' => Ros2Rm_ros_interfacesMsgStop::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgStop::class],
            'Ros2Rm_ros_interfacesMsgToolsoftwareversionv4' => Ros2Rm_ros_interfacesMsgToolsoftwareversionv4::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgToolsoftwareversionv4::class],
            'Ros2Rm_ros_interfacesMsgTrajectoryinfo' => Ros2Rm_ros_interfacesMsgTrajectoryinfo::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgTrajectoryinfo::class],
            'Ros2Rm_ros_interfacesMsgTrajectorylist' => Ros2Rm_ros_interfacesMsgTrajectorylist::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgTrajectorylist::class],
            'Ros2Rm_ros_interfacesMsgUdpexpandstate' => Ros2Rm_ros_interfacesMsgUdpexpandstate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgUdpexpandstate::class],
            'Ros2Rm_ros_interfacesMsgUdpliftstate' => Ros2Rm_ros_interfacesMsgUdpliftstate::SCHEMA + ['class' => Ros2Rm_ros_interfacesMsgUdpliftstate::class],
        ]);
        return $wire;
    }
}
