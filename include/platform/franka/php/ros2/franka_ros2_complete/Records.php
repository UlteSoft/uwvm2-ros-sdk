<?php
declare(strict_types=1);
namespace Uwvm\Franka\Ros2;

/** @file Records.php
 * @brief Complete selected original PHP values; native identity remains independently unbound.
 */
use Uwvm\RosWasm\Wire;
use Uwvm\RosWasm\Word;
/** @brief Own every original field of builtin_interfaces/msg/Time. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Builtin_interfacesMsgTime',
        'native_type' => 'builtin_interfaces/msg/Time',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => 'normalized-time',
        'constants' => [
        ],
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
    /** @brief Original int32 field; shape scalar and quota 0. */
    public mixed $sec;
    /** @brief Original uint32 field; shape scalar and quota 0. */
    public mixed $nanosec;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('sec', $values)) $this->sec = $values['sec'];
        else
        {
            $this->sec = 0;
        }
        if (array_key_exists('nanosec', $values)) $this->nanosec = $values['nanosec'];
        else
        {
            $this->nanosec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Builtin_interfacesMsgTime', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Builtin_interfacesMsgTime', $bytes); }
}
/** @brief Own every original field of franka_msgs/action/ErrorRecovery_Goal. */
final class Ros2Franka_msgsActionErrorRecovery_Goal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionErrorRecovery_Goal',
        'native_type' => 'franka_msgs/action/ErrorRecovery_Goal',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionErrorRecovery_Goal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionErrorRecovery_Goal',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/action/ErrorRecovery_Result. */
final class Ros2Franka_msgsActionErrorRecovery_Result
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionErrorRecovery_Result',
        'native_type' => 'franka_msgs/action/ErrorRecovery_Result',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionErrorRecovery_Result', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionErrorRecovery_Result',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/action/ErrorRecovery_Feedback. */
final class Ros2Franka_msgsActionErrorRecovery_Feedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionErrorRecovery_Feedback',
        'native_type' => 'franka_msgs/action/ErrorRecovery_Feedback',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionErrorRecovery_Feedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsActionErrorRecovery_Feedback', $bytes); }
}
/** @brief Own every original field of franka_msgs/msg/GraspEpsilon. */
final class Ros2Franka_msgsMsgGraspEpsilon
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsMsgGraspEpsilon',
        'native_type' => 'franka_msgs/msg/GraspEpsilon',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'inner',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '0.005',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
                'default' => 0.005,
            ],
            [
                'name' => 'outer',
                'type' => 'float64',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => '0.005',
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
                'default' => 0.005,
            ],
        ],
    ];
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $inner;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $outer;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('inner', $values)) $this->inner = $values['inner'];
        else
        {
            $this->inner = 0.005;
        }
        if (array_key_exists('outer', $values)) $this->outer = $values['outer'];
        else
        {
            $this->outer = 0.005;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsMsgGraspEpsilon', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsMsgGraspEpsilon', $bytes); }
}
/** @brief Own every original field of franka_msgs/action/Grasp_Goal. */
final class Ros2Franka_msgsActionGrasp_Goal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionGrasp_Goal',
        'native_type' => 'franka_msgs/action/Grasp_Goal',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f',
        'minimum' => 40,
        'maximum' => 40,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'width',
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
                'name' => 'epsilon',
                'type' => 'Ros2Franka_msgsMsgGraspEpsilon',
                'array' => '',
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
                'name' => 'speed',
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
                'name' => 'force',
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
    public mixed $width;
    /** @brief Original Ros2Franka_msgsMsgGraspEpsilon field; shape scalar and quota 0. */
    public mixed $epsilon;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $speed;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $force;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('width', $values)) $this->width = $values['width'];
        else
        {
            $this->width = 0.0;
        }
        if (array_key_exists('epsilon', $values)) $this->epsilon = $values['epsilon'];
        else
        {
            $this->epsilon = new Ros2Franka_msgsMsgGraspEpsilon();
        }
        if (array_key_exists('speed', $values)) $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
        if (array_key_exists('force', $values)) $this->force = $values['force'];
        else
        {
            $this->force = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionGrasp_Goal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionGrasp_Goal', $bytes);
            }
}
/** @brief Own every original field of franka_msgs/action/Grasp_Result. */
final class Ros2Franka_msgsActionGrasp_Result
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionGrasp_Result',
        'native_type' => 'franka_msgs/action/Grasp_Result',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionGrasp_Result', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionGrasp_Result',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/action/Grasp_Feedback. */
final class Ros2Franka_msgsActionGrasp_Feedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionGrasp_Feedback',
        'native_type' => 'franka_msgs/action/Grasp_Feedback',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'current_width',
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
    public mixed $current_width;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('current_width', $values)) $this->current_width = $values['current_width'];
        else
        {
            $this->current_width = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionGrasp_Feedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionGrasp_Feedback',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/action/Homing_Goal. */
final class Ros2Franka_msgsActionHoming_Goal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionHoming_Goal',
        'native_type' => 'franka_msgs/action/Homing_Goal',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionHoming_Goal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionHoming_Goal', $bytes);
            }
}
/** @brief Own every original field of franka_msgs/action/Homing_Result. */
final class Ros2Franka_msgsActionHoming_Result
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionHoming_Result',
        'native_type' => 'franka_msgs/action/Homing_Result',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionHoming_Result', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionHoming_Result',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/action/Homing_Feedback. */
