<?php
declare(strict_types=1);
namespace Uwvm\Flexiv\Ros2JazzyV2;

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
/** @brief Own every original field of flexiv_msgs/action/Grasp_Goal. */
final class Ros2Flexiv_msgsActionGrasp_Goal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsActionGrasp_Goal',
        'native_type' => 'flexiv_msgs/action/Grasp_Goal',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce',
        'minimum' => 8,
        'maximum' => 8,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
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
    public mixed $force;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('force', $values)) $this->force = $values['force'];
        else
        {
            $this->force = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsActionGrasp_Goal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsActionGrasp_Goal', $bytes);
            }
}
/** @brief Own every original field of flexiv_msgs/action/Grasp_Result. */
final class Ros2Flexiv_msgsActionGrasp_Result
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsActionGrasp_Result',
        'native_type' => 'flexiv_msgs/action/Grasp_Result',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a',
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
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsActionGrasp_Result', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsActionGrasp_Result',
            $bytes); }
}
/** @brief Own every original field of flexiv_msgs/action/Grasp_Feedback. */
final class Ros2Flexiv_msgsActionGrasp_Feedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsActionGrasp_Feedback',
        'native_type' => 'flexiv_msgs/action/Grasp_Feedback',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05',
        'minimum' => 17,
        'maximum' => 17,
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
            [
                'name' => 'current_force',
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
                'name' => 'moving',
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
    public mixed $current_width;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $current_force;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $moving;
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
        if (array_key_exists('current_force', $values)) $this->current_force = $values['current_force'];
        else
        {
            $this->current_force = 0.0;
        }
        if (array_key_exists('moving', $values)) $this->moving = $values['moving'];
        else
        {
            $this->moving = false;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsActionGrasp_Feedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsActionGrasp_Feedback',
            $bytes); }
}
/** @brief Own every original field of flexiv_msgs/action/Move_Goal. */
final class Ros2Flexiv_msgsActionMove_Goal
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsActionMove_Goal',
        'native_type' => 'flexiv_msgs/action/Move_Goal',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2',
        'minimum' => 24,
        'maximum' => 24,
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
                'name' => 'max_force',
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
    public mixed $velocity;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $max_force;
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
        if (array_key_exists('velocity', $values)) $this->velocity = $values['velocity'];
        else
        {
            $this->velocity = 0.0;
        }
        if (array_key_exists('max_force', $values)) $this->max_force = $values['max_force'];
        else
        {
            $this->max_force = 0.0;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsActionMove_Goal', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsActionMove_Goal', $bytes); }
}
/** @brief Own every original field of flexiv_msgs/action/Move_Result. */
final class Ros2Flexiv_msgsActionMove_Result
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsActionMove_Result',
        'native_type' => 'flexiv_msgs/action/Move_Result',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d',
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
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsActionMove_Result', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsActionMove_Result', $bytes);
            }
}
/** @brief Own every original field of flexiv_msgs/action/Move_Feedback. */
final class Ros2Flexiv_msgsActionMove_Feedback
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsActionMove_Feedback',
        'native_type' => 'flexiv_msgs/action/Move_Feedback',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38',
        'minimum' => 17,
        'maximum' => 17,
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
            [
                'name' => 'current_force',
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
                'name' => 'moving',
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
    public mixed $current_width;
    /** @brief Original float64 field; shape scalar and quota 0. */
    public mixed $current_force;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $moving;
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
        if (array_key_exists('current_force', $values)) $this->current_force = $values['current_force'];
        else
        {
            $this->current_force = 0.0;
        }
        if (array_key_exists('moving', $values)) $this->moving = $values['moving'];
        else
        {
            $this->moving = false;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsActionMove_Feedback', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsActionMove_Feedback',
            $bytes); }
}
/** @brief Own every original field of flexiv_msgs/msg/Digital. */
final class Ros2Flexiv_msgsMsgDigital
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsMsgDigital',
        'native_type' => 'flexiv_msgs/msg/Digital',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf',
        'minimum' => 2,
        'maximum' => 2,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'pin',
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
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original uint8 field; shape scalar and quota 0. */
    public mixed $pin;
    /** @brief Original bool field; shape scalar and quota 0. */
    public mixed $state;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('pin', $values)) $this->pin = $values['pin'];
        else
        {
            $this->pin = 0;
        }
        if (array_key_exists('state', $values)) $this->state = $values['state'];
        else
        {
            $this->state = false;
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsMsgDigital', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsMsgDigital', $bytes); }
}
/** @brief Own every original field of flexiv_msgs/msg/GPIOStates. */
final class Ros2Flexiv_msgsMsgGPIOStates
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsMsgGPIOStates',
        'native_type' => 'flexiv_msgs/msg/GPIOStates',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14',
        'minimum' => 4,
        'maximum' => 68,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'states',
                'type' => 'Ros2Flexiv_msgsMsgDigital',
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
                'element_minimum' => 2,
            ],
        ],
    ];
    /** @brief Original Ros2Flexiv_msgsMsgDigital field; shape sequence and quota 32. */
    public mixed $states;
    /** @brief Construct independent complete defaults. @param array $values Exact original field names. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) throw new
                \InvalidArgumentException('unknown field');
        if (array_key_exists('states', $values)) $this->states = $values['states'];
        else
        {
            $this->states = [];
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsMsgGPIOStates', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsMsgGPIOStates', $bytes); }
}
/** @brief Own every original field of flexiv_msgs/msg/JointPosVel. */
final class Ros2Flexiv_msgsMsgJointPosVel
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsMsgJointPosVel',
        'native_type' => 'flexiv_msgs/msg/JointPosVel',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca',
        'minimum' => 8,
        'maximum' => 520,
        'semantics' => '',
        'constants' => [
        ],
        'fields' => [
            [
                'name' => 'positions',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'velocities',
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
                'element_minimum' => 8,
            ],
        ],
    ];
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $positions;
    /** @brief Original float64 field; shape sequence and quota 32. */
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
        }
        if (array_key_exists('velocities', $values)) $this->velocities = $values['velocities'];
        else
        {
            $this->velocities = [];
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsMsgJointPosVel', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsMsgJointPosVel', $bytes); }
}
/** @brief Own every original field of flexiv_msgs/msg/Mode. */
final class Ros2Flexiv_msgsMsgMode
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsMsgMode',
        'native_type' => 'flexiv_msgs/msg/Mode',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6',
        'minimum' => 1,
        'maximum' => 1,
        'semantics' => '',
        'constants' => [
            'MODE_UNKNOWN' => -1,
            'MODE_IDLE' => 0,
            'MODE_RT_JOINT_TORQUE' => 1,
            'MODE_RT_JOINT_IMPEDANCE' => 2,
            'MODE_NRT_JOINT_IMPEDANCE' => 3,
            'MODE_RT_JOINT_POSITION' => 4,
            'MODE_NRT_JOINT_POSITION' => 5,
            'MODE_NRT_PLAN_EXECUTION' => 6,
            'MODE_NRT_PRIMITIVE_EXECUTION' => 7,
            'MODE_RT_CARTESIAN_MOTION_FORCE' => 8,
            'MODE_NRT_CARTESIAN_MOTION_FORCE' => 9,
            'MODE_NRT_SUPER_PRIMITIVE' => 10,
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
    public const MODE_RT_JOINT_IMPEDANCE = 2;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_JOINT_IMPEDANCE = 3;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_RT_JOINT_POSITION = 4;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_JOINT_POSITION = 5;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_PLAN_EXECUTION = 6;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_PRIMITIVE_EXECUTION = 7;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_RT_CARTESIAN_MOTION_FORCE = 8;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_CARTESIAN_MOTION_FORCE = 9;
    /** @brief Preserve the exact original declared constant. */
    public const MODE_NRT_SUPER_PRIMITIVE = 10;
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
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsMsgMode', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsMsgMode', $bytes); }
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
        'codec_identity' => 'UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b',
        'minimum' => 12,
        'maximum' => 268,
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
        'codec_identity' => 'UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad',
        'minimum' => 68,
        'maximum' => 324,
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
        'codec_identity' => 'UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308',
        'minimum' => 60,
        'maximum' => 316,
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
        'codec_identity' => 'UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177',
        'minimum' => 60,
        'maximum' => 316,
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
/** @brief Own every original field of flexiv_msgs/msg/RobotStates. */
final class Ros2Flexiv_msgsMsgRobotStates
{
    /** @brief Exact original fields, shape, constants, and byte bounds. */
    public const SCHEMA = [
        'symbol' => 'Ros2Flexiv_msgsMsgRobotStates',
        'native_type' => 'flexiv_msgs/msg/RobotStates',
        'ros_version' => 2,
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a',
        'minimum' => 552,
        'maximum' => 5160,
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
                'name' => 'robot_timestamp',
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
                'name' => 'q',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'theta',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'dq',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'dtheta',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tau',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tau_dot',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tau_ext',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tau_interact',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'temperature',
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
                'element_minimum' => 8,
            ],
            [
                'name' => 'tcp_pose',
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
                'name' => 'tcp_twist',
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
                'name' => 'flange_pose',
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
                'name' => 'raw_ft_sensor',
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
                'name' => 'tcp_wrench_local',
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
                'name' => 'tcp_wrench',
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
                'name' => 'raw_tcp_wrench_local',
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
                'name' => 'raw_tcp_wrench',
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
        ],
    ];
    /** @brief Original Ros2Std_msgsMsgHeader field; shape scalar and quota 0. */
    public mixed $header;
    /** @brief Original Ros2Builtin_interfacesMsgTime field; shape scalar and quota 0. */
    public mixed $robot_timestamp;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $q;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $theta;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $dq;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $dtheta;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $tau;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $tau_dot;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $tau_ext;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $tau_interact;
    /** @brief Original float64 field; shape sequence and quota 32. */
    public mixed $temperature;
    /** @brief Original Ros2Geometry_msgsMsgPoseStamped field; shape scalar and quota 0. */
    public mixed $tcp_pose;
    /** @brief Original Ros2Geometry_msgsMsgTwistStamped field; shape scalar and quota 0. */
    public mixed $tcp_twist;
    /** @brief Original Ros2Geometry_msgsMsgPoseStamped field; shape scalar and quota 0. */
    public mixed $flange_pose;
    /** @brief Original Ros2Geometry_msgsMsgWrenchStamped field; shape scalar and quota 0. */
    public mixed $raw_ft_sensor;
    /** @brief Original Ros2Geometry_msgsMsgWrenchStamped field; shape scalar and quota 0. */
    public mixed $tcp_wrench_local;
    /** @brief Original Ros2Geometry_msgsMsgWrenchStamped field; shape scalar and quota 0. */
    public mixed $tcp_wrench;
    /** @brief Original Ros2Geometry_msgsMsgWrenchStamped field; shape scalar and quota 0. */
    public mixed $raw_tcp_wrench_local;
    /** @brief Original Ros2Geometry_msgsMsgWrenchStamped field; shape scalar and quota 0. */
    public mixed $raw_tcp_wrench;
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
        if (array_key_exists('robot_timestamp', $values)) $this->robot_timestamp = $values['robot_timestamp'];
        else
        {
            $this->robot_timestamp = new Ros2Builtin_interfacesMsgTime();
        }
        if (array_key_exists('q', $values)) $this->q = $values['q'];
        else
        {
            $this->q = [];
        }
        if (array_key_exists('theta', $values)) $this->theta = $values['theta'];
        else
        {
            $this->theta = [];
        }
        if (array_key_exists('dq', $values)) $this->dq = $values['dq'];
        else
        {
            $this->dq = [];
        }
        if (array_key_exists('dtheta', $values)) $this->dtheta = $values['dtheta'];
        else
        {
            $this->dtheta = [];
        }
        if (array_key_exists('tau', $values)) $this->tau = $values['tau'];
        else
        {
            $this->tau = [];
        }
        if (array_key_exists('tau_dot', $values)) $this->tau_dot = $values['tau_dot'];
        else
        {
            $this->tau_dot = [];
        }
        if (array_key_exists('tau_ext', $values)) $this->tau_ext = $values['tau_ext'];
        else
        {
            $this->tau_ext = [];
        }
        if (array_key_exists('tau_interact', $values)) $this->tau_interact = $values['tau_interact'];
        else
        {
            $this->tau_interact = [];
        }
        if (array_key_exists('temperature', $values)) $this->temperature = $values['temperature'];
        else
        {
            $this->temperature = [];
        }
        if (array_key_exists('tcp_pose', $values)) $this->tcp_pose = $values['tcp_pose'];
        else
        {
            $this->tcp_pose = new Ros2Geometry_msgsMsgPoseStamped();
        }
        if (array_key_exists('tcp_twist', $values)) $this->tcp_twist = $values['tcp_twist'];
        else
        {
            $this->tcp_twist = new Ros2Geometry_msgsMsgTwistStamped();
        }
        if (array_key_exists('flange_pose', $values)) $this->flange_pose = $values['flange_pose'];
        else
        {
            $this->flange_pose = new Ros2Geometry_msgsMsgPoseStamped();
        }
        if (array_key_exists('raw_ft_sensor', $values)) $this->raw_ft_sensor = $values['raw_ft_sensor'];
        else
        {
            $this->raw_ft_sensor = new Ros2Geometry_msgsMsgWrenchStamped();
        }
        if (array_key_exists('tcp_wrench_local', $values)) $this->tcp_wrench_local = $values['tcp_wrench_local'];
        else
        {
            $this->tcp_wrench_local = new Ros2Geometry_msgsMsgWrenchStamped();
        }
        if (array_key_exists('tcp_wrench', $values)) $this->tcp_wrench = $values['tcp_wrench'];
        else
        {
            $this->tcp_wrench = new Ros2Geometry_msgsMsgWrenchStamped();
        }
        if (array_key_exists('raw_tcp_wrench_local', $values)) $this->raw_tcp_wrench_local = $values['raw_tcp_wrench_local'];
        else
        {
            $this->raw_tcp_wrench_local = new Ros2Geometry_msgsMsgWrenchStamped();
        }
        if (array_key_exists('raw_tcp_wrench', $values)) $this->raw_tcp_wrench = $values['raw_tcp_wrench'];
        else
        {
            $this->raw_tcp_wrench = new Ros2Geometry_msgsMsgWrenchStamped();
        }
    }
    /** @brief Encode the complete value transactionally. @return string Owned canonical bytes. */
    public function encode(): string { return Catalog::wire()->encode('Ros2Flexiv_msgsMsgRobotStates', $this); }
    /** @brief Decode exact whole input. @param string $bytes Complete immutable bytes. @return self New complete value. */
    public static function decode(string $bytes): self { return Catalog::wire()->decode('Ros2Flexiv_msgsMsgRobotStates', $bytes); }
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
            'Ros2Flexiv_msgsActionGrasp_Goal' => Ros2Flexiv_msgsActionGrasp_Goal::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsActionGrasp_Goal::class],
            'Ros2Flexiv_msgsActionGrasp_Result' => Ros2Flexiv_msgsActionGrasp_Result::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsActionGrasp_Result::class],
            'Ros2Flexiv_msgsActionGrasp_Feedback' => Ros2Flexiv_msgsActionGrasp_Feedback::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsActionGrasp_Feedback::class],
            'Ros2Flexiv_msgsActionMove_Goal' => Ros2Flexiv_msgsActionMove_Goal::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsActionMove_Goal::class],
            'Ros2Flexiv_msgsActionMove_Result' => Ros2Flexiv_msgsActionMove_Result::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsActionMove_Result::class],
            'Ros2Flexiv_msgsActionMove_Feedback' => Ros2Flexiv_msgsActionMove_Feedback::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsActionMove_Feedback::class],
            'Ros2Flexiv_msgsMsgDigital' => Ros2Flexiv_msgsMsgDigital::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsMsgDigital::class],
            'Ros2Flexiv_msgsMsgGPIOStates' => Ros2Flexiv_msgsMsgGPIOStates::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsMsgGPIOStates::class],
            'Ros2Flexiv_msgsMsgJointPosVel' => Ros2Flexiv_msgsMsgJointPosVel::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsMsgJointPosVel::class],
            'Ros2Flexiv_msgsMsgMode' => Ros2Flexiv_msgsMsgMode::SCHEMA + ['class' => Ros2Flexiv_msgsMsgMode::class],
            'Ros2Std_msgsMsgHeader' => Ros2Std_msgsMsgHeader::SCHEMA + ['class' => Ros2Std_msgsMsgHeader::class],
            'Ros2Geometry_msgsMsgPoint' => Ros2Geometry_msgsMsgPoint::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgPoint::class],
            'Ros2Geometry_msgsMsgQuaternion' => Ros2Geometry_msgsMsgQuaternion::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgQuaternion::class],
            'Ros2Geometry_msgsMsgPose' => Ros2Geometry_msgsMsgPose::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgPose::class],
            'Ros2Geometry_msgsMsgPoseStamped' => Ros2Geometry_msgsMsgPoseStamped::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgPoseStamped::class],
            'Ros2Geometry_msgsMsgVector3' => Ros2Geometry_msgsMsgVector3::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgVector3::class],
            'Ros2Geometry_msgsMsgTwist' => Ros2Geometry_msgsMsgTwist::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgTwist::class],
            'Ros2Geometry_msgsMsgTwistStamped' => Ros2Geometry_msgsMsgTwistStamped::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgTwistStamped::class],
            'Ros2Geometry_msgsMsgWrench' => Ros2Geometry_msgsMsgWrench::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgWrench::class],
            'Ros2Geometry_msgsMsgWrenchStamped' => Ros2Geometry_msgsMsgWrenchStamped::SCHEMA + ['class' =>
            'Ros2Geometry_msgsMsgWrenchStamped::class],
            'Ros2Flexiv_msgsMsgRobotStates' => Ros2Flexiv_msgsMsgRobotStates::SCHEMA + ['class' =>
            'Ros2Flexiv_msgsMsgRobotStates::class],
        ]);
        return $wire;
    }
}
