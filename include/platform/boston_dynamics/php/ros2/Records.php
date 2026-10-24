<?php
declare(strict_types=1);
namespace Uwvm\Boston_dynamics\Ros2;
use Uwvm\RosWasm\Word;
use Uwvm\RosWasm\Wire;
/** @file Records.php
 * @brief Complete original boston_dynamics owning classes using the shared PHP codec.
 * @details Full-width words remain exact on PHP32 and PHP64; no native registration is inferred. */
/** @brief Own every original uwvm_spot_bridge/srv/State_Request field. */
final class Ros2Uwvm_spot_bridgeSrvState_Request
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvState_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_9becf278bc168ed6d5b15fe7f1ec35b83e274de8a5173cb2335948306bc7a47e',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/State_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'budget_ns',
                'type' => 'uint64',
                'array' => '',
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
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original budget_ns: uint64; scalar. */
    public mixed $budget_ns;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->budget_ns = array_key_exists('budget_ns', $values) ? $values['budget_ns'] : Word::fromDecimal('0', 8, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvState_Request', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvState_Request', $bytes);
    }
}
/** @brief Own every original uwvm_spot_bridge/srv/State_Response field. */
final class Ros2Uwvm_spot_bridgeSrvState_Response
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvState_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ab07340e952c2ff63f35dad37e9d4837a280eee9ce477ac5be4a05f82408ce0a',
        'minimum' => 57,
        'maximum' => 21433,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/State_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'error',
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
                'name' => 'unknown',
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
                'name' => 'acquisition_sec',
                'type' => 'int64',
                'array' => '',
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
                'name' => 'acquisition_nsec',
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
                'name' => 'joint_names',
                'type' => 'string',
                'array' => 'sequence',
                'count' => 32,
                'string_bound' => 128,
                'native_string_bound' => 128,
                'native_sequence_bound' => 32,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 4,
            ],
            [
                'name' => 'joint_position',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 32,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 32,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'joint_velocity',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 32,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 32,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'joint_load',
                'type' => 'float64',
                'array' => 'sequence',
                'count' => 32,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 32,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 8,
            ],
            [
                'name' => 'motor_power_state',
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
                'name' => 'native_proto',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 16384,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 16384,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original error: uint32; scalar. */
    public mixed $error;
    /** @brief Original unknown: bool; scalar. */
    public mixed $unknown;
    /** @brief Original acquisition_sec: int64; scalar. */
    public mixed $acquisition_sec;
    /** @brief Original acquisition_nsec: uint32; scalar. */
    public mixed $acquisition_nsec;
    /** @brief Original joint_names: string; sequence. */
    public mixed $joint_names;
    /** @brief Original joint_position: float64; sequence. */
    public mixed $joint_position;
    /** @brief Original joint_velocity: float64; sequence. */
    public mixed $joint_velocity;
    /** @brief Original joint_load: float64; sequence. */
    public mixed $joint_load;
    /** @brief Original motor_power_state: uint32; scalar. */
    public mixed $motor_power_state;
    /** @brief Original native_proto: uint8; sequence. */
    public mixed $native_proto;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->error = array_key_exists('error', $values) ? $values['error'] : Word::fromDecimal('0', 4, false);
        $this->unknown = array_key_exists('unknown', $values) ? $values['unknown'] : false;
        $this->acquisition_sec = array_key_exists('acquisition_sec', $values) ? $values['acquisition_sec'] : Word::fromDecimal('0', 8, true);
        $this->acquisition_nsec = array_key_exists('acquisition_nsec', $values) ? $values['acquisition_nsec'] : Word::fromDecimal('0', 4, false);
        $this->joint_names = array_key_exists('joint_names', $values) ? $values['joint_names'] : [];
        $this->joint_position = array_key_exists('joint_position', $values) ? $values['joint_position'] : [];
        $this->joint_velocity = array_key_exists('joint_velocity', $values) ? $values['joint_velocity'] : [];
        $this->joint_load = array_key_exists('joint_load', $values) ? $values['joint_load'] : [];
        $this->motor_power_state = array_key_exists('motor_power_state', $values) ? $values['motor_power_state'] : Word::fromDecimal('0', 4, false);
        $this->native_proto = array_key_exists('native_proto', $values) ? $values['native_proto'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvState_Response', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvState_Response', $bytes);
    }
}
/** @brief Own every original uwvm_spot_bridge/srv/Lease_Request field. */
final class Ros2Uwvm_spot_bridgeSrvLease_Request
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvLease_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_a9aacd78dc6ae9d18fb6bb0d185797c6463c882edadf251eb5c21e3aa3c538a1',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/Lease_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'budget_ns',
                'type' => 'uint64',
                'array' => '',
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
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original budget_ns: uint64; scalar. */
    public mixed $budget_ns;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->budget_ns = array_key_exists('budget_ns', $values) ? $values['budget_ns'] : Word::fromDecimal('0', 8, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvLease_Request', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvLease_Request', $bytes);
    }
}
/** @brief Own every original uwvm_spot_bridge/srv/Lease_Response field. */
final class Ros2Uwvm_spot_bridgeSrvLease_Response
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvLease_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ce875eb701b607c01f8a19dc8fcff607829824ad99276f906c7fc8fc5567f6d3',
        'minimum' => 22,
        'maximum' => 22,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/Lease_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'error',
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
                'name' => 'unknown',
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
                'name' => 'provider_holds_body_lease',
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
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original error: uint32; scalar. */
    public mixed $error;
    /** @brief Original unknown: bool; scalar. */
    public mixed $unknown;
    /** @brief Original provider_holds_body_lease: bool; scalar. */
    public mixed $provider_holds_body_lease;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->error = array_key_exists('error', $values) ? $values['error'] : Word::fromDecimal('0', 4, false);
        $this->unknown = array_key_exists('unknown', $values) ? $values['unknown'] : false;
        $this->provider_holds_body_lease = array_key_exists('provider_holds_body_lease', $values) ? $values['provider_holds_body_lease'] : false;
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvLease_Response', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvLease_Response', $bytes);
    }
}
/** @brief Own every original uwvm_spot_bridge/srv/Command_Request field. */
final class Ros2Uwvm_spot_bridgeSrvCommand_Request
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvCommand_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_29996d4dacb4ea847c5d629cb634d4aa5e2451627d2469d6cdf301cc007968f8',
        'minimum' => 24,
        'maximum' => 24,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/Command_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'budget_ns',
                'type' => 'uint64',
                'array' => '',
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
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original budget_ns: uint64; scalar. */
    public mixed $budget_ns;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->budget_ns = array_key_exists('budget_ns', $values) ? $values['budget_ns'] : Word::fromDecimal('0', 8, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvCommand_Request', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvCommand_Request', $bytes);
    }
}
/** @brief Own every original uwvm_spot_bridge/srv/Command_Response field. */
final class Ros2Uwvm_spot_bridgeSrvCommand_Response
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvCommand_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_e35556e7439c8d5ca79cb0f4ad23cf73c85a8a79d1382cde398dd85082dd1733',
        'minimum' => 26,
        'maximum' => 26,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/Command_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'error',
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
                'name' => 'unknown',
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
                'name' => 'native_accepted',
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
                'name' => 'native_command_id',
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
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original error: uint32; scalar. */
    public mixed $error;
    /** @brief Original unknown: bool; scalar. */
    public mixed $unknown;
    /** @brief Original native_accepted: bool; scalar. */
    public mixed $native_accepted;
    /** @brief Original native_command_id: uint32; scalar. */
    public mixed $native_command_id;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->error = array_key_exists('error', $values) ? $values['error'] : Word::fromDecimal('0', 4, false);
        $this->unknown = array_key_exists('unknown', $values) ? $values['unknown'] : false;
        $this->native_accepted = array_key_exists('native_accepted', $values) ? $values['native_accepted'] : false;
        $this->native_command_id = array_key_exists('native_command_id', $values) ? $values['native_command_id'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvCommand_Response', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvCommand_Response', $bytes);
    }
}
/** @brief Own every original uwvm_spot_bridge/srv/Velocity_Request field. */
final class Ros2Uwvm_spot_bridgeSrvVelocity_Request
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvVelocity_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_ffe3b1dec91a25cd84d221ba4ebeae576bd7d6b96f258579c0b3d280cad79f8d',
        'minimum' => 56,
        'maximum' => 56,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/Velocity_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'budget_ns',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'x_mps',
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
                'name' => 'y_mps',
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
                'name' => 'yaw_rps',
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
                'name' => 'duration_ns',
                'type' => 'uint64',
                'array' => '',
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
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original budget_ns: uint64; scalar. */
    public mixed $budget_ns;
    /** @brief Original x_mps: float64; scalar. */
    public mixed $x_mps;
    /** @brief Original y_mps: float64; scalar. */
    public mixed $y_mps;
    /** @brief Original yaw_rps: float64; scalar. */
    public mixed $yaw_rps;
    /** @brief Original duration_ns: uint64; scalar. */
    public mixed $duration_ns;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->budget_ns = array_key_exists('budget_ns', $values) ? $values['budget_ns'] : Word::fromDecimal('0', 8, false);
        $this->x_mps = array_key_exists('x_mps', $values) ? $values['x_mps'] : 0.0;
        $this->y_mps = array_key_exists('y_mps', $values) ? $values['y_mps'] : 0.0;
        $this->yaw_rps = array_key_exists('yaw_rps', $values) ? $values['yaw_rps'] : 0.0;
        $this->duration_ns = array_key_exists('duration_ns', $values) ? $values['duration_ns'] : Word::fromDecimal('0', 8, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvVelocity_Request', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvVelocity_Request', $bytes);
    }
}
/** @brief Own every original uwvm_spot_bridge/srv/Velocity_Response field. */
final class Ros2Uwvm_spot_bridgeSrvVelocity_Response
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvVelocity_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_031f37beeb5a03c4e65d4be8fd70bc680408d110a020e066bea593d86498401a',
        'minimum' => 26,
        'maximum' => 26,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/Velocity_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'error',
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
                'name' => 'unknown',
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
                'name' => 'native_accepted',
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
                'name' => 'native_command_id',
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
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original error: uint32; scalar. */
    public mixed $error;
    /** @brief Original unknown: bool; scalar. */
    public mixed $unknown;
    /** @brief Original native_accepted: bool; scalar. */
    public mixed $native_accepted;
    /** @brief Original native_command_id: uint32; scalar. */
    public mixed $native_command_id;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->error = array_key_exists('error', $values) ? $values['error'] : Word::fromDecimal('0', 4, false);
        $this->unknown = array_key_exists('unknown', $values) ? $values['unknown'] : false;
        $this->native_accepted = array_key_exists('native_accepted', $values) ? $values['native_accepted'] : false;
        $this->native_command_id = array_key_exists('native_command_id', $values) ? $values['native_command_id'] : Word::fromDecimal('0', 4, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvVelocity_Response', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvVelocity_Response', $bytes);
    }
}
/** @brief Own every original uwvm_spot_bridge/srv/Feedback_Request field. */
final class Ros2Uwvm_spot_bridgeSrvFeedback_Request
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvFeedback_Request',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_de64ce283f49f5c324912ec262f7d15b6fd828879c01039d455c765743c45ba3',
        'minimum' => 32,
        'maximum' => 32,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/Feedback_Request',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'budget_ns',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'command_token',
                'type' => 'uint64',
                'array' => '',
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
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original budget_ns: uint64; scalar. */
    public mixed $budget_ns;
    /** @brief Original command_token: uint64; scalar. */
    public mixed $command_token;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->budget_ns = array_key_exists('budget_ns', $values) ? $values['budget_ns'] : Word::fromDecimal('0', 8, false);
        $this->command_token = array_key_exists('command_token', $values) ? $values['command_token'] : Word::fromDecimal('0', 8, false);
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvFeedback_Request', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvFeedback_Request', $bytes);
    }
}
/** @brief Own every original uwvm_spot_bridge/srv/Feedback_Response field. */
final class Ros2Uwvm_spot_bridgeSrvFeedback_Response
{
    /** @brief Complete original source descriptor; native registration remains unqualified. */
    public const SCHEMA = [
        'symbol' => 'Ros2Uwvm_spot_bridgeSrvFeedback_Response',
        'native_identity' => null,
        'codec_identity' => 'UWVMROS1_4a19efe7f64fe0d7f6f13abe8980fb55503d3b897af64abc73bbd236587adfe8',
        'minimum' => 45,
        'maximum' => 16429,
        'semantics' => '',
        'ros_version' => 2,
        'native_type' => 'uwvm_spot_bridge/srv/Feedback_Response',
        'constants' => [],
        'fields' => [
            [
                'name' => 'token',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'nonce',
                'type' => 'uint64',
                'array' => '',
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
                'name' => 'error',
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
                'name' => 'unknown',
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
                'name' => 'native_command_id',
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
                'name' => 'has_full_body_feedback',
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
                'name' => 'full_body_status',
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
                'name' => 'has_mobility_feedback',
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
                'name' => 'mobility_status',
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
                'name' => 'feedback_kind',
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
                'name' => 'has_subcommand_status',
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
                'name' => 'subcommand_status',
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
                'name' => 'native_proto',
                'type' => 'uint8',
                'array' => 'sequence',
                'count' => 16384,
                'string_bound' => 0,
                'native_string_bound' => 0,
                'native_sequence_bound' => 16384,
                'native_default' => null,
                'native_scalar' => '',
                'string_encoding' => 'utf8',
                'float_policy' => 'finite',
                'raw' => false,
                'element_minimum' => 1,
            ],
        ],
    ];
    /** @brief Original token: uint64; scalar. */
    public mixed $token;
    /** @brief Original nonce: uint64; scalar. */
    public mixed $nonce;
    /** @brief Original error: uint32; scalar. */
    public mixed $error;
    /** @brief Original unknown: bool; scalar. */
    public mixed $unknown;
    /** @brief Original native_command_id: uint32; scalar. */
    public mixed $native_command_id;
    /** @brief Original has_full_body_feedback: bool; scalar. */
    public mixed $has_full_body_feedback;
    /** @brief Original full_body_status: uint32; scalar. */
    public mixed $full_body_status;
    /** @brief Original has_mobility_feedback: bool; scalar. */
    public mixed $has_mobility_feedback;
    /** @brief Original mobility_status: uint32; scalar. */
    public mixed $mobility_status;
    /** @brief Original feedback_kind: uint8; scalar. */
    public mixed $feedback_kind;
    /** @brief Original has_subcommand_status: bool; scalar. */
    public mixed $has_subcommand_status;
    /** @brief Original subcommand_status: uint32; scalar. */
    public mixed $subcommand_status;
    /** @brief Original native_proto: uint8; sequence. */
    public mixed $native_proto;
    /** @brief Construct independent full defaults and explicit supplied fields.
     * @param array $values Exact original native field names; unknown names are refused.
     * @throws \InvalidArgumentException An unknown original field is supplied.
     * @details Construction grants no native owner; supplied objects retain normal reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) {
            throw new \InvalidArgumentException('unknown original field');
        }
        $this->token = array_key_exists('token', $values) ? $values['token'] : Word::fromDecimal('0', 8, false);
        $this->nonce = array_key_exists('nonce', $values) ? $values['nonce'] : Word::fromDecimal('0', 8, false);
        $this->error = array_key_exists('error', $values) ? $values['error'] : Word::fromDecimal('0', 4, false);
        $this->unknown = array_key_exists('unknown', $values) ? $values['unknown'] : false;
        $this->native_command_id = array_key_exists('native_command_id', $values) ? $values['native_command_id'] : Word::fromDecimal('0', 4, false);
        $this->has_full_body_feedback = array_key_exists('has_full_body_feedback', $values) ? $values['has_full_body_feedback'] : false;
        $this->full_body_status = array_key_exists('full_body_status', $values) ? $values['full_body_status'] : Word::fromDecimal('0', 4, false);
        $this->has_mobility_feedback = array_key_exists('has_mobility_feedback', $values) ? $values['has_mobility_feedback'] : false;
        $this->mobility_status = array_key_exists('mobility_status', $values) ? $values['mobility_status'] : Word::fromDecimal('0', 4, false);
        $this->feedback_kind = array_key_exists('feedback_kind', $values) ? $values['feedback_kind'] : 0;
        $this->has_subcommand_status = array_key_exists('has_subcommand_status', $values) ? $values['has_subcommand_status'] : false;
        $this->subcommand_status = array_key_exists('subcommand_status', $values) ? $values['subcommand_status'] : Word::fromDecimal('0', 4, false);
        $this->native_proto = array_key_exists('native_proto', $values) ? $values['native_proto'] : [];
    }
    /** @brief Validate and encode every original field without partial output.
     * @return string Complete owned canonical bytes.
     * @throws \InvalidArgumentException Invalid field, extent, domain or Unicode.
     * @throws \OutOfRangeException A finite bound or exact integer range is exceeded. */
    public function encode(): string
    {
        return Catalog::wire()->encode('Ros2Uwvm_spot_bridgeSrvFeedback_Response', $this);
    }
    /** @brief Decode exactly one full original value transactionally.
     * @param string $bytes Complete canonical input; no trailing bytes are admitted.
     * @return self Independently owned complete record.
     * @throws \InvalidArgumentException Malformed fields, extents, domains or Unicode.
     * @throws \OutOfRangeException A selected finite bound is exceeded. */
    public static function decode(string $bytes): self
    {
        return Catalog::wire()->decode('Ros2Uwvm_spot_bridgeSrvFeedback_Response', $bytes);
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
                'Ros2Uwvm_spot_bridgeSrvState_Request' =>
                    Ros2Uwvm_spot_bridgeSrvState_Request::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvState_Request::class,
                    ],
                'Ros2Uwvm_spot_bridgeSrvState_Response' =>
                    Ros2Uwvm_spot_bridgeSrvState_Response::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvState_Response::class,
                    ],
                'Ros2Uwvm_spot_bridgeSrvLease_Request' =>
                    Ros2Uwvm_spot_bridgeSrvLease_Request::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvLease_Request::class,
                    ],
                'Ros2Uwvm_spot_bridgeSrvLease_Response' =>
                    Ros2Uwvm_spot_bridgeSrvLease_Response::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvLease_Response::class,
                    ],
                'Ros2Uwvm_spot_bridgeSrvCommand_Request' =>
                    Ros2Uwvm_spot_bridgeSrvCommand_Request::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvCommand_Request::class,
                    ],
                'Ros2Uwvm_spot_bridgeSrvCommand_Response' =>
                    Ros2Uwvm_spot_bridgeSrvCommand_Response::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvCommand_Response::class,
                    ],
                'Ros2Uwvm_spot_bridgeSrvVelocity_Request' =>
                    Ros2Uwvm_spot_bridgeSrvVelocity_Request::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvVelocity_Request::class,
                    ],
                'Ros2Uwvm_spot_bridgeSrvVelocity_Response' =>
                    Ros2Uwvm_spot_bridgeSrvVelocity_Response::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvVelocity_Response::class,
                    ],
                'Ros2Uwvm_spot_bridgeSrvFeedback_Request' =>
                    Ros2Uwvm_spot_bridgeSrvFeedback_Request::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvFeedback_Request::class,
                    ],
                'Ros2Uwvm_spot_bridgeSrvFeedback_Response' =>
                    Ros2Uwvm_spot_bridgeSrvFeedback_Response::SCHEMA + [
                        'class' => Ros2Uwvm_spot_bridgeSrvFeedback_Response::class,
                    ],
            ]);
        }
        return $wire;
    }
}