final class Ros2Franka_msgsActionHoming_Feedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionHoming_Feedback',
        'native_type' => 'franka_msgs/action/Homing_Feedback',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'current_width',
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
    public mixed $current_width;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('current_width', $values)) $this->current_width = $values['current_width'];
        else
        {
            $this->current_width = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionHoming_Feedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionHoming_Feedback',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/action/Move_Goal. */
final class Ros2Franka_msgsActionMove_Goal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionMove_Goal',
        'native_type' => 'franka_msgs/action/Move_Goal',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'width',
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
                'name' => 'speed',
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
    public mixed $width;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $speed;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('width', $values)) $this->width = $values['width'];
        else
        {
            $this->width = 0.0;
        }
        if (array_key_exists('speed', $values)) $this->speed = $values['speed'];
        else
        {
            $this->speed = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionMove_Goal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionMove_Goal', $bytes); }
}
/** @brief Own every original field of franka_msgs/action/Move_Result. */
final class Ros2Franka_msgsActionMove_Result
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionMove_Result',
        'native_type' => 'franka_msgs/action/Move_Result',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionMove_Result', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionMove_Result', $bytes);
            }
}
/** @brief Own every original field of franka_msgs/action/Move_Feedback. */
final class Ros2Franka_msgsActionMove_Feedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionMove_Feedback',
        'native_type' => 'franka_msgs/action/Move_Feedback',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'current_width',
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
    public mixed $current_width;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('current_width', $values)) $this->current_width = $values['current_width'];
        else
        {
            $this->current_width = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionMove_Feedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionMove_Feedback',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/action/PTPMotion_Goal. */
final class Ros2Franka_msgsActionPTPMotion_Goal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionPTPMotion_Goal',
        'native_type' => 'franka_msgs/action/PTPMotion_Goal',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc',
        'minimum' => 16,
        'maximum' => 128,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'goal_joint_configuration',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'maximum_joint_velocities',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'goal_tolerance',
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
    /** @brief Original float64 field; shape sequence and quota 7. */
    public mixed $goal_joint_configuration;
    /** @brief Original float64 field; shape sequence and quota 7. */
    public mixed $maximum_joint_velocities;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $goal_tolerance;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('goal_joint_configuration', $values)) $this->goal_joint_configuration =
                $values['goal_joint_configuration'];
        else
        {
            $this->goal_joint_configuration = [];
        }
        if (array_key_exists('maximum_joint_velocities', $values)) $this->maximum_joint_velocities =
                $values['maximum_joint_velocities'];
        else
        {
            $this->maximum_joint_velocities = [];
        }
        if (array_key_exists('goal_tolerance', $values)) $this->goal_tolerance = $values['goal_tolerance'];
        else
        {
            $this->goal_tolerance = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionPTPMotion_Goal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionPTPMotion_Goal',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/msg/TargetStatus. */
final class Ros2Franka_msgsMsgTargetStatus
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsMsgTargetStatus',
        'native_type' => 'franka_msgs/msg/TargetStatus',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'constants' => [
            'IDLE' => 0,
            'EXECUTING' => 1,
            'TARGET_REACHED' => 2,
            'ABORTED' => 3,
        ],
        'fields' => [
            [
                'name' => 'status',
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
    /** @brief Preserve the exact original declared constant. */
    public const IDLE = 0;
    /** @brief Preserve the exact original declared constant. */
    public const EXECUTING = 1;
    /** @brief Preserve the exact original declared constant. */
    public const TARGET_REACHED = 2;
    /** @brief Preserve the exact original declared constant. */
    public const ABORTED = 3;
    /** @brief Original uint8 field; shape scalar and quota 0. */
    public mixed $status;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('status', $values)) $this->status = $values['status'];
        else
        {
            $this->status = 0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsMsgTargetStatus', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsMsgTargetStatus', $bytes); }
}
/** @brief Own every original field of franka_msgs/action/PTPMotion_Result. */
final class Ros2Franka_msgsActionPTPMotion_Result
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionPTPMotion_Result',
        'native_type' => 'franka_msgs/action/PTPMotion_Result',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'target_status',
                'type' => 'Ros2Franka_msgsMsgTargetStatus',
                'array' => '',
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
                'name' => 'error_message',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original Ros2Franka_msgsMsgTargetStatus field; shape scalar and quota 0. */
    public mixed $target_status;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error_message;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('target_status', $values)) $this->target_status = $values['target_status'];
        else
        {
            $this->target_status = new Ros2Franka_msgsMsgTargetStatus();
        }
        if (array_key_exists('error_message', $values)) $this->error_message = $values['error_message'];
        else
        {
            $this->error_message = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionPTPMotion_Result', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionPTPMotion_Result',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/action/PTPMotion_Feedback. */
final class Ros2Franka_msgsActionPTPMotion_Feedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsActionPTPMotion_Feedback',
        'native_type' => 'franka_msgs/action/PTPMotion_Feedback',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'target_status',
                'type' => 'Ros2Franka_msgsMsgTargetStatus',
                'array' => '',
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
    /** @brief Original Ros2Franka_msgsMsgTargetStatus field; shape scalar and quota 0. */
    public mixed $target_status;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('target_status', $values)) $this->target_status = $values['target_status'];
        else
        {
            $this->target_status = new Ros2Franka_msgsMsgTargetStatus();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsActionPTPMotion_Feedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsActionPTPMotion_Feedback',
            $bytes); }
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
/** @brief Own every original field of franka_msgs/msg/CollisionIndicators. */
final class Ros2Franka_msgsMsgCollisionIndicators
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsMsgCollisionIndicators',
        'native_type' => 'franka_msgs/msg/CollisionIndicators',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1',
        'minimum' => 208,
        'maximum' => 208,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'is_cartesian_linear_collision',
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
                'name' => 'is_cartesian_angular_collision',
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
                'name' => 'is_cartesian_linear_contact',
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
                'name' => 'is_cartesian_angular_contact',
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
                'name' => 'is_joint_collision',
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
                'name' => 'is_joint_contact',
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
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $is_cartesian_linear_collision;
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $is_cartesian_angular_collision;
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $is_cartesian_linear_contact;
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $is_cartesian_angular_contact;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $is_joint_collision;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $is_joint_contact;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('is_cartesian_linear_collision', $values)) $this->is_cartesian_linear_collision =
                $values['is_cartesian_linear_collision'];
        else
        {
            $this->is_cartesian_linear_collision = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('is_cartesian_angular_collision', $values)) $this->is_cartesian_angular_collision =
                $values['is_cartesian_angular_collision'];
        else
        {
            $this->is_cartesian_angular_collision = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('is_cartesian_linear_contact', $values)) $this->is_cartesian_linear_contact =
                $values['is_cartesian_linear_contact'];
        else
        {
            $this->is_cartesian_linear_contact = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('is_cartesian_angular_contact', $values)) $this->is_cartesian_angular_contact =
                $values['is_cartesian_angular_contact'];
        else
        {
            $this->is_cartesian_angular_contact = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('is_joint_collision', $values)) $this->is_joint_collision = $values['is_joint_collision'];
        else
        {
            $this->is_joint_collision = [];
            for ($index = 0; $index < 7; ++$index) $this->is_joint_collision[] = 0.0;
        }
        if (array_key_exists('is_joint_contact', $values)) $this->is_joint_contact = $values['is_joint_contact'];
        else
        {
            $this->is_joint_contact = [];
            for ($index = 0; $index < 7; ++$index) $this->is_joint_contact[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsMsgCollisionIndicators', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsMsgCollisionIndicators',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/msg/Elbow. */
final class Ros2Franka_msgsMsgElbow
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsMsgElbow',
        'native_type' => 'franka_msgs/msg/Elbow',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6',
        'minimum' => 80,
        'maximum' => 80,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'position',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'desired_position',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'commanded_position',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'commanded_velocity',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'commanded_acceleration',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $position;
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $desired_position;
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $commanded_position;
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $commanded_velocity;
    /** @brief Original float64 field; shape array and quota 2. */
    public mixed $commanded_acceleration;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = [];
            for ($index = 0; $index < 2; ++$index) $this->position[] = 0.0;
        }
        if (array_key_exists('desired_position', $values)) $this->desired_position = $values['desired_position'];
        else
        {
            $this->desired_position = [];
            for ($index = 0; $index < 2; ++$index) $this->desired_position[] = 0.0;
        }
        if (array_key_exists('commanded_position', $values)) $this->commanded_position = $values['commanded_position'];
        else
        {
            $this->commanded_position = [];
            for ($index = 0; $index < 2; ++$index) $this->commanded_position[] = 0.0;
        }
        if (array_key_exists('commanded_velocity', $values)) $this->commanded_velocity = $values['commanded_velocity'];
        else
        {
            $this->commanded_velocity = [];
            for ($index = 0; $index < 2; ++$index) $this->commanded_velocity[] = 0.0;
        }
        if (array_key_exists('commanded_acceleration', $values)) $this->commanded_acceleration = $values['commanded_acceleration'];
        else
        {
            $this->commanded_acceleration = [];
            for ($index = 0; $index < 2; ++$index) $this->commanded_acceleration[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsMsgElbow', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsMsgElbow', $bytes); }
}
/** @brief Own every original field of franka_msgs/msg/Errors. */
final class Ros2Franka_msgsMsgErrors
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsMsgErrors',
        'native_type' => 'franka_msgs/msg/Errors',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c',
        'minimum' => 36,
        'maximum' => 36,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'joint_position_limits_violation',
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
                'name' => 'cartesian_position_limits_violation',
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
                'name' => 'self_collision_avoidance_violation',
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
                'name' => 'joint_velocity_violation',
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
                'name' => 'cartesian_velocity_violation',
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
                'name' => 'force_control_safety_violation',
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
                'name' => 'joint_reflex',
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
                'name' => 'cartesian_reflex',
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
                'name' => 'max_goal_pose_deviation_violation',
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
                'name' => 'max_path_pose_deviation_violation',
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
                'name' => 'cartesian_velocity_profile_safety_violation',
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
                'name' => 'joint_position_motion_generator_start_pose_invalid',
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
                'name' => 'joint_motion_generator_position_limits_violation',
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
                'name' => 'joint_motion_generator_velocity_limits_violation',
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
                'name' => 'joint_motion_generator_velocity_discontinuity',
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
                'name' => 'joint_motion_generator_acceleration_discontinuity',
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
                'name' => 'cartesian_position_motion_generator_start_pose_invalid',
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
                'name' => 'cartesian_motion_generator_elbow_limit_violation',
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
                'name' => 'cartesian_motion_generator_velocity_limits_violation',
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
                'name' => 'cartesian_motion_generator_velocity_discontinuity',
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
                'name' => 'cartesian_motion_generator_acceleration_discontinuity',
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
                'name' => 'cartesian_motion_generator_elbow_sign_inconsistent',
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
                'name' => 'cartesian_motion_generator_start_elbow_invalid',
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
                'name' => 'cartesian_motion_generator_joint_position_limits_violation',
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
                'name' => 'cartesian_motion_generator_joint_velocity_limits_violation',
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
                'name' => 'cartesian_motion_generator_joint_velocity_discontinuity',
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
                'name' => 'cartesian_motion_generator_joint_acceleration_discontinuity',
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
                'name' => 'cartesian_position_motion_generator_invalid_frame',
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
                'name' => 'force_controller_desired_force_tolerance_violation',
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
                'name' => 'controller_torque_discontinuity',
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
                'name' => 'start_elbow_sign_inconsistent',
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
                'name' => 'communication_constraints_violation',
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
                'name' => 'power_limit_violation',
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
                'name' => 'joint_p2p_insufficient_torque_for_planning',
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
                'name' => 'tau_j_range_violation',
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
                'name' => 'instability_detected',
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
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_position_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_position_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $self_collision_avoidance_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_velocity_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_velocity_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $force_control_safety_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_reflex;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_reflex;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $max_goal_pose_deviation_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $max_path_pose_deviation_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_velocity_profile_safety_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_position_motion_generator_start_pose_invalid;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_motion_generator_position_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_motion_generator_velocity_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_motion_generator_velocity_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_motion_generator_acceleration_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_position_motion_generator_start_pose_invalid;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_elbow_limit_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_velocity_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_velocity_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_acceleration_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_elbow_sign_inconsistent;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_start_elbow_invalid;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_joint_position_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_joint_velocity_limits_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_joint_velocity_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_motion_generator_joint_acceleration_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $cartesian_position_motion_generator_invalid_frame;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $force_controller_desired_force_tolerance_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $controller_torque_discontinuity;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $start_elbow_sign_inconsistent;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $communication_constraints_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $power_limit_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $joint_p2p_insufficient_torque_for_planning;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $tau_j_range_violation;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $instability_detected;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('joint_position_limits_violation', $values)) $this->joint_position_limits_violation =
                $values['joint_position_limits_violation'];
        else
        {
            $this->joint_position_limits_violation = false;
        }
        if (array_key_exists('cartesian_position_limits_violation', $values)) $this->cartesian_position_limits_violation =
                $values['cartesian_position_limits_violation'];
        else
        {
            $this->cartesian_position_limits_violation = false;
        }
        if (array_key_exists('self_collision_avoidance_violation', $values)) $this->self_collision_avoidance_violation =
                $values['self_collision_avoidance_violation'];
        else
        {
            $this->self_collision_avoidance_violation = false;
        }
        if (array_key_exists('joint_velocity_violation', $values)) $this->joint_velocity_violation =
                $values['joint_velocity_violation'];
        else
        {
            $this->joint_velocity_violation = false;
        }
        if (array_key_exists('cartesian_velocity_violation', $values)) $this->cartesian_velocity_violation =
                $values['cartesian_velocity_violation'];
        else
        {
            $this->cartesian_velocity_violation = false;
        }
        if (array_key_exists('force_control_safety_violation', $values)) $this->force_control_safety_violation =
                $values['force_control_safety_violation'];
        else
        {
            $this->force_control_safety_violation = false;
        }
        if (array_key_exists('joint_reflex', $values)) $this->joint_reflex = $values['joint_reflex'];
        else
        {
            $this->joint_reflex = false;
        }
        if (array_key_exists('cartesian_reflex', $values)) $this->cartesian_reflex = $values['cartesian_reflex'];
        else
        {
            $this->cartesian_reflex = false;
        }
        if (array_key_exists('max_goal_pose_deviation_violation', $values)) $this->max_goal_pose_deviation_violation =
                $values['max_goal_pose_deviation_violation'];
        else
        {
            $this->max_goal_pose_deviation_violation = false;
        }
        if (array_key_exists('max_path_pose_deviation_violation', $values)) $this->max_path_pose_deviation_violation =
                $values['max_path_pose_deviation_violation'];
        else
        {
            $this->max_path_pose_deviation_violation = false;
        }
        if (array_key_exists('cartesian_velocity_profile_safety_violation', $values))
                $this->cartesian_velocity_profile_safety_violation = $values['cartesian_velocity_profile_safety_violation'];
        else
        {
            $this->cartesian_velocity_profile_safety_violation = false;
        }
        if (array_key_exists('joint_position_motion_generator_start_pose_invalid', $values))
                $this->joint_position_motion_generator_start_pose_invalid =
                $values['joint_position_motion_generator_start_pose_invalid'];
        else
        {
            $this->joint_position_motion_generator_start_pose_invalid = false;
        }
        if (array_key_exists('joint_motion_generator_position_limits_violation', $values))
                $this->joint_motion_generator_position_limits_violation =
                $values['joint_motion_generator_position_limits_violation'];
        else
        {
            $this->joint_motion_generator_position_limits_violation = false;
        }
        if (array_key_exists('joint_motion_generator_velocity_limits_violation', $values))
                $this->joint_motion_generator_velocity_limits_violation =
                $values['joint_motion_generator_velocity_limits_violation'];
        else
        {
            $this->joint_motion_generator_velocity_limits_violation = false;
        }
        if (array_key_exists('joint_motion_generator_velocity_discontinuity', $values))
                $this->joint_motion_generator_velocity_discontinuity = $values['joint_motion_generator_velocity_discontinuity'];
        else
        {
            $this->joint_motion_generator_velocity_discontinuity = false;
        }
        if (array_key_exists('joint_motion_generator_acceleration_discontinuity', $values))
                $this->joint_motion_generator_acceleration_discontinuity =
                $values['joint_motion_generator_acceleration_discontinuity'];
        else
        {
            $this->joint_motion_generator_acceleration_discontinuity = false;
        }
        if (array_key_exists('cartesian_position_motion_generator_start_pose_invalid', $values))
                $this->cartesian_position_motion_generator_start_pose_invalid =
                $values['cartesian_position_motion_generator_start_pose_invalid'];
        else
        {
            $this->cartesian_position_motion_generator_start_pose_invalid = false;
        }
        if (array_key_exists('cartesian_motion_generator_elbow_limit_violation', $values))
                $this->cartesian_motion_generator_elbow_limit_violation =
                $values['cartesian_motion_generator_elbow_limit_violation'];
        else
        {
            $this->cartesian_motion_generator_elbow_limit_violation = false;
        }
        if (array_key_exists('cartesian_motion_generator_velocity_limits_violation', $values))
                $this->cartesian_motion_generator_velocity_limits_violation =
                $values['cartesian_motion_generator_velocity_limits_violation'];
        else
        {
            $this->cartesian_motion_generator_velocity_limits_violation = false;
        }
        if (array_key_exists('cartesian_motion_generator_velocity_discontinuity', $values))
                $this->cartesian_motion_generator_velocity_discontinuity =
                $values['cartesian_motion_generator_velocity_discontinuity'];
        else
        {
            $this->cartesian_motion_generator_velocity_discontinuity = false;
        }
        if (array_key_exists('cartesian_motion_generator_acceleration_discontinuity', $values))
                $this->cartesian_motion_generator_acceleration_discontinuity =
                $values['cartesian_motion_generator_acceleration_discontinuity'];
        else
        {
            $this->cartesian_motion_generator_acceleration_discontinuity = false;
        }
        if (array_key_exists('cartesian_motion_generator_elbow_sign_inconsistent', $values))
                $this->cartesian_motion_generator_elbow_sign_inconsistent =
                $values['cartesian_motion_generator_elbow_sign_inconsistent'];
        else
        {
            $this->cartesian_motion_generator_elbow_sign_inconsistent = false;
        }
        if (array_key_exists('cartesian_motion_generator_start_elbow_invalid', $values))
                $this->cartesian_motion_generator_start_elbow_invalid = $values['cartesian_motion_generator_start_elbow_invalid'];
        else
        {
            $this->cartesian_motion_generator_start_elbow_invalid = false;
        }
        if (array_key_exists('cartesian_motion_generator_joint_position_limits_violation', $values))
                $this->cartesian_motion_generator_joint_position_limits_violation =
                $values['cartesian_motion_generator_joint_position_limits_violation'];
        else
        {
            $this->cartesian_motion_generator_joint_position_limits_violation = false;
        }
        if (array_key_exists('cartesian_motion_generator_joint_velocity_limits_violation', $values))
                $this->cartesian_motion_generator_joint_velocity_limits_violation =
                $values['cartesian_motion_generator_joint_velocity_limits_violation'];
        else
        {
            $this->cartesian_motion_generator_joint_velocity_limits_violation = false;
        }
        if (array_key_exists('cartesian_motion_generator_joint_velocity_discontinuity', $values))
                $this->cartesian_motion_generator_joint_velocity_discontinuity =
                $values['cartesian_motion_generator_joint_velocity_discontinuity'];
        else
        {
            $this->cartesian_motion_generator_joint_velocity_discontinuity = false;
        }
        if (array_key_exists('cartesian_motion_generator_joint_acceleration_discontinuity', $values))
                $this->cartesian_motion_generator_joint_acceleration_discontinuity =
                $values['cartesian_motion_generator_joint_acceleration_discontinuity'];
        else
        {
            $this->cartesian_motion_generator_joint_acceleration_discontinuity = false;
        }
        if (array_key_exists('cartesian_position_motion_generator_invalid_frame', $values))
                $this->cartesian_position_motion_generator_invalid_frame =
                $values['cartesian_position_motion_generator_invalid_frame'];
        else
        {
            $this->cartesian_position_motion_generator_invalid_frame = false;
        }
        if (array_key_exists('force_controller_desired_force_tolerance_violation', $values))
                $this->force_controller_desired_force_tolerance_violation =
                $values['force_controller_desired_force_tolerance_violation'];
        else
        {
            $this->force_controller_desired_force_tolerance_violation = false;
        }
        if (array_key_exists('controller_torque_discontinuity', $values)) $this->controller_torque_discontinuity =
                $values['controller_torque_discontinuity'];
        else
        {
            $this->controller_torque_discontinuity = false;
        }
        if (array_key_exists('start_elbow_sign_inconsistent', $values)) $this->start_elbow_sign_inconsistent =
                $values['start_elbow_sign_inconsistent'];
        else
        {
            $this->start_elbow_sign_inconsistent = false;
        }
        if (array_key_exists('communication_constraints_violation', $values)) $this->communication_constraints_violation =
                $values['communication_constraints_violation'];
        else
        {
            $this->communication_constraints_violation = false;
        }
        if (array_key_exists('power_limit_violation', $values)) $this->power_limit_violation = $values['power_limit_violation'];
        else
        {
            $this->power_limit_violation = false;
        }
        if (array_key_exists('joint_p2p_insufficient_torque_for_planning', $values))
                $this->joint_p2p_insufficient_torque_for_planning = $values['joint_p2p_insufficient_torque_for_planning'];
        else
        {
            $this->joint_p2p_insufficient_torque_for_planning = false;
        }
        if (array_key_exists('tau_j_range_violation', $values)) $this->tau_j_range_violation = $values['tau_j_range_violation'];
        else
        {
            $this->tau_j_range_violation = false;
        }
        if (array_key_exists('instability_detected', $values)) $this->instability_detected = $values['instability_detected'];
        else
        {
            $this->instability_detected = false;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsMsgErrors', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsMsgErrors', $bytes); }
}
/** @brief Own every original field of std_msgs/msg/Header. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Std_msgsMsgHeader',
        'native_type' => 'std_msgs/msg/Header',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
        'minimum' => 12,
        'maximum' => 140,
        'semantics' => '',
        'constants' => [
        ],
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
    /** @brief Original Ros2Builtin_interfacesMsgTime field; shape scalar and quota 0. */
    public mixed $stamp;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $frame_id;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('stamp', $values)) $this->stamp = $values['stamp'];
        else
        {
            $this->stamp = new Ros2Builtin_interfacesMsgTime();
        }
        if (array_key_exists('frame_id', $values)) $this->frame_id = $values['frame_id'];
        else
        {
            $this->frame_id = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Std_msgsMsgHeader', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Std_msgsMsgHeader', $bytes); }
}
/** @brief Own every original field of sensor_msgs/msg/JointState. */
final class Ros2Sensor_msgsMsgJointState
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Sensor_msgsMsgJointState',
        'native_type' => 'sensor_msgs/msg/JointState',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3',
        'minimum' => 28,
        'maximum' => 1248,
        'semantics' => 'joint-state-optional-equal-length-arrays',
        'constants' => [
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
                'name' => 'name',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 7,
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
                'name' => 'position',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'velocity',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'effort',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original string field; shape sequence and quota 7. */
    public mixed $name;
    /** @brief Original float64 field; shape sequence and quota 7. */
    public mixed $position;
    /** @brief Original float64 field; shape sequence and quota 7. */
    public mixed $velocity;
    /** @brief Original float64 field; shape sequence and quota 7. */
    public mixed $effort;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('name', $values)) $this->name = $values['name'];
        else
        {
            $this->name = [];
        }
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = [];
        }
        if (array_key_exists('velocity', $values)) $this->velocity = $values['velocity'];
        else
        {
            $this->velocity = [];
        }
        if (array_key_exists('effort', $values)) $this->effort = $values['effort'];
        else
        {
            $this->effort = [];
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Sensor_msgsMsgJointState', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Sensor_msgsMsgJointState', $bytes); }
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
/** @brief Own every original field of geometry_msgs/msg/WrenchStamped. */
final class Ros2Geometry_msgsMsgWrenchStamped
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgWrenchStamped',
        'native_type' => 'geometry_msgs/msg/WrenchStamped',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66',
        'minimum' => 60,
        'maximum' => 188,
        'semantics' => '',
        'constants' => [
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
                'name' => 'wrench',
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
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original Ros2Geometry_msgsMsgWrench field; shape scalar and quota 0. */
    public mixed $wrench;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('wrench', $values)) $this->wrench = $values['wrench'];
        else
        {
            $this->wrench = new Ros2Geometry_msgsMsgWrench();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgWrenchStamped', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgWrenchStamped',
            $bytes); }
}
/** @brief Own every original field of geometry_msgs/msg/Inertia. */
final class Ros2Geometry_msgsMsgInertia
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgInertia',
        'native_type' => 'geometry_msgs/msg/Inertia',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a',
        'minimum' => 80,
        'maximum' => 80,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'm',
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
                'name' => 'com',
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
                'name' => 'ixx',
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
                'name' => 'ixy',
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
                'name' => 'ixz',
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
                'name' => 'iyy',
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
                'name' => 'iyz',
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
                'name' => 'izz',
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
    public mixed $m;
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $com;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $ixx;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $ixy;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $ixz;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $iyy;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $iyz;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $izz;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('m', $values)) $this->m = $values['m'];
        else
        {
            $this->m = 0.0;
        }
        if (array_key_exists('com', $values)) $this->com = $values['com'];
        else
        {
            $this->com = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('ixx', $values)) $this->ixx = $values['ixx'];
        else
        {
            $this->ixx = 0.0;
        }
        if (array_key_exists('ixy', $values)) $this->ixy = $values['ixy'];
        else
        {
            $this->ixy = 0.0;
        }
        if (array_key_exists('ixz', $values)) $this->ixz = $values['ixz'];
        else
        {
            $this->ixz = 0.0;
        }
        if (array_key_exists('iyy', $values)) $this->iyy = $values['iyy'];
        else
        {
            $this->iyy = 0.0;
        }
        if (array_key_exists('iyz', $values)) $this->iyz = $values['iyz'];
        else
        {
            $this->iyz = 0.0;
        }
        if (array_key_exists('izz', $values)) $this->izz = $values['izz'];
        else
        {
            $this->izz = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgInertia', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgInertia', $bytes); }
}
/** @brief Own every original field of geometry_msgs/msg/InertiaStamped. */
final class Ros2Geometry_msgsMsgInertiaStamped
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgInertiaStamped',
        'native_type' => 'geometry_msgs/msg/InertiaStamped',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576',
        'minimum' => 92,
        'maximum' => 220,
        'semantics' => '',
        'constants' => [
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
                'name' => 'inertia',
                'type' => 'Ros2Geometry_msgsMsgInertia',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 80,
            ],
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original Ros2Geometry_msgsMsgInertia field; shape scalar and quota 0. */
    public mixed $inertia;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('inertia', $values)) $this->inertia = $values['inertia'];
        else
        {
            $this->inertia = new Ros2Geometry_msgsMsgInertia();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgInertiaStamped', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgInertiaStamped',
            $bytes); }
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
/** @brief Own every original field of geometry_msgs/msg/PoseStamped. */
final class Ros2Geometry_msgsMsgPoseStamped
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgPoseStamped',
        'native_type' => 'geometry_msgs/msg/PoseStamped',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2',
        'minimum' => 68,
        'maximum' => 196,
        'semantics' => '',
        'constants' => [
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
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original Ros2Geometry_msgsMsgPose field; shape scalar and quota 0. */
    public mixed $pose;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('pose', $values)) $this->pose = $values['pose'];
        else
        {
            $this->pose = new Ros2Geometry_msgsMsgPose();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgPoseStamped', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgPoseStamped', $bytes);
            }
}
/** @brief Own every original field of geometry_msgs/msg/Twist. */
final class Ros2Geometry_msgsMsgTwist
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgTwist',
        'native_type' => 'geometry_msgs/msg/Twist',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
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
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgTwist', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgTwist', $bytes); }
}
/** @brief Own every original field of geometry_msgs/msg/TwistStamped. */
final class Ros2Geometry_msgsMsgTwistStamped
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgTwistStamped',
        'native_type' => 'geometry_msgs/msg/TwistStamped',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573',
        'minimum' => 60,
        'maximum' => 188,
        'semantics' => '',
        'constants' => [
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
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original Ros2Geometry_msgsMsgTwist field; shape scalar and quota 0. */
    public mixed $twist;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('twist', $values)) $this->twist = $values['twist'];
        else
        {
            $this->twist = new Ros2Geometry_msgsMsgTwist();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgTwistStamped', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgTwistStamped', $bytes);
            }
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
/** @brief Own every original field of geometry_msgs/msg/AccelStamped. */
final class Ros2Geometry_msgsMsgAccelStamped
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgAccelStamped',
        'native_type' => 'geometry_msgs/msg/AccelStamped',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899',
        'minimum' => 60,
        'maximum' => 188,
        'semantics' => '',
        'constants' => [
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
                'name' => 'accel',
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
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original Ros2Geometry_msgsMsgAccel field; shape scalar and quota 0. */
    public mixed $accel;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('accel', $values)) $this->accel = $values['accel'];
        else
        {
            $this->accel = new Ros2Geometry_msgsMsgAccel();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgAccelStamped', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgAccelStamped', $bytes);
            }
}
/** @brief Own every original field of geometry_msgs/msg/Vector3Stamped. */
final class Ros2Geometry_msgsMsgVector3Stamped
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Geometry_msgsMsgVector3Stamped',
        'native_type' => 'geometry_msgs/msg/Vector3Stamped',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b',
        'minimum' => 36,
        'maximum' => 164,
        'semantics' => '',
        'constants' => [
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
                'name' => 'vector',
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
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original Ros2Geometry_msgsMsgVector3 field; shape scalar and quota 0. */
    public mixed $vector;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('vector', $values)) $this->vector = $values['vector'];
        else
        {
            $this->vector = new Ros2Geometry_msgsMsgVector3();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Geometry_msgsMsgVector3Stamped', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Geometry_msgsMsgVector3Stamped',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/msg/FrankaRobotState. */
final class Ros2Franka_msgsMsgFrankaRobotState
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsMsgFrankaRobotState',
        'native_type' => 'franka_msgs/msg/FrankaRobotState',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282',
        'minimum' => 1961,
        'maximum' => 10169,
        'semantics' => '',
        'constants' => [
            'ROBOT_MODE_OTHER' => 0,
            'ROBOT_MODE_IDLE' => 1,
            'ROBOT_MODE_MOVE' => 2,
            'ROBOT_MODE_GUIDING' => 3,
            'ROBOT_MODE_REFLEX' => 4,
            'ROBOT_MODE_USER_STOPPED' => 5,
            'ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY' => 6,
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
                'name' => 'collision_indicators',
                'type' => 'Ros2Franka_msgsMsgCollisionIndicators',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 208,
            ],
            [
                'name' => 'measured_joint_state',
                'type' => 'Ros2Sensor_msgsMsgJointState',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28,
            ],
            [
                'name' => 'desired_joint_state',
                'type' => 'Ros2Sensor_msgsMsgJointState',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28,
            ],
            [
                'name' => 'measured_joint_motor_state',
                'type' => 'Ros2Sensor_msgsMsgJointState',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28,
            ],
            [
                'name' => 'ddq_d',
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
                'name' => 'dtau_j',
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
                'name' => 'tau_ext_hat_filtered',
                'type' => 'Ros2Sensor_msgsMsgJointState',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 28,
            ],
            [
                'name' => 'elbow',
                'type' => 'Ros2Franka_msgsMsgElbow',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 80,
            ],
            [
                'name' => 'k_f_ext_hat_k',
                'type' => 'Ros2Geometry_msgsMsgWrenchStamped',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 60,
            ],
            [
                'name' => 'o_f_ext_hat_k',
                'type' => 'Ros2Geometry_msgsMsgWrenchStamped',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 60,
            ],
            [
                'name' => 'inertia_ee',
                'type' => 'Ros2Geometry_msgsMsgInertiaStamped',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 92,
            ],
            [
                'name' => 'inertia_load',
                'type' => 'Ros2Geometry_msgsMsgInertiaStamped',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 92,
            ],
            [
                'name' => 'inertia_total',
                'type' => 'Ros2Geometry_msgsMsgInertiaStamped',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 92,
            ],
            [
                'name' => 'o_t_ee',
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
                'element_minimum' => 68,
            ],
            [
                'name' => 'o_t_ee_d',
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
                'element_minimum' => 68,
            ],
            [
                'name' => 'o_t_ee_c',
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
                'element_minimum' => 68,
            ],
            [
                'name' => 'f_t_ee',
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
                'element_minimum' => 68,
            ],
            [
                'name' => 'ee_t_k',
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
                'element_minimum' => 68,
            ],
            [
                'name' => 'o_dp_ee_d',
                'type' => 'Ros2Geometry_msgsMsgTwistStamped',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 60,
            ],
            [
                'name' => 'o_dp_ee_c',
                'type' => 'Ros2Geometry_msgsMsgTwistStamped',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 60,
            ],
            [
                'name' => 'o_ddp_ee_c',
                'type' => 'Ros2Geometry_msgsMsgAccelStamped',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 60,
            ],
            [
                'name' => 'time',
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
                'name' => 'control_command_success_rate',
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
                'name' => 'robot_mode',
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
                'name' => 'current_errors',
                'type' => 'Ros2Franka_msgsMsgErrors',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 36,
            ],
            [
                'name' => 'last_motion_errors',
                'type' => 'Ros2Franka_msgsMsgErrors',
                'array' => '',
                'count' => 0,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 0,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 36,
            ],
            [
                'name' => 'accelerometer_top',
                'type' => 'Ros2Geometry_msgsMsgVector3Stamped',
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
                'element_minimum' => 36,
            ],
            [
                'name' => 'accelerometer_bottom',
                'type' => 'Ros2Geometry_msgsMsgVector3Stamped',
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
                'element_minimum' => 36,
            ],
        ],
    ];
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_OTHER = 0;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_IDLE = 1;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_MOVE = 2;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_GUIDING = 3;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_REFLEX = 4;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_USER_STOPPED = 5;
    /** @brief Preserve the exact original declared constant. */
    public const ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY = 6;
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original Ros2Franka_msgsMsgCollisionIndicators field; shape scalar and quota 0. */
    public mixed $collision_indicators;
    /** @brief Original Ros2Sensor_msgsMsgJointState field; shape scalar and quota 0. */
    public mixed $measured_joint_state;
    /** @brief Original Ros2Sensor_msgsMsgJointState field; shape scalar and quota 0. */
    public mixed $desired_joint_state;
    /** @brief Original Ros2Sensor_msgsMsgJointState field; shape scalar and quota 0. */
    public mixed $measured_joint_motor_state;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $ddq_d;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $dtau_j;
    /** @brief Original Ros2Sensor_msgsMsgJointState field; shape scalar and quota 0. */
    public mixed $tau_ext_hat_filtered;
    /** @brief Original Ros2Franka_msgsMsgElbow field; shape scalar and quota 0. */
    public mixed $elbow;
    /** @brief Original Ros2Geometry_msgsMsgWrenchStamped field; shape scalar and quota 0. */
    public mixed $k_f_ext_hat_k;
    /** @brief Original Ros2Geometry_msgsMsgWrenchStamped field; shape scalar and quota 0. */
    public mixed $o_f_ext_hat_k;
    /** @brief Original Ros2Geometry_msgsMsgInertiaStamped field; shape scalar and quota 0. */
    public mixed $inertia_ee;
    /** @brief Original Ros2Geometry_msgsMsgInertiaStamped field; shape scalar and quota 0. */
    public mixed $inertia_load;
    /** @brief Original Ros2Geometry_msgsMsgInertiaStamped field; shape scalar and quota 0. */
    public mixed $inertia_total;
    /** @brief Original Ros2Geometry_msgsMsgPoseStamped field; shape scalar and quota 0. */
    public mixed $o_t_ee;
    /** @brief Original Ros2Geometry_msgsMsgPoseStamped field; shape scalar and quota 0. */
    public mixed $o_t_ee_d;
    /** @brief Original Ros2Geometry_msgsMsgPoseStamped field; shape scalar and quota 0. */
    public mixed $o_t_ee_c;
    /** @brief Original Ros2Geometry_msgsMsgPoseStamped field; shape scalar and quota 0. */
    public mixed $f_t_ee;
    /** @brief Original Ros2Geometry_msgsMsgPoseStamped field; shape scalar and quota 0. */
    public mixed $ee_t_k;
    /** @brief Original Ros2Geometry_msgsMsgTwistStamped field; shape scalar and quota 0. */
    public mixed $o_dp_ee_d;
    /** @brief Original Ros2Geometry_msgsMsgTwistStamped field; shape scalar and quota 0. */
    public mixed $o_dp_ee_c;
    /** @brief Original Ros2Geometry_msgsMsgAccelStamped field; shape scalar and quota 0. */
    public mixed $o_ddp_ee_c;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $time;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $control_command_success_rate;
    /** @brief Original uint8 field; shape scalar and quota 0. */
    public mixed $robot_mode;
    /** @brief Original Ros2Franka_msgsMsgErrors field; shape scalar and quota 0. */
    public mixed $current_errors;
    /** @brief Original Ros2Franka_msgsMsgErrors field; shape scalar and quota 0. */
    public mixed $last_motion_errors;
    /** @brief Original Ros2Geometry_msgsMsgVector3Stamped field; shape array and quota 6. */
    public mixed $accelerometer_top;
    /** @brief Original Ros2Geometry_msgsMsgVector3Stamped field; shape array and quota 6. */
    public mixed $accelerometer_bottom;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('collision_indicators', $values)) $this->collision_indicators = $values['collision_indicators'];
        else
        {
            $this->collision_indicators = new Ros2Franka_msgsMsgCollisionIndicators();
        }
        if (array_key_exists('measured_joint_state', $values)) $this->measured_joint_state = $values['measured_joint_state'];
        else
        {
            $this->measured_joint_state = new Ros2Sensor_msgsMsgJointState();
        }
        if (array_key_exists('desired_joint_state', $values)) $this->desired_joint_state = $values['desired_joint_state'];
        else
        {
            $this->desired_joint_state = new Ros2Sensor_msgsMsgJointState();
        }
        if (array_key_exists('measured_joint_motor_state', $values)) $this->measured_joint_motor_state =
                $values['measured_joint_motor_state'];
        else
        {
            $this->measured_joint_motor_state = new Ros2Sensor_msgsMsgJointState();
        }
        if (array_key_exists('ddq_d', $values)) $this->ddq_d = $values['ddq_d'];
        else
        {
            $this->ddq_d = [];
            for ($index = 0; $index < 7; ++$index) $this->ddq_d[] = 0.0;
        }
        if (array_key_exists('dtau_j', $values)) $this->dtau_j = $values['dtau_j'];
        else
        {
            $this->dtau_j = [];
            for ($index = 0; $index < 7; ++$index) $this->dtau_j[] = 0.0;
        }
        if (array_key_exists('tau_ext_hat_filtered', $values)) $this->tau_ext_hat_filtered = $values['tau_ext_hat_filtered'];
        else
        {
            $this->tau_ext_hat_filtered = new Ros2Sensor_msgsMsgJointState();
        }
        if (array_key_exists('elbow', $values)) $this->elbow = $values['elbow'];
        else
        {
            $this->elbow = new Ros2Franka_msgsMsgElbow();
        }
        if (array_key_exists('k_f_ext_hat_k', $values)) $this->k_f_ext_hat_k = $values['k_f_ext_hat_k'];
        else
        {
            $this->k_f_ext_hat_k = new Ros2Geometry_msgsMsgWrenchStamped();
        }
        if (array_key_exists('o_f_ext_hat_k', $values)) $this->o_f_ext_hat_k = $values['o_f_ext_hat_k'];
        else
        {
            $this->o_f_ext_hat_k = new Ros2Geometry_msgsMsgWrenchStamped();
        }
        if (array_key_exists('inertia_ee', $values)) $this->inertia_ee = $values['inertia_ee'];
        else
        {
            $this->inertia_ee = new Ros2Geometry_msgsMsgInertiaStamped();
        }
        if (array_key_exists('inertia_load', $values)) $this->inertia_load = $values['inertia_load'];
        else
        {
            $this->inertia_load = new Ros2Geometry_msgsMsgInertiaStamped();
        }
        if (array_key_exists('inertia_total', $values)) $this->inertia_total = $values['inertia_total'];
        else
        {
            $this->inertia_total = new Ros2Geometry_msgsMsgInertiaStamped();
        }
        if (array_key_exists('o_t_ee', $values)) $this->o_t_ee = $values['o_t_ee'];
        else
        {
            $this->o_t_ee = new Ros2Geometry_msgsMsgPoseStamped();
        }
        if (array_key_exists('o_t_ee_d', $values)) $this->o_t_ee_d = $values['o_t_ee_d'];
        else
        {
            $this->o_t_ee_d = new Ros2Geometry_msgsMsgPoseStamped();
        }
        if (array_key_exists('o_t_ee_c', $values)) $this->o_t_ee_c = $values['o_t_ee_c'];
        else
        {
            $this->o_t_ee_c = new Ros2Geometry_msgsMsgPoseStamped();
        }
        if (array_key_exists('f_t_ee', $values)) $this->f_t_ee = $values['f_t_ee'];
        else
        {
            $this->f_t_ee = new Ros2Geometry_msgsMsgPoseStamped();
        }
        if (array_key_exists('ee_t_k', $values)) $this->ee_t_k = $values['ee_t_k'];
        else
        {
            $this->ee_t_k = new Ros2Geometry_msgsMsgPoseStamped();
        }
        if (array_key_exists('o_dp_ee_d', $values)) $this->o_dp_ee_d = $values['o_dp_ee_d'];
        else
        {
            $this->o_dp_ee_d = new Ros2Geometry_msgsMsgTwistStamped();
        }
        if (array_key_exists('o_dp_ee_c', $values)) $this->o_dp_ee_c = $values['o_dp_ee_c'];
        else
        {
            $this->o_dp_ee_c = new Ros2Geometry_msgsMsgTwistStamped();
        }
        if (array_key_exists('o_ddp_ee_c', $values)) $this->o_ddp_ee_c = $values['o_ddp_ee_c'];
        else
        {
            $this->o_ddp_ee_c = new Ros2Geometry_msgsMsgAccelStamped();
        }
        if (array_key_exists('time', $values)) $this->time = $values['time'];
        else
        {
            $this->time = 0.0;
        }
        if (array_key_exists('control_command_success_rate', $values)) $this->control_command_success_rate =
                $values['control_command_success_rate'];
        else
        {
            $this->control_command_success_rate = 0.0;
        }
        if (array_key_exists('robot_mode', $values)) $this->robot_mode = $values['robot_mode'];
        else
        {
            $this->robot_mode = 0;
        }
        if (array_key_exists('current_errors', $values)) $this->current_errors = $values['current_errors'];
        else
        {
            $this->current_errors = new Ros2Franka_msgsMsgErrors();
        }
        if (array_key_exists('last_motion_errors', $values)) $this->last_motion_errors = $values['last_motion_errors'];
        else
        {
            $this->last_motion_errors = new Ros2Franka_msgsMsgErrors();
        }
        if (array_key_exists('accelerometer_top', $values)) $this->accelerometer_top = $values['accelerometer_top'];
        else
        {
            $this->accelerometer_top = [];
            for ($index = 0; $index < 6; ++$index) $this->accelerometer_top[] = new Ros2Geometry_msgsMsgVector3Stamped();
        }
        if (array_key_exists('accelerometer_bottom', $values)) $this->accelerometer_bottom = $values['accelerometer_bottom'];
        else
        {
            $this->accelerometer_bottom = [];
            for ($index = 0; $index < 6; ++$index) $this->accelerometer_bottom[] = new Ros2Geometry_msgsMsgVector3Stamped();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsMsgFrankaRobotState', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsMsgFrankaRobotState',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Request. */
final class Ros2Franka_msgsSrvSetCartesianStiffness_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetCartesianStiffness_Request',
        'native_type' => 'franka_msgs/srv/SetCartesianStiffness_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260',
        'minimum' => 48,
        'maximum' => 48,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'cartesian_stiffness',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $cartesian_stiffness;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('cartesian_stiffness', $values)) $this->cartesian_stiffness = $values['cartesian_stiffness'];
        else
        {
            $this->cartesian_stiffness = [];
            for ($index = 0; $index < 6; ++$index) $this->cartesian_stiffness[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetCartesianStiffness_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetCartesianStiffness_Request', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Response. */
final class Ros2Franka_msgsSrvSetCartesianStiffness_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetCartesianStiffness_Response',
        'native_type' => 'franka_msgs/srv/SetCartesianStiffness_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetCartesianStiffness_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetCartesianStiffness_Response', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request. */
final class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request',
        'native_type' => 'franka_msgs/srv/SetForceTorqueCollisionBehavior_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c',
        'minimum' => 208,
        'maximum' => 208,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'lower_torque_thresholds_nominal',
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
                'name' => 'upper_torque_thresholds_nominal',
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
                'name' => 'lower_force_thresholds_nominal',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'upper_force_thresholds_nominal',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $lower_torque_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $upper_torque_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $lower_force_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $upper_force_thresholds_nominal;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('lower_torque_thresholds_nominal', $values)) $this->lower_torque_thresholds_nominal =
                $values['lower_torque_thresholds_nominal'];
        else
        {
            $this->lower_torque_thresholds_nominal = [];
            for ($index = 0; $index < 7; ++$index) $this->lower_torque_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('upper_torque_thresholds_nominal', $values)) $this->upper_torque_thresholds_nominal =
                $values['upper_torque_thresholds_nominal'];
        else
        {
            $this->upper_torque_thresholds_nominal = [];
            for ($index = 0; $index < 7; ++$index) $this->upper_torque_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('lower_force_thresholds_nominal', $values)) $this->lower_force_thresholds_nominal =
                $values['lower_force_thresholds_nominal'];
        else
        {
            $this->lower_force_thresholds_nominal = [];
            for ($index = 0; $index < 6; ++$index) $this->lower_force_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('upper_force_thresholds_nominal', $values)) $this->upper_force_thresholds_nominal =
                $values['upper_force_thresholds_nominal'];
        else
        {
            $this->upper_force_thresholds_nominal = [];
            for ($index = 0; $index < 6; ++$index) $this->upper_force_thresholds_nominal[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request',
            $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response. */
final class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response',
        'native_type' => 'franka_msgs/srv/SetForceTorqueCollisionBehavior_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response',
            $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Request. */
final class Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetFullCollisionBehavior_Request',
        'native_type' => 'franka_msgs/srv/SetFullCollisionBehavior_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824',
        'minimum' => 416,
        'maximum' => 416,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'lower_torque_thresholds_acceleration',
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
                'name' => 'upper_torque_thresholds_acceleration',
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
                'name' => 'lower_torque_thresholds_nominal',
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
                'name' => 'upper_torque_thresholds_nominal',
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
                'name' => 'lower_force_thresholds_acceleration',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'upper_force_thresholds_acceleration',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'lower_force_thresholds_nominal',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'upper_force_thresholds_nominal',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $lower_torque_thresholds_acceleration;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $upper_torque_thresholds_acceleration;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $lower_torque_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 7. */
    public mixed $upper_torque_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $lower_force_thresholds_acceleration;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $upper_force_thresholds_acceleration;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $lower_force_thresholds_nominal;
    /** @brief Original float64 field; shape array and quota 6. */
    public mixed $upper_force_thresholds_nominal;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('lower_torque_thresholds_acceleration', $values)) $this->lower_torque_thresholds_acceleration =
                $values['lower_torque_thresholds_acceleration'];
        else
        {
            $this->lower_torque_thresholds_acceleration = [];
            for ($index = 0; $index < 7; ++$index) $this->lower_torque_thresholds_acceleration[] = 0.0;
        }
        if (array_key_exists('upper_torque_thresholds_acceleration', $values)) $this->upper_torque_thresholds_acceleration =
                $values['upper_torque_thresholds_acceleration'];
        else
        {
            $this->upper_torque_thresholds_acceleration = [];
            for ($index = 0; $index < 7; ++$index) $this->upper_torque_thresholds_acceleration[] = 0.0;
        }
        if (array_key_exists('lower_torque_thresholds_nominal', $values)) $this->lower_torque_thresholds_nominal =
                $values['lower_torque_thresholds_nominal'];
        else
        {
            $this->lower_torque_thresholds_nominal = [];
            for ($index = 0; $index < 7; ++$index) $this->lower_torque_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('upper_torque_thresholds_nominal', $values)) $this->upper_torque_thresholds_nominal =
                $values['upper_torque_thresholds_nominal'];
        else
        {
            $this->upper_torque_thresholds_nominal = [];
            for ($index = 0; $index < 7; ++$index) $this->upper_torque_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('lower_force_thresholds_acceleration', $values)) $this->lower_force_thresholds_acceleration =
                $values['lower_force_thresholds_acceleration'];
        else
        {
            $this->lower_force_thresholds_acceleration = [];
            for ($index = 0; $index < 6; ++$index) $this->lower_force_thresholds_acceleration[] = 0.0;
        }
        if (array_key_exists('upper_force_thresholds_acceleration', $values)) $this->upper_force_thresholds_acceleration =
                $values['upper_force_thresholds_acceleration'];
        else
        {
            $this->upper_force_thresholds_acceleration = [];
            for ($index = 0; $index < 6; ++$index) $this->upper_force_thresholds_acceleration[] = 0.0;
        }
        if (array_key_exists('lower_force_thresholds_nominal', $values)) $this->lower_force_thresholds_nominal =
                $values['lower_force_thresholds_nominal'];
        else
        {
            $this->lower_force_thresholds_nominal = [];
            for ($index = 0; $index < 6; ++$index) $this->lower_force_thresholds_nominal[] = 0.0;
        }
        if (array_key_exists('upper_force_thresholds_nominal', $values)) $this->upper_force_thresholds_nominal =
                $values['upper_force_thresholds_nominal'];
        else
        {
            $this->upper_force_thresholds_nominal = [];
            for ($index = 0; $index < 6; ++$index) $this->upper_force_thresholds_nominal[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetFullCollisionBehavior_Request', $this);
            }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetFullCollisionBehavior_Request', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Response. */
final class Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetFullCollisionBehavior_Response',
        'native_type' => 'franka_msgs/srv/SetFullCollisionBehavior_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetFullCollisionBehavior_Response', $this);
            }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetFullCollisionBehavior_Response', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetJointStiffness_Request. */
final class Ros2Franka_msgsSrvSetJointStiffness_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetJointStiffness_Request',
        'native_type' => 'franka_msgs/srv/SetJointStiffness_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'joint_stiffness',
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
    public mixed $joint_stiffness;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('joint_stiffness', $values)) $this->joint_stiffness = $values['joint_stiffness'];
        else
        {
            $this->joint_stiffness = [];
            for ($index = 0; $index < 7; ++$index) $this->joint_stiffness[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetJointStiffness_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetJointStiffness_Request', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetJointStiffness_Response. */
final class Ros2Franka_msgsSrvSetJointStiffness_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetJointStiffness_Response',
        'native_type' => 'franka_msgs/srv/SetJointStiffness_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetJointStiffness_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetJointStiffness_Response', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetLoad_Request. */
final class Ros2Franka_msgsSrvSetLoad_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetLoad_Request',
        'native_type' => 'franka_msgs/srv/SetLoad_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8',
        'minimum' => 104,
        'maximum' => 104,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'mass',
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
                'name' => 'center_of_mass',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'load_inertia',
                'type' => 'float64',
                'array' => 'array',
                'count' => 9,
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
    public mixed $mass;
    /** @brief Original float64 field; shape array and quota 3. */
    public mixed $center_of_mass;
    /** @brief Original float64 field; shape array and quota 9. */
    public mixed $load_inertia;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('mass', $values)) $this->mass = $values['mass'];
        else
        {
            $this->mass = 0.0;
        }
        if (array_key_exists('center_of_mass', $values)) $this->center_of_mass = $values['center_of_mass'];
        else
        {
            $this->center_of_mass = [];
            for ($index = 0; $index < 3; ++$index) $this->center_of_mass[] = 0.0;
        }
        if (array_key_exists('load_inertia', $values)) $this->load_inertia = $values['load_inertia'];
        else
        {
            $this->load_inertia = [];
            for ($index = 0; $index < 9; ++$index) $this->load_inertia[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetLoad_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsSrvSetLoad_Request',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetLoad_Response. */
final class Ros2Franka_msgsSrvSetLoad_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetLoad_Response',
        'native_type' => 'franka_msgs/srv/SetLoad_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetLoad_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsSrvSetLoad_Response',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Request. */
final class Ros2Franka_msgsSrvSetStiffnessFrame_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetStiffnessFrame_Request',
        'native_type' => 'franka_msgs/srv/SetStiffnessFrame_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402',
        'minimum' => 128,
        'maximum' => 128,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'transformation',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $transformation;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('transformation', $values)) $this->transformation = $values['transformation'];
        else
        {
            $this->transformation = [];
            for ($index = 0; $index < 16; ++$index) $this->transformation[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetStiffnessFrame_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetStiffnessFrame_Request', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Response. */
final class Ros2Franka_msgsSrvSetStiffnessFrame_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetStiffnessFrame_Response',
        'native_type' => 'franka_msgs/srv/SetStiffnessFrame_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetStiffnessFrame_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_msgsSrvSetStiffnessFrame_Response', $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetTCPFrame_Request. */
final class Ros2Franka_msgsSrvSetTCPFrame_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetTCPFrame_Request',
        'native_type' => 'franka_msgs/srv/SetTCPFrame_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f',
        'minimum' => 128,
        'maximum' => 128,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'transformation',
                'type' => 'float64',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape array and quota 16. */
    public mixed $transformation;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('transformation', $values)) $this->transformation = $values['transformation'];
        else
        {
            $this->transformation = [];
            for ($index = 0; $index < 16; ++$index) $this->transformation[] = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetTCPFrame_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsSrvSetTCPFrame_Request',
            $bytes); }
}
/** @brief Own every original field of franka_msgs/srv/SetTCPFrame_Response. */
final class Ros2Franka_msgsSrvSetTCPFrame_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_msgsSrvSetTCPFrame_Response',
        'native_type' => 'franka_msgs/srv/SetTCPFrame_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38',
        'minimum' => 5,
        'maximum' => 261,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_msgsSrvSetTCPFrame_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_msgsSrvSetTCPFrame_Response',
            $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Goal. */
final class Ros2Franka_spine_msgsActionMoveAbsolute_Goal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsActionMoveAbsolute_Goal',
        'native_type' => 'franka_spine_msgs/action/MoveAbsolute_Goal',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'position',
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
                'name' => 'velocity',
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
                'name' => 'acceleration',
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
                'name' => 'deceleration',
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
    public mixed $position;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $velocity;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $acceleration;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $deceleration;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = 0.0;
        }
        if (array_key_exists('velocity', $values)) $this->velocity = $values['velocity'];
        else
        {
            $this->velocity = 0.0;
        }
        if (array_key_exists('acceleration', $values)) $this->acceleration = $values['acceleration'];
        else
        {
            $this->acceleration = 0.0;
        }
        if (array_key_exists('deceleration', $values)) $this->deceleration = $values['deceleration'];
        else
        {
            $this->deceleration = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsActionMoveAbsolute_Goal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsActionMoveAbsolute_Goal', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Result. */
final class Ros2Franka_spine_msgsActionMoveAbsolute_Result
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsActionMoveAbsolute_Result',
        'native_type' => 'franka_spine_msgs/action/MoveAbsolute_Result',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5',
        'minimum' => 9,
        'maximum' => 521,
        'semantics' => '',
        'constants' => [
        ],
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
                'element_minimum' => 1,
            ],
            [
                'name' => 'stop_by',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'error',
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $stop_by;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('stop_by', $values)) $this->stop_by = $values['stop_by'];
        else
        {
            $this->stop_by = '';
        }
        if (array_key_exists('error', $values)) $this->error = $values['error'];
        else
        {
            $this->error = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsActionMoveAbsolute_Result', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsActionMoveAbsolute_Result', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Feedback. */
final class Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsActionMoveAbsolute_Feedback',
        'native_type' => 'franka_spine_msgs/action/MoveAbsolute_Feedback',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'current_position',
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
    public mixed $current_position;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('current_position', $values)) $this->current_position = $values['current_position'];
        else
        {
            $this->current_position = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsActionMoveAbsolute_Feedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsActionMoveAbsolute_Feedback', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/msg/UserLimits. */
final class Ros2Franka_spine_msgsMsgUserLimits
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsMsgUserLimits',
        'native_type' => 'franka_spine_msgs/msg/UserLimits',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'lower_limit',
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
                'name' => 'upper_limit',
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
    public mixed $lower_limit;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $upper_limit;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('lower_limit', $values)) $this->lower_limit = $values['lower_limit'];
        else
        {
            $this->lower_limit = 0.0;
        }
        if (array_key_exists('upper_limit', $values)) $this->upper_limit = $values['upper_limit'];
        else
        {
            $this->upper_limit = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsMsgUserLimits', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_spine_msgsMsgUserLimits',
            $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/msg/SpineParameters. */
final class Ros2Franka_spine_msgsMsgSpineParameters
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsMsgSpineParameters',
        'native_type' => 'franka_spine_msgs/msg/SpineParameters',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223',
        'minimum' => 16,
        'maximum' => 16,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'user_limits',
                'type' => 'Ros2Franka_spine_msgsMsgUserLimits',
                'array' => '',
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
        ],
    ];
    /** @brief Original Ros2Franka_spine_msgsMsgUserLimits field; shape scalar and quota 0. */
    public mixed $user_limits;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('user_limits', $values)) $this->user_limits = $values['user_limits'];
        else
        {
            $this->user_limits = new Ros2Franka_spine_msgsMsgUserLimits();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsMsgSpineParameters', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_spine_msgsMsgSpineParameters',
            $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/msg/SpinePosition. */
final class Ros2Franka_spine_msgsMsgSpinePosition
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsMsgSpinePosition',
        'native_type' => 'franka_spine_msgs/msg/SpinePosition',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775',
        'minimum' => 21,
        'maximum' => 149,
        'semantics' => '',
        'constants' => [
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
                'name' => 'position',
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
                'name' => 'valid',
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
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $position;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $valid;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = 0.0;
        }
        if (array_key_exists('valid', $values)) $this->valid = $values['valid'];
        else
        {
            $this->valid = false;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsMsgSpinePosition', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_spine_msgsMsgSpinePosition',
            $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/msg/SpineState. */
final class Ros2Franka_spine_msgsMsgSpineState
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsMsgSpineState',
        'native_type' => 'franka_spine_msgs/msg/SpineState',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441',
        'minimum' => 25,
        'maximum' => 921,
        'semantics' => '',
        'constants' => [
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'error_code',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'error_description',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'valid',
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
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $state;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error_code;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error_description;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $valid;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('header', $values)) $this->header = $values['header'];
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('state', $values)) $this->state = $values['state'];
        else
        {
            $this->state = '';
        }
        if (array_key_exists('error_code', $values)) $this->error_code = $values['error_code'];
        else
        {
            $this->error_code = '';
        }
        if (array_key_exists('error_description', $values)) $this->error_description = $values['error_description'];
        else
        {
            $this->error_description = '';
        }
        if (array_key_exists('valid', $values)) $this->valid = $values['valid'];
        else
        {
            $this->valid = false;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsMsgSpineState', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_spine_msgsMsgSpineState',
            $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/FaultReset_Request. */
final class Ros2Franka_spine_msgsSrvFaultReset_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvFaultReset_Request',
        'native_type' => 'franka_spine_msgs/srv/FaultReset_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvFaultReset_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsSrvFaultReset_Request', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/FaultReset_Response. */
final class Ros2Franka_spine_msgsSrvFaultReset_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvFaultReset_Response',
        'native_type' => 'franka_spine_msgs/srv/FaultReset_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c',
        'minimum' => 9,
        'maximum' => 521,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
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
                'element_minimum' => 4,
            ],
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
                'element_minimum' => 1,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $state;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $message;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('state', $values)) $this->state = $values['state'];
        else
        {
            $this->state = '';
        }
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('message', $values)) $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvFaultReset_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsSrvFaultReset_Response', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/GetParameters_Request. */
final class Ros2Franka_spine_msgsSrvGetParameters_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvGetParameters_Request',
        'native_type' => 'franka_spine_msgs/srv/GetParameters_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvGetParameters_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsSrvGetParameters_Request', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/GetParameters_Response. */
final class Ros2Franka_spine_msgsSrvGetParameters_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvGetParameters_Response',
        'native_type' => 'franka_spine_msgs/srv/GetParameters_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed',
        'minimum' => 21,
        'maximum' => 277,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'parameters',
                'type' => 'Ros2Franka_spine_msgsMsgSpineParameters',
                'array' => '',
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
                'element_minimum' => 1,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original Ros2Franka_spine_msgsMsgSpineParameters field; shape scalar and quota 0. */
    public mixed $parameters;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $message;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('parameters', $values)) $this->parameters = $values['parameters'];
        else
        {
            $this->parameters = new Ros2Franka_spine_msgsMsgSpineParameters();
        }
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('message', $values)) $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvGetParameters_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsSrvGetParameters_Response', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/GetPosition_Request. */
final class Ros2Franka_spine_msgsSrvGetPosition_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvGetPosition_Request',
        'native_type' => 'franka_spine_msgs/srv/GetPosition_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvGetPosition_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsSrvGetPosition_Request', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/GetPosition_Response. */
final class Ros2Franka_spine_msgsSrvGetPosition_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvGetPosition_Response',
        'native_type' => 'franka_spine_msgs/srv/GetPosition_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8',
        'minimum' => 9,
        'maximum' => 9,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'position',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $position;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('position', $values)) $this->position = $values['position'];
        else
        {
            $this->position = 0.0;
        }
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvGetPosition_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsSrvGetPosition_Response', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Request. */
final class Ros2Franka_spine_msgsSrvGetSpineState_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvGetSpineState_Request',
        'native_type' => 'franka_spine_msgs/srv/GetSpineState_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvGetSpineState_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsSrvGetSpineState_Request', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Response. */
final class Ros2Franka_spine_msgsSrvGetSpineState_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvGetSpineState_Response',
        'native_type' => 'franka_spine_msgs/srv/GetSpineState_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1',
        'minimum' => 13,
        'maximum' => 781,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'error_code',
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
                'element_minimum' => 4,
            ],
            [
                'name' => 'error_description',
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
                'element_minimum' => 4,
            ],
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $state;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error_code;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $error_description;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('state', $values)) $this->state = $values['state'];
        else
        {
            $this->state = '';
        }
        if (array_key_exists('error_code', $values)) $this->error_code = $values['error_code'];
        else
        {
            $this->error_code = '';
        }
        if (array_key_exists('error_description', $values)) $this->error_description = $values['error_description'];
        else
        {
            $this->error_description = '';
        }
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvGetSpineState_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsSrvGetSpineState_Response', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/Halt_Request. */
final class Ros2Franka_spine_msgsSrvHalt_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvHalt_Request',
        'native_type' => 'franka_spine_msgs/srv/Halt_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvHalt_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_spine_msgsSrvHalt_Request',
            $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/Halt_Response. */
final class Ros2Franka_spine_msgsSrvHalt_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvHalt_Response',
        'native_type' => 'franka_spine_msgs/srv/Halt_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77',
        'minimum' => 9,
        'maximum' => 521,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
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
                'element_minimum' => 4,
            ],
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
                'element_minimum' => 1,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $state;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $message;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('state', $values)) $this->state = $values['state'];
        else
        {
            $this->state = '';
        }
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('message', $values)) $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvHalt_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_spine_msgsSrvHalt_Response',
            $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Request. */
final class Ros2Franka_spine_msgsSrvSwitchOff_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvSwitchOff_Request',
        'native_type' => 'franka_spine_msgs/srv/SwitchOff_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvSwitchOff_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_spine_msgsSrvSwitchOff_Request',
            $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Response. */
final class Ros2Franka_spine_msgsSrvSwitchOff_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvSwitchOff_Response',
        'native_type' => 'franka_spine_msgs/srv/SwitchOff_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad',
        'minimum' => 9,
        'maximum' => 521,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
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
                'element_minimum' => 4,
            ],
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
                'element_minimum' => 1,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $state;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $message;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('state', $values)) $this->state = $values['state'];
        else
        {
            $this->state = '';
        }
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('message', $values)) $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvSwitchOff_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return
            Catalog::wire()->decode('Ros2Franka_spine_msgsSrvSwitchOff_Response', $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Request. */
final class Ros2Franka_spine_msgsSrvSwitchOn_Request
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvSwitchOn_Request',
        'native_type' => 'franka_spine_msgs/srv/SwitchOn_Request',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56',
        'minimum' => 0,
        'maximum' => 0,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
        ],
    ];
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvSwitchOn_Request', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_spine_msgsSrvSwitchOn_Request',
            $bytes); }
}
/** @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Response. */
final class Ros2Franka_spine_msgsSrvSwitchOn_Response
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Franka_spine_msgsSrvSwitchOn_Response',
        'native_type' => 'franka_spine_msgs/srv/SwitchOn_Response',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d',
        'minimum' => 9,
        'maximum' => 521,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
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
                'element_minimum' => 4,
            ],
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
                'element_minimum' => 1,
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
                'element_minimum' => 4,
            ],
        ],
    ];
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $state;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $success;
    /** @brief Original string field; shape scalar and quota 0. */
    public mixed $message;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('state', $values)) $this->state = $values['state'];
        else
        {
            $this->state = '';
        }
        if (array_key_exists('success', $values)) $this->success = $values['success'];
        else
        {
            $this->success = false;
        }
        if (array_key_exists('message', $values)) $this->message = $values['message'];
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Franka_spine_msgsSrvSwitchOn_Response', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Franka_spine_msgsSrvSwitchOn_Response',
            $bytes); }
}
/** @brief Share one pure codec registry for this exact selected release. */
final class Catalog
{
    /** @brief Return the retained strict common wire registry. @return Wire No native resource. */
    public static function wire(): Wire
    {
        static $wire = null;
        if ($wire === null) $wire = new Wire([
            'Ros2Builtin_interfacesMsgTime' => Ros2Builtin_interfacesMsgTime::SCHEMA + ['class' =>
            'Ros2Builtin_interfacesMsgTime::class],
            'Ros2Franka_msgsActionErrorRecovery_Goal' => Ros2Franka_msgsActionErrorRecovery_Goal::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionErrorRecovery_Goal::class],
            'Ros2Franka_msgsActionErrorRecovery_Result' => Ros2Franka_msgsActionErrorRecovery_Result::SCHEMA + ['class'
            '=> Ros2Franka_msgsActionErrorRecovery_Result::class],
            'Ros2Franka_msgsActionErrorRecovery_Feedback' => Ros2Franka_msgsActionErrorRecovery_Feedback::SCHEMA +
            '['class' => Ros2Franka_msgsActionErrorRecovery_Feedback::class],
            'Ros2Franka_msgsMsgGraspEpsilon' => Ros2Franka_msgsMsgGraspEpsilon::SCHEMA + ['class' =>
            'Ros2Franka_msgsMsgGraspEpsilon::class],
            'Ros2Franka_msgsActionGrasp_Goal' => Ros2Franka_msgsActionGrasp_Goal::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionGrasp_Goal::class],
            'Ros2Franka_msgsActionGrasp_Result' => Ros2Franka_msgsActionGrasp_Result::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionGrasp_Result::class],
            'Ros2Franka_msgsActionGrasp_Feedback' => Ros2Franka_msgsActionGrasp_Feedback::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionGrasp_Feedback::class],
            'Ros2Franka_msgsActionHoming_Goal' => Ros2Franka_msgsActionHoming_Goal::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionHoming_Goal::class],
            'Ros2Franka_msgsActionHoming_Result' => Ros2Franka_msgsActionHoming_Result::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionHoming_Result::class],
            'Ros2Franka_msgsActionHoming_Feedback' => Ros2Franka_msgsActionHoming_Feedback::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionHoming_Feedback::class],
            'Ros2Franka_msgsActionMove_Goal' => Ros2Franka_msgsActionMove_Goal::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionMove_Goal::class],
            'Ros2Franka_msgsActionMove_Result' => Ros2Franka_msgsActionMove_Result::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionMove_Result::class],
            'Ros2Franka_msgsActionMove_Feedback' => Ros2Franka_msgsActionMove_Feedback::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionMove_Feedback::class],
            'Ros2Franka_msgsActionPTPMotion_Goal' => Ros2Franka_msgsActionPTPMotion_Goal::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionPTPMotion_Goal::class],
            'Ros2Franka_msgsMsgTargetStatus' => Ros2Franka_msgsMsgTargetStatus::SCHEMA + ['class' =>
            'Ros2Franka_msgsMsgTargetStatus::class],
            'Ros2Franka_msgsActionPTPMotion_Result' => Ros2Franka_msgsActionPTPMotion_Result::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionPTPMotion_Result::class],
            'Ros2Franka_msgsActionPTPMotion_Feedback' => Ros2Franka_msgsActionPTPMotion_Feedback::SCHEMA + ['class' =>
            'Ros2Franka_msgsActionPTPMotion_Feedback::class],
            'Ros2Geometry_msgsMsgVector3' => Ros2Geometry_msgsMsgVector3::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgVector3::class],
            'Ros2Franka_msgsMsgCollisionIndicators' => Ros2Franka_msgsMsgCollisionIndicators::SCHEMA + ['class' =>
            'Ros2Franka_msgsMsgCollisionIndicators::class],
            'Ros2Franka_msgsMsgElbow' => Ros2Franka_msgsMsgElbow::SCHEMA + ['class' => Ros2Franka_msgsMsgElbow::class],
            'Ros2Franka_msgsMsgErrors' => Ros2Franka_msgsMsgErrors::SCHEMA + ['class' =>
            'Ros2Franka_msgsMsgErrors::class],
            'Ros2Std_msgsMsgHeader' => Ros2Std_msgsMsgHeader::SCHEMA + ['class' => Ros2Std_msgsMsgHeader::class],
            'Ros2Sensor_msgsMsgJointState' => Ros2Sensor_msgsMsgJointState::SCHEMA + ['class' =>
            'Ros2Sensor_msgsMsgJointState::class],
            'Ros2Geometry_msgsMsgWrench' => Ros2Geometry_msgsMsgWrench::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgWrench::class],
            'Ros2Geometry_msgsMsgWrenchStamped' => Ros2Geometry_msgsMsgWrenchStamped::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgWrenchStamped::class],
            'Ros2Geometry_msgsMsgInertia' => Ros2Geometry_msgsMsgInertia::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgInertia::class],
            'Ros2Geometry_msgsMsgInertiaStamped' => Ros2Geometry_msgsMsgInertiaStamped::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgInertiaStamped::class],
            'Ros2Geometry_msgsMsgPoint' => Ros2Geometry_msgsMsgPoint::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgPoint::class],
            'Ros2Geometry_msgsMsgQuaternion' => Ros2Geometry_msgsMsgQuaternion::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgQuaternion::class],
            'Ros2Geometry_msgsMsgPose' => Ros2Geometry_msgsMsgPose::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgPose::class],
            'Ros2Geometry_msgsMsgPoseStamped' => Ros2Geometry_msgsMsgPoseStamped::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgPoseStamped::class],
            'Ros2Geometry_msgsMsgTwist' => Ros2Geometry_msgsMsgTwist::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgTwist::class],
            'Ros2Geometry_msgsMsgTwistStamped' => Ros2Geometry_msgsMsgTwistStamped::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgTwistStamped::class],
            'Ros2Geometry_msgsMsgAccel' => Ros2Geometry_msgsMsgAccel::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgAccel::class],
            'Ros2Geometry_msgsMsgAccelStamped' => Ros2Geometry_msgsMsgAccelStamped::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgAccelStamped::class],
            'Ros2Geometry_msgsMsgVector3Stamped' => Ros2Geometry_msgsMsgVector3Stamped::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgVector3Stamped::class],
            'Ros2Franka_msgsMsgFrankaRobotState' => Ros2Franka_msgsMsgFrankaRobotState::SCHEMA + ['class' =>
            'Ros2Franka_msgsMsgFrankaRobotState::class],
            'Ros2Franka_msgsSrvSetCartesianStiffness_Request' => Ros2Franka_msgsSrvSetCartesianStiffness_Request::SCHEMA
            '+ ['class' => Ros2Franka_msgsSrvSetCartesianStiffness_Request::class],
            'Ros2Franka_msgsSrvSetCartesianStiffness_Response' =>
            'Ros2Franka_msgsSrvSetCartesianStiffness_Response::SCHEMA + ['class' =>
            'Ros2Franka_msgsSrvSetCartesianStiffness_Response::class],
            'Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request' =>
            'Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request::SCHEMA + ['class' =>
            'Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request::class],
            'Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response' =>
            'Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response::SCHEMA + ['class' =>
            'Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response::class],
            'Ros2Franka_msgsSrvSetFullCollisionBehavior_Request' =>
            'Ros2Franka_msgsSrvSetFullCollisionBehavior_Request::SCHEMA + ['class' =>
            'Ros2Franka_msgsSrvSetFullCollisionBehavior_Request::class],
            'Ros2Franka_msgsSrvSetFullCollisionBehavior_Response' =>
            'Ros2Franka_msgsSrvSetFullCollisionBehavior_Response::SCHEMA + ['class' =>
            'Ros2Franka_msgsSrvSetFullCollisionBehavior_Response::class],
            'Ros2Franka_msgsSrvSetJointStiffness_Request' => Ros2Franka_msgsSrvSetJointStiffness_Request::SCHEMA +
            '['class' => Ros2Franka_msgsSrvSetJointStiffness_Request::class],
            'Ros2Franka_msgsSrvSetJointStiffness_Response' => Ros2Franka_msgsSrvSetJointStiffness_Response::SCHEMA +
            '['class' => Ros2Franka_msgsSrvSetJointStiffness_Response::class],
            'Ros2Franka_msgsSrvSetLoad_Request' => Ros2Franka_msgsSrvSetLoad_Request::SCHEMA + ['class' =>
            'Ros2Franka_msgsSrvSetLoad_Request::class],
            'Ros2Franka_msgsSrvSetLoad_Response' => Ros2Franka_msgsSrvSetLoad_Response::SCHEMA + ['class' =>
            'Ros2Franka_msgsSrvSetLoad_Response::class],
            'Ros2Franka_msgsSrvSetStiffnessFrame_Request' => Ros2Franka_msgsSrvSetStiffnessFrame_Request::SCHEMA +
            '['class' => Ros2Franka_msgsSrvSetStiffnessFrame_Request::class],
            'Ros2Franka_msgsSrvSetStiffnessFrame_Response' => Ros2Franka_msgsSrvSetStiffnessFrame_Response::SCHEMA +
            '['class' => Ros2Franka_msgsSrvSetStiffnessFrame_Response::class],
            'Ros2Franka_msgsSrvSetTCPFrame_Request' => Ros2Franka_msgsSrvSetTCPFrame_Request::SCHEMA + ['class' =>
            'Ros2Franka_msgsSrvSetTCPFrame_Request::class],
            'Ros2Franka_msgsSrvSetTCPFrame_Response' => Ros2Franka_msgsSrvSetTCPFrame_Response::SCHEMA + ['class' =>
            'Ros2Franka_msgsSrvSetTCPFrame_Response::class],
            'Ros2Franka_spine_msgsActionMoveAbsolute_Goal' => Ros2Franka_spine_msgsActionMoveAbsolute_Goal::SCHEMA +
            '['class' => Ros2Franka_spine_msgsActionMoveAbsolute_Goal::class],
            'Ros2Franka_spine_msgsActionMoveAbsolute_Result' => Ros2Franka_spine_msgsActionMoveAbsolute_Result::SCHEMA +
            '['class' => Ros2Franka_spine_msgsActionMoveAbsolute_Result::class],
            'Ros2Franka_spine_msgsActionMoveAbsolute_Feedback' =>
            'Ros2Franka_spine_msgsActionMoveAbsolute_Feedback::SCHEMA + ['class' =>
            'Ros2Franka_spine_msgsActionMoveAbsolute_Feedback::class],
            'Ros2Franka_spine_msgsMsgUserLimits' => Ros2Franka_spine_msgsMsgUserLimits::SCHEMA + ['class' =>
            'Ros2Franka_spine_msgsMsgUserLimits::class],
            'Ros2Franka_spine_msgsMsgSpineParameters' => Ros2Franka_spine_msgsMsgSpineParameters::SCHEMA + ['class' =>
            'Ros2Franka_spine_msgsMsgSpineParameters::class],
            'Ros2Franka_spine_msgsMsgSpinePosition' => Ros2Franka_spine_msgsMsgSpinePosition::SCHEMA + ['class' =>
            'Ros2Franka_spine_msgsMsgSpinePosition::class],
            'Ros2Franka_spine_msgsMsgSpineState' => Ros2Franka_spine_msgsMsgSpineState::SCHEMA + ['class' =>
            'Ros2Franka_spine_msgsMsgSpineState::class],
            'Ros2Franka_spine_msgsSrvFaultReset_Request' => Ros2Franka_spine_msgsSrvFaultReset_Request::SCHEMA +
            '['class' => Ros2Franka_spine_msgsSrvFaultReset_Request::class],
            'Ros2Franka_spine_msgsSrvFaultReset_Response' => Ros2Franka_spine_msgsSrvFaultReset_Response::SCHEMA +
            '['class' => Ros2Franka_spine_msgsSrvFaultReset_Response::class],
            'Ros2Franka_spine_msgsSrvGetParameters_Request' => Ros2Franka_spine_msgsSrvGetParameters_Request::SCHEMA +
            '['class' => Ros2Franka_spine_msgsSrvGetParameters_Request::class],
            'Ros2Franka_spine_msgsSrvGetParameters_Response' => Ros2Franka_spine_msgsSrvGetParameters_Response::SCHEMA +
            '['class' => Ros2Franka_spine_msgsSrvGetParameters_Response::class],
            'Ros2Franka_spine_msgsSrvGetPosition_Request' => Ros2Franka_spine_msgsSrvGetPosition_Request::SCHEMA +
            '['class' => Ros2Franka_spine_msgsSrvGetPosition_Request::class],
            'Ros2Franka_spine_msgsSrvGetPosition_Response' => Ros2Franka_spine_msgsSrvGetPosition_Response::SCHEMA +
            '['class' => Ros2Franka_spine_msgsSrvGetPosition_Response::class],
            'Ros2Franka_spine_msgsSrvGetSpineState_Request' => Ros2Franka_spine_msgsSrvGetSpineState_Request::SCHEMA +
            '['class' => Ros2Franka_spine_msgsSrvGetSpineState_Request::class],
            'Ros2Franka_spine_msgsSrvGetSpineState_Response' => Ros2Franka_spine_msgsSrvGetSpineState_Response::SCHEMA +
            '['class' => Ros2Franka_spine_msgsSrvGetSpineState_Response::class],
            'Ros2Franka_spine_msgsSrvHalt_Request' => Ros2Franka_spine_msgsSrvHalt_Request::SCHEMA + ['class' =>
            'Ros2Franka_spine_msgsSrvHalt_Request::class],
            'Ros2Franka_spine_msgsSrvHalt_Response' => Ros2Franka_spine_msgsSrvHalt_Response::SCHEMA + ['class' =>
            'Ros2Franka_spine_msgsSrvHalt_Response::class],
            'Ros2Franka_spine_msgsSrvSwitchOff_Request' => Ros2Franka_spine_msgsSrvSwitchOff_Request::SCHEMA + ['class'
            '=> Ros2Franka_spine_msgsSrvSwitchOff_Request::class],
            'Ros2Franka_spine_msgsSrvSwitchOff_Response' => Ros2Franka_spine_msgsSrvSwitchOff_Response::SCHEMA +
            '['class' => Ros2Franka_spine_msgsSrvSwitchOff_Response::class],
            'Ros2Franka_spine_msgsSrvSwitchOn_Request' => Ros2Franka_spine_msgsSrvSwitchOn_Request::SCHEMA + ['class' =>
            'Ros2Franka_spine_msgsSrvSwitchOn_Request::class],
            'Ros2Franka_spine_msgsSrvSwitchOn_Response' => Ros2Franka_spine_msgsSrvSwitchOn_Response::SCHEMA + ['class'
            '=> Ros2Franka_spine_msgsSrvSwitchOn_Response::class],
        ]);
        return $wire;
    }
}
