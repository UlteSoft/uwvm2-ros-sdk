<?php
/**
 * @file records.php
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */

declare(strict_types=1);
namespace Uwvm\Abb\Ros1;

/** @file records.php
 * @brief Complete original ABB ROS 1 records and interfaces.
 * @details Exact fields, defaults and bounds; no native registration or permission is inferred. */
use Uwvm\RosWasm\Wire;
use Uwvm\RosWasm\Word;

/** @brief Own every original abb_egm_msgs/EGMChannelState field; extent 17..81 bytes. */
final class Ros1Abb_egm_msgsEGMChannelState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_egm_msgsEGMChannelState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2',
        "minimum" => 17,
        "maximum" => 81,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_egm_msgs/EGMChannelState',
        "constants" => [
            "EGM_UNDEFINED" => 1,
            "EGM_ERROR" => 2,
            "EGM_STOPPED" => 3,
            "EGM_RUNNING" => 4,
            "MOTORS_UNDEFINED" => 1,
            "MOTORS_ON" => 2,
            "MOTORS_OFF" => 3,
            "RAPID_UNDEFINED" => 1,
            "RAPID_STOPPED" => 2,
            "RAPID_RUNNING" => 3
        ],
        "fields" => [
            [
                "name" => 'name',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'active',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'egm_convergence_met',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'egm_client_state',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'motor_state',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'rapid_execution_state',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'utilization_rate',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original EGM_UNDEFINED constant; consumes no instance bytes. */
    public const EGM_UNDEFINED = 1;
    /** @brief Original EGM_ERROR constant; consumes no instance bytes. */
    public const EGM_ERROR = 2;
    /** @brief Original EGM_STOPPED constant; consumes no instance bytes. */
    public const EGM_STOPPED = 3;
    /** @brief Original EGM_RUNNING constant; consumes no instance bytes. */
    public const EGM_RUNNING = 4;
    /** @brief Original MOTORS_UNDEFINED constant; consumes no instance bytes. */
    public const MOTORS_UNDEFINED = 1;
    /** @brief Original MOTORS_ON constant; consumes no instance bytes. */
    public const MOTORS_ON = 2;
    /** @brief Original MOTORS_OFF constant; consumes no instance bytes. */
    public const MOTORS_OFF = 3;
    /** @brief Original RAPID_UNDEFINED constant; consumes no instance bytes. */
    public const RAPID_UNDEFINED = 1;
    /** @brief Original RAPID_STOPPED constant; consumes no instance bytes. */
    public const RAPID_STOPPED = 2;
    /** @brief Original RAPID_RUNNING constant; consumes no instance bytes. */
    public const RAPID_RUNNING = 3;
    /** @brief Original name: string; scalar; bound/count 0. */
    public mixed $name;
    /** @brief Original active: bool; scalar; bound/count 0. */
    public mixed $active;
    /** @brief Original egm_convergence_met: bool; scalar; bound/count 0. */
    public mixed $egm_convergence_met;
    /** @brief Original egm_client_state: uint8; scalar; bound/count 0. */
    public mixed $egm_client_state;
    /** @brief Original motor_state: uint8; scalar; bound/count 0. */
    public mixed $motor_state;
    /** @brief Original rapid_execution_state: uint8; scalar; bound/count 0. */
    public mixed $rapid_execution_state;
    /** @brief Original utilization_rate: float64; scalar; bound/count 0. */
    public mixed $utilization_rate;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('name', $values)) { $this->name = $values['name']; }
        else
        {
            $this->name = '';
        }
        if (array_key_exists('active', $values)) { $this->active = $values['active']; }
        else
        {
            $this->active = false;
        }
        if (array_key_exists('egm_convergence_met', $values)) { $this->egm_convergence_met = $values['egm_convergence_met']; }
        else
        {
            $this->egm_convergence_met = false;
        }
        if (array_key_exists('egm_client_state', $values)) { $this->egm_client_state = $values['egm_client_state']; }
        else
        {
            $this->egm_client_state = 0;
        }
        if (array_key_exists('motor_state', $values)) { $this->motor_state = $values['motor_state']; }
        else
        {
            $this->motor_state = 0;
        }
        if (array_key_exists('rapid_execution_state', $values)) { $this->rapid_execution_state = $values['rapid_execution_state']; }
        else
        {
            $this->rapid_execution_state = 0;
        }
        if (array_key_exists('utilization_rate', $values)) { $this->utilization_rate = $values['utilization_rate']; }
        else
        {
            $this->utilization_rate = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_egm_msgsEGMChannelState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_egm_msgsEGMChannelState', $bytes); }
}

/** @brief Own every original time field; extent 8..8 bytes. */
final class Ros1Time
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Time',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => 'normalized-time',
        "ros_version" => 1,
        "native_type" => 'time',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'sec',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'nsec',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original sec: uint32; scalar; bound/count 0. */
    public mixed $sec;
    /** @brief Original nsec: uint32; scalar; bound/count 0. */
    public mixed $nsec;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('sec', $values)) { $this->sec = $values['sec']; }
        else
        {
            $this->sec = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('nsec', $values)) { $this->nsec = $values['nsec']; }
        else
        {
            $this->nsec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Time', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Time', $bytes); }
}

/** @brief Own every original std_msgs/Header field; extent 16..80 bytes. */
final class Ros1Std_msgsHeader
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Std_msgsHeader',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db',
        "minimum" => 16,
        "maximum" => 80,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'std_msgs/Header',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'seq',
                "type" => 'uint32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'stamp',
                "type" => 'Ros1Time',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'frame_id',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original seq: uint32; scalar; bound/count 0. */
    public mixed $seq;
    /** @brief Original stamp: Ros1Time; scalar; bound/count 0. */
    public mixed $stamp;
    /** @brief Original frame_id: string; scalar; bound/count 0. */
    public mixed $frame_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('seq', $values)) { $this->seq = $values['seq']; }
        else
        {
            $this->seq = Word::fromDecimal('0', 4, false);
        }
        if (array_key_exists('stamp', $values)) { $this->stamp = $values['stamp']; }
        else
        {
            $this->stamp = new Ros1Time();
        }
        if (array_key_exists('frame_id', $values)) { $this->frame_id = $values['frame_id']; }
        else
        {
            $this->frame_id = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Std_msgsHeader', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Std_msgsHeader', $bytes); }
}

/** @brief Own every original abb_egm_msgs/EGMState field; extent 20..1380 bytes. */
final class Ros1Abb_egm_msgsEGMState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_egm_msgsEGMState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8',
        "minimum" => 20,
        "maximum" => 1380,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_egm_msgs/EGMState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros1Std_msgsHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ],
            [
                "name" => 'egm_channels',
                "type" => 'Ros1Abb_egm_msgsEGMChannelState',
                "array" => 'sequence',
                "count" => 16,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 17
            ]
        ]
    ];
    /** @brief Original header: Ros1Std_msgsHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original egm_channels: Ros1Abb_egm_msgsEGMChannelState; sequence; bound/count 16. */
    public mixed $egm_channels;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros1Std_msgsHeader();
        }
        if (array_key_exists('egm_channels', $values)) { $this->egm_channels = $values['egm_channels']; }
        else
        {
            $this->egm_channels = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_egm_msgsEGMState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_egm_msgsEGMState', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/ConfData field; extent 16..16 bytes. */
final class Ros1Abb_rapid_msgsConfData
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsConfData',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2',
        "minimum" => 16,
        "maximum" => 16,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/ConfData',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'cf1',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cf4',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cf6',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cfx',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original cf1: float32; scalar; bound/count 0. */
    public mixed $cf1;
    /** @brief Original cf4: float32; scalar; bound/count 0. */
    public mixed $cf4;
    /** @brief Original cf6: float32; scalar; bound/count 0. */
    public mixed $cf6;
    /** @brief Original cfx: float32; scalar; bound/count 0. */
    public mixed $cfx;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('cf1', $values)) { $this->cf1 = $values['cf1']; }
        else
        {
            $this->cf1 = 0.0;
        }
        if (array_key_exists('cf4', $values)) { $this->cf4 = $values['cf4']; }
        else
        {
            $this->cf4 = 0.0;
        }
        if (array_key_exists('cf6', $values)) { $this->cf6 = $values['cf6']; }
        else
        {
            $this->cf6 = 0.0;
        }
        if (array_key_exists('cfx', $values)) { $this->cfx = $values['cfx']; }
        else
        {
            $this->cfx = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsConfData', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsConfData', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/ExtJoint field; extent 24..24 bytes. */
final class Ros1Abb_rapid_msgsExtJoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsExtJoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a',
        "minimum" => 24,
        "maximum" => 24,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/ExtJoint',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'eax_a',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'eax_b',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'eax_c',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'eax_d',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'eax_e',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'eax_f',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original eax_a: float32; scalar; bound/count 0. */
    public mixed $eax_a;
    /** @brief Original eax_b: float32; scalar; bound/count 0. */
    public mixed $eax_b;
    /** @brief Original eax_c: float32; scalar; bound/count 0. */
    public mixed $eax_c;
    /** @brief Original eax_d: float32; scalar; bound/count 0. */
    public mixed $eax_d;
    /** @brief Original eax_e: float32; scalar; bound/count 0. */
    public mixed $eax_e;
    /** @brief Original eax_f: float32; scalar; bound/count 0. */
    public mixed $eax_f;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('eax_a', $values)) { $this->eax_a = $values['eax_a']; }
        else
        {
            $this->eax_a = 0.0;
        }
        if (array_key_exists('eax_b', $values)) { $this->eax_b = $values['eax_b']; }
        else
        {
            $this->eax_b = 0.0;
        }
        if (array_key_exists('eax_c', $values)) { $this->eax_c = $values['eax_c']; }
        else
        {
            $this->eax_c = 0.0;
        }
        if (array_key_exists('eax_d', $values)) { $this->eax_d = $values['eax_d']; }
        else
        {
            $this->eax_d = 0.0;
        }
        if (array_key_exists('eax_e', $values)) { $this->eax_e = $values['eax_e']; }
        else
        {
            $this->eax_e = 0.0;
        }
        if (array_key_exists('eax_f', $values)) { $this->eax_f = $values['eax_f']; }
        else
        {
            $this->eax_f = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsExtJoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsExtJoint', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/RobJoint field; extent 24..24 bytes. */
final class Ros1Abb_rapid_msgsRobJoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsRobJoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0',
        "minimum" => 24,
        "maximum" => 24,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/RobJoint',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'rax_1',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'rax_2',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'rax_3',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'rax_4',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'rax_5',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'rax_6',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original rax_1: float32; scalar; bound/count 0. */
    public mixed $rax_1;
    /** @brief Original rax_2: float32; scalar; bound/count 0. */
    public mixed $rax_2;
    /** @brief Original rax_3: float32; scalar; bound/count 0. */
    public mixed $rax_3;
    /** @brief Original rax_4: float32; scalar; bound/count 0. */
    public mixed $rax_4;
    /** @brief Original rax_5: float32; scalar; bound/count 0. */
    public mixed $rax_5;
    /** @brief Original rax_6: float32; scalar; bound/count 0. */
    public mixed $rax_6;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('rax_1', $values)) { $this->rax_1 = $values['rax_1']; }
        else
        {
            $this->rax_1 = 0.0;
        }
        if (array_key_exists('rax_2', $values)) { $this->rax_2 = $values['rax_2']; }
        else
        {
            $this->rax_2 = 0.0;
        }
        if (array_key_exists('rax_3', $values)) { $this->rax_3 = $values['rax_3']; }
        else
        {
            $this->rax_3 = 0.0;
        }
        if (array_key_exists('rax_4', $values)) { $this->rax_4 = $values['rax_4']; }
        else
        {
            $this->rax_4 = 0.0;
        }
        if (array_key_exists('rax_5', $values)) { $this->rax_5 = $values['rax_5']; }
        else
        {
            $this->rax_5 = 0.0;
        }
        if (array_key_exists('rax_6', $values)) { $this->rax_6 = $values['rax_6']; }
        else
        {
            $this->rax_6 = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsRobJoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsRobJoint', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/JointTarget field; extent 48..48 bytes. */
final class Ros1Abb_rapid_msgsJointTarget
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsJointTarget',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24',
        "minimum" => 48,
        "maximum" => 48,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/JointTarget',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'robax',
                "type" => 'Ros1Abb_rapid_msgsRobJoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'extax',
                "type" => 'Ros1Abb_rapid_msgsExtJoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ]
        ]
    ];
    /** @brief Original robax: Ros1Abb_rapid_msgsRobJoint; scalar; bound/count 0. */
    public mixed $robax;
    /** @brief Original extax: Ros1Abb_rapid_msgsExtJoint; scalar; bound/count 0. */
    public mixed $extax;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('robax', $values)) { $this->robax = $values['robax']; }
        else
        {
            $this->robax = new Ros1Abb_rapid_msgsRobJoint();
        }
        if (array_key_exists('extax', $values)) { $this->extax = $values['extax']; }
        else
        {
            $this->extax = new Ros1Abb_rapid_msgsExtJoint();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsJointTarget', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsJointTarget', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/Pos field; extent 12..12 bytes. */
final class Ros1Abb_rapid_msgsPos
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsPos',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01',
        "minimum" => 12,
        "maximum" => 12,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/Pos',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'x',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'y',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'z',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original x: float32; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float32; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float32; scalar; bound/count 0. */
    public mixed $z;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('x', $values)) { $this->x = $values['x']; }
        else
        {
            $this->x = 0.0;
        }
        if (array_key_exists('y', $values)) { $this->y = $values['y']; }
        else
        {
            $this->y = 0.0;
        }
        if (array_key_exists('z', $values)) { $this->z = $values['z']; }
        else
        {
            $this->z = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsPos', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsPos', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/Orient field; extent 16..16 bytes. */
final class Ros1Abb_rapid_msgsOrient
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsOrient',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270',
        "minimum" => 16,
        "maximum" => 16,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/Orient',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'q1',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'q2',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'q3',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'q4',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original q1: float32; scalar; bound/count 0. */
    public mixed $q1;
    /** @brief Original q2: float32; scalar; bound/count 0. */
    public mixed $q2;
    /** @brief Original q3: float32; scalar; bound/count 0. */
    public mixed $q3;
    /** @brief Original q4: float32; scalar; bound/count 0. */
    public mixed $q4;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('q1', $values)) { $this->q1 = $values['q1']; }
        else
        {
            $this->q1 = 0.0;
        }
        if (array_key_exists('q2', $values)) { $this->q2 = $values['q2']; }
        else
        {
            $this->q2 = 0.0;
        }
        if (array_key_exists('q3', $values)) { $this->q3 = $values['q3']; }
        else
        {
            $this->q3 = 0.0;
        }
        if (array_key_exists('q4', $values)) { $this->q4 = $values['q4']; }
        else
        {
            $this->q4 = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsOrient', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsOrient', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/LoadData field; extent 44..44 bytes. */
final class Ros1Abb_rapid_msgsLoadData
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsLoadData',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d',
        "minimum" => 44,
        "maximum" => 44,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/LoadData',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'mass',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'cog',
                "type" => 'Ros1Abb_rapid_msgsPos',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'aom',
                "type" => 'Ros1Abb_rapid_msgsOrient',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ],
            [
                "name" => 'ix',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'iy',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'iz',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original mass: float32; scalar; bound/count 0. */
    public mixed $mass;
    /** @brief Original cog: Ros1Abb_rapid_msgsPos; scalar; bound/count 0. */
    public mixed $cog;
    /** @brief Original aom: Ros1Abb_rapid_msgsOrient; scalar; bound/count 0. */
    public mixed $aom;
    /** @brief Original ix: float32; scalar; bound/count 0. */
    public mixed $ix;
    /** @brief Original iy: float32; scalar; bound/count 0. */
    public mixed $iy;
    /** @brief Original iz: float32; scalar; bound/count 0. */
    public mixed $iz;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('mass', $values)) { $this->mass = $values['mass']; }
        else
        {
            $this->mass = 0.0;
        }
        if (array_key_exists('cog', $values)) { $this->cog = $values['cog']; }
        else
        {
            $this->cog = new Ros1Abb_rapid_msgsPos();
        }
        if (array_key_exists('aom', $values)) { $this->aom = $values['aom']; }
        else
        {
            $this->aom = new Ros1Abb_rapid_msgsOrient();
        }
        if (array_key_exists('ix', $values)) { $this->ix = $values['ix']; }
        else
        {
            $this->ix = 0.0;
        }
        if (array_key_exists('iy', $values)) { $this->iy = $values['iy']; }
        else
        {
            $this->iy = 0.0;
        }
        if (array_key_exists('iz', $values)) { $this->iz = $values['iz']; }
        else
        {
            $this->iz = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsLoadData', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsLoadData', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/Pose field; extent 28..28 bytes. */
final class Ros1Abb_rapid_msgsPose
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsPose',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99',
        "minimum" => 28,
        "maximum" => 28,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/Pose',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'trans',
                "type" => 'Ros1Abb_rapid_msgsPos',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'rot',
                "type" => 'Ros1Abb_rapid_msgsOrient',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ]
        ]
    ];
    /** @brief Original trans: Ros1Abb_rapid_msgsPos; scalar; bound/count 0. */
    public mixed $trans;
    /** @brief Original rot: Ros1Abb_rapid_msgsOrient; scalar; bound/count 0. */
    public mixed $rot;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('trans', $values)) { $this->trans = $values['trans']; }
        else
        {
            $this->trans = new Ros1Abb_rapid_msgsPos();
        }
        if (array_key_exists('rot', $values)) { $this->rot = $values['rot']; }
        else
        {
            $this->rot = new Ros1Abb_rapid_msgsOrient();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsPose', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsPose', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/RobTarget field; extent 68..68 bytes. */
final class Ros1Abb_rapid_msgsRobTarget
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsRobTarget',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce',
        "minimum" => 68,
        "maximum" => 68,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/RobTarget',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'trans',
                "type" => 'Ros1Abb_rapid_msgsPos',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'rot',
                "type" => 'Ros1Abb_rapid_msgsOrient',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ],
            [
                "name" => 'robconf',
                "type" => 'Ros1Abb_rapid_msgsConfData',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ],
            [
                "name" => 'extax',
                "type" => 'Ros1Abb_rapid_msgsExtJoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ]
        ]
    ];
    /** @brief Original trans: Ros1Abb_rapid_msgsPos; scalar; bound/count 0. */
    public mixed $trans;
    /** @brief Original rot: Ros1Abb_rapid_msgsOrient; scalar; bound/count 0. */
    public mixed $rot;
    /** @brief Original robconf: Ros1Abb_rapid_msgsConfData; scalar; bound/count 0. */
    public mixed $robconf;
    /** @brief Original extax: Ros1Abb_rapid_msgsExtJoint; scalar; bound/count 0. */
    public mixed $extax;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('trans', $values)) { $this->trans = $values['trans']; }
        else
        {
            $this->trans = new Ros1Abb_rapid_msgsPos();
        }
        if (array_key_exists('rot', $values)) { $this->rot = $values['rot']; }
        else
        {
            $this->rot = new Ros1Abb_rapid_msgsOrient();
        }
        if (array_key_exists('robconf', $values)) { $this->robconf = $values['robconf']; }
        else
        {
            $this->robconf = new Ros1Abb_rapid_msgsConfData();
        }
        if (array_key_exists('extax', $values)) { $this->extax = $values['extax']; }
        else
        {
            $this->extax = new Ros1Abb_rapid_msgsExtJoint();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsRobTarget', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsRobTarget', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/ToolData field; extent 73..73 bytes. */
final class Ros1Abb_rapid_msgsToolData
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsToolData',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba',
        "minimum" => 73,
        "maximum" => 73,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/ToolData',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'robhold',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'tframe',
                "type" => 'Ros1Abb_rapid_msgsPose',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ],
            [
                "name" => 'tload',
                "type" => 'Ros1Abb_rapid_msgsLoadData',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 44
            ]
        ]
    ];
    /** @brief Original robhold: bool; scalar; bound/count 0. */
    public mixed $robhold;
    /** @brief Original tframe: Ros1Abb_rapid_msgsPose; scalar; bound/count 0. */
    public mixed $tframe;
    /** @brief Original tload: Ros1Abb_rapid_msgsLoadData; scalar; bound/count 0. */
    public mixed $tload;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('robhold', $values)) { $this->robhold = $values['robhold']; }
        else
        {
            $this->robhold = false;
        }
        if (array_key_exists('tframe', $values)) { $this->tframe = $values['tframe']; }
        else
        {
            $this->tframe = new Ros1Abb_rapid_msgsPose();
        }
        if (array_key_exists('tload', $values)) { $this->tload = $values['tload']; }
        else
        {
            $this->tload = new Ros1Abb_rapid_msgsLoadData();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsToolData', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsToolData', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/WObjData field; extent 62..574 bytes. */
final class Ros1Abb_rapid_msgsWObjData
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_msgsWObjData',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f',
        "minimum" => 62,
        "maximum" => 574,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_msgs/WObjData',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'robhold',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'ufprog',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'ufmec',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'uframe',
                "type" => 'Ros1Abb_rapid_msgsPose',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ],
            [
                "name" => 'oframe',
                "type" => 'Ros1Abb_rapid_msgsPose',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ]
        ]
    ];
    /** @brief Original robhold: bool; scalar; bound/count 0. */
    public mixed $robhold;
    /** @brief Original ufprog: bool; scalar; bound/count 0. */
    public mixed $ufprog;
    /** @brief Original ufmec: string; scalar; bound/count 0. */
    public mixed $ufmec;
    /** @brief Original uframe: Ros1Abb_rapid_msgsPose; scalar; bound/count 0. */
    public mixed $uframe;
    /** @brief Original oframe: Ros1Abb_rapid_msgsPose; scalar; bound/count 0. */
    public mixed $oframe;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('robhold', $values)) { $this->robhold = $values['robhold']; }
        else
        {
            $this->robhold = false;
        }
        if (array_key_exists('ufprog', $values)) { $this->ufprog = $values['ufprog']; }
        else
        {
            $this->ufprog = false;
        }
        if (array_key_exists('ufmec', $values)) { $this->ufmec = $values['ufmec']; }
        else
        {
            $this->ufmec = '';
        }
        if (array_key_exists('uframe', $values)) { $this->uframe = $values['uframe']; }
        else
        {
            $this->uframe = new Ros1Abb_rapid_msgsPose();
        }
        if (array_key_exists('oframe', $values)) { $this->oframe = $values['oframe']; }
        else
        {
            $this->oframe = new Ros1Abb_rapid_msgsPose();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_msgsWObjData', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_msgsWObjData', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/EGMActivateSettings field; extent 204..716 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d',
        "minimum" => 204,
        "maximum" => 716,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/EGMActivateSettings',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'tool',
                "type" => 'Ros1Abb_rapid_msgsToolData',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 73
            ],
            [
                "name" => 'wobj',
                "type" => 'Ros1Abb_rapid_msgsWObjData',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 62
            ],
            [
                "name" => 'correction_frame',
                "type" => 'Ros1Abb_rapid_msgsPose',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ],
            [
                "name" => 'sensor_frame',
                "type" => 'Ros1Abb_rapid_msgsPose',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ],
            [
                "name" => 'cond_min_max',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'lp_filter',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'sample_rate',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'max_speed_deviation',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original tool: Ros1Abb_rapid_msgsToolData; scalar; bound/count 0. */
    public mixed $tool;
    /** @brief Original wobj: Ros1Abb_rapid_msgsWObjData; scalar; bound/count 0. */
    public mixed $wobj;
    /** @brief Original correction_frame: Ros1Abb_rapid_msgsPose; scalar; bound/count 0. */
    public mixed $correction_frame;
    /** @brief Original sensor_frame: Ros1Abb_rapid_msgsPose; scalar; bound/count 0. */
    public mixed $sensor_frame;
    /** @brief Original cond_min_max: float32; scalar; bound/count 0. */
    public mixed $cond_min_max;
    /** @brief Original lp_filter: float32; scalar; bound/count 0. */
    public mixed $lp_filter;
    /** @brief Original sample_rate: uint8; scalar; bound/count 0. */
    public mixed $sample_rate;
    /** @brief Original max_speed_deviation: float32; scalar; bound/count 0. */
    public mixed $max_speed_deviation;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('tool', $values)) { $this->tool = $values['tool']; }
        else
        {
            $this->tool = new Ros1Abb_rapid_msgsToolData();
        }
        if (array_key_exists('wobj', $values)) { $this->wobj = $values['wobj']; }
        else
        {
            $this->wobj = new Ros1Abb_rapid_msgsWObjData();
        }
        if (array_key_exists('correction_frame', $values)) { $this->correction_frame = $values['correction_frame']; }
        else
        {
            $this->correction_frame = new Ros1Abb_rapid_msgsPose();
        }
        if (array_key_exists('sensor_frame', $values)) { $this->sensor_frame = $values['sensor_frame']; }
        else
        {
            $this->sensor_frame = new Ros1Abb_rapid_msgsPose();
        }
        if (array_key_exists('cond_min_max', $values)) { $this->cond_min_max = $values['cond_min_max']; }
        else
        {
            $this->cond_min_max = 0.0;
        }
        if (array_key_exists('lp_filter', $values)) { $this->lp_filter = $values['lp_filter']; }
        else
        {
            $this->lp_filter = 0.0;
        }
        if (array_key_exists('sample_rate', $values)) { $this->sample_rate = $values['sample_rate']; }
        else
        {
            $this->sample_rate = 0;
        }
        if (array_key_exists('max_speed_deviation', $values)) { $this->max_speed_deviation = $values['max_speed_deviation']; }
        else
        {
            $this->max_speed_deviation = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/EGMRunSettings field; extent 40..40 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsEGMRunSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506',
        "minimum" => 40,
        "maximum" => 40,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/EGMRunSettings',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'cond_time',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'ramp_in_time',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'offset',
                "type" => 'Ros1Abb_rapid_msgsPose',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ],
            [
                "name" => 'pos_corr_gain',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original cond_time: float32; scalar; bound/count 0. */
    public mixed $cond_time;
    /** @brief Original ramp_in_time: float32; scalar; bound/count 0. */
    public mixed $ramp_in_time;
    /** @brief Original offset: Ros1Abb_rapid_msgsPose; scalar; bound/count 0. */
    public mixed $offset;
    /** @brief Original pos_corr_gain: float32; scalar; bound/count 0. */
    public mixed $pos_corr_gain;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('cond_time', $values)) { $this->cond_time = $values['cond_time']; }
        else
        {
            $this->cond_time = 0.0;
        }
        if (array_key_exists('ramp_in_time', $values)) { $this->ramp_in_time = $values['ramp_in_time']; }
        else
        {
            $this->ramp_in_time = 0.0;
        }
        if (array_key_exists('offset', $values)) { $this->offset = $values['offset']; }
        else
        {
            $this->offset = new Ros1Abb_rapid_msgsPose();
        }
        if (array_key_exists('pos_corr_gain', $values)) { $this->pos_corr_gain = $values['pos_corr_gain']; }
        else
        {
            $this->pos_corr_gain = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsEGMRunSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsEGMRunSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/EGMSetupSettings field; extent 5..5 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779',
        "minimum" => 5,
        "maximum" => 5,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/EGMSetupSettings',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'use_filtering',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'comm_timeout',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original use_filtering: bool; scalar; bound/count 0. */
    public mixed $use_filtering;
    /** @brief Original comm_timeout: float32; scalar; bound/count 0. */
    public mixed $comm_timeout;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('use_filtering', $values)) { $this->use_filtering = $values['use_filtering']; }
        else
        {
            $this->use_filtering = false;
        }
        if (array_key_exists('comm_timeout', $values)) { $this->comm_timeout = $values['comm_timeout']; }
        else
        {
            $this->comm_timeout = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/EGMStopSettings field; extent 4..4 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsEGMStopSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/EGMStopSettings',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'ramp_out_time',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original ramp_out_time: float32; scalar; bound/count 0. */
    public mixed $ramp_out_time;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('ramp_out_time', $values)) { $this->ramp_out_time = $values['ramp_out_time']; }
        else
        {
            $this->ramp_out_time = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsEGMStopSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsEGMStopSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/EGMSettings field; extent 255..767 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsEGMSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsEGMSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b',
        "minimum" => 255,
        "maximum" => 767,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/EGMSettings',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'allow_egm_motions',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'use_presync',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'setup_uc',
                "type" => 'Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 5
            ],
            [
                "name" => 'activate',
                "type" => 'Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 204
            ],
            [
                "name" => 'run',
                "type" => 'Ros1Abb_rapid_sm_addin_msgsEGMRunSettings',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 40
            ],
            [
                "name" => 'stop',
                "type" => 'Ros1Abb_rapid_sm_addin_msgsEGMStopSettings',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original allow_egm_motions: bool; scalar; bound/count 0. */
    public mixed $allow_egm_motions;
    /** @brief Original use_presync: bool; scalar; bound/count 0. */
    public mixed $use_presync;
    /** @brief Original setup_uc: Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings; scalar; bound/count 0. */
    public mixed $setup_uc;
    /** @brief Original activate: Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings; scalar; bound/count 0. */
    public mixed $activate;
    /** @brief Original run: Ros1Abb_rapid_sm_addin_msgsEGMRunSettings; scalar; bound/count 0. */
    public mixed $run;
    /** @brief Original stop: Ros1Abb_rapid_sm_addin_msgsEGMStopSettings; scalar; bound/count 0. */
    public mixed $stop;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('allow_egm_motions', $values)) { $this->allow_egm_motions = $values['allow_egm_motions']; }
        else
        {
            $this->allow_egm_motions = false;
        }
        if (array_key_exists('use_presync', $values)) { $this->use_presync = $values['use_presync']; }
        else
        {
            $this->use_presync = false;
        }
        if (array_key_exists('setup_uc', $values)) { $this->setup_uc = $values['setup_uc']; }
        else
        {
            $this->setup_uc = new Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings();
        }
        if (array_key_exists('activate', $values)) { $this->activate = $values['activate']; }
        else
        {
            $this->activate = new Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings();
        }
        if (array_key_exists('run', $values)) { $this->run = $values['run']; }
        else
        {
            $this->run = new Ros1Abb_rapid_sm_addin_msgsEGMRunSettings();
        }
        if (array_key_exists('stop', $values)) { $this->stop = $values['stop']; }
        else
        {
            $this->stop = new Ros1Abb_rapid_sm_addin_msgsEGMStopSettings();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsEGMSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsEGMSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest field; extent 4..68 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c',
        "minimum" => 4,
        "maximum" => 68,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/GetEGMSettingsRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'task',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original task: string; scalar; bound/count 0. */
    public mixed $task;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('task', $values)) { $this->task = $values['task']; }
        else
        {
            $this->task = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse field; extent 261..1285 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc',
        "minimum" => 261,
        "maximum" => 1285,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/GetEGMSettingsResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'settings',
                "type" => 'Ros1Abb_rapid_sm_addin_msgsEGMSettings',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 255
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original settings: Ros1Abb_rapid_sm_addin_msgsEGMSettings; scalar; bound/count 0. */
    public mixed $settings;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('settings', $values)) { $this->settings = $values['settings']; }
        else
        {
            $this->settings = new Ros1Abb_rapid_sm_addin_msgsEGMSettings();
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/StateMachineState field; extent 6..518 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsStateMachineState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsStateMachineState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/StateMachineState',
        "constants" => [
            "SM_STATE_UNKNOWN" => 1,
            "SM_STATE_IDLE" => 2,
            "SM_STATE_INITIALIZE" => 3,
            "SM_STATE_RUN_RAPID_ROUTINE" => 4,
            "SM_STATE_RUN_EGM_ROUTINE" => 5,
            "EGM_ACTION_UNKNOWN" => 1,
            "EGM_ACTION_NONE" => 2,
            "EGM_ACTION_RUN_JOINT" => 3,
            "EGM_ACTION_RUN_POSE" => 4,
            "EGM_ACTION_STOP" => 5,
            "EGM_ACTION_START_STREAM" => 6,
            "EGM_ACTION_STOP_STREAM" => 7
        ],
        "fields" => [
            [
                "name" => 'rapid_task',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'sm_state',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'egm_action',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original SM_STATE_UNKNOWN constant; consumes no instance bytes. */
    public const SM_STATE_UNKNOWN = 1;
    /** @brief Original SM_STATE_IDLE constant; consumes no instance bytes. */
    public const SM_STATE_IDLE = 2;
    /** @brief Original SM_STATE_INITIALIZE constant; consumes no instance bytes. */
    public const SM_STATE_INITIALIZE = 3;
    /** @brief Original SM_STATE_RUN_RAPID_ROUTINE constant; consumes no instance bytes. */
    public const SM_STATE_RUN_RAPID_ROUTINE = 4;
    /** @brief Original SM_STATE_RUN_EGM_ROUTINE constant; consumes no instance bytes. */
    public const SM_STATE_RUN_EGM_ROUTINE = 5;
    /** @brief Original EGM_ACTION_UNKNOWN constant; consumes no instance bytes. */
    public const EGM_ACTION_UNKNOWN = 1;
    /** @brief Original EGM_ACTION_NONE constant; consumes no instance bytes. */
    public const EGM_ACTION_NONE = 2;
    /** @brief Original EGM_ACTION_RUN_JOINT constant; consumes no instance bytes. */
    public const EGM_ACTION_RUN_JOINT = 3;
    /** @brief Original EGM_ACTION_RUN_POSE constant; consumes no instance bytes. */
    public const EGM_ACTION_RUN_POSE = 4;
    /** @brief Original EGM_ACTION_STOP constant; consumes no instance bytes. */
    public const EGM_ACTION_STOP = 5;
    /** @brief Original EGM_ACTION_START_STREAM constant; consumes no instance bytes. */
    public const EGM_ACTION_START_STREAM = 6;
    /** @brief Original EGM_ACTION_STOP_STREAM constant; consumes no instance bytes. */
    public const EGM_ACTION_STOP_STREAM = 7;
    /** @brief Original rapid_task: string; scalar; bound/count 0. */
    public mixed $rapid_task;
    /** @brief Original sm_state: uint8; scalar; bound/count 0. */
    public mixed $sm_state;
    /** @brief Original egm_action: uint8; scalar; bound/count 0. */
    public mixed $egm_action;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('rapid_task', $values)) { $this->rapid_task = $values['rapid_task']; }
        else
        {
            $this->rapid_task = '';
        }
        if (array_key_exists('sm_state', $values)) { $this->sm_state = $values['sm_state']; }
        else
        {
            $this->sm_state = 0;
        }
        if (array_key_exists('egm_action', $values)) { $this->egm_action = $values['egm_action']; }
        else
        {
            $this->egm_action = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsStateMachineState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsStateMachineState', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/RuntimeState field; extent 20..8372 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsRuntimeState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsRuntimeState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c',
        "minimum" => 20,
        "maximum" => 8372,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/RuntimeState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros1Std_msgsHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ],
            [
                "name" => 'state_machines',
                "type" => 'Ros1Abb_rapid_sm_addin_msgsStateMachineState',
                "array" => 'sequence',
                "count" => 16,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 6
            ]
        ]
    ];
    /** @brief Original header: Ros1Std_msgsHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original state_machines: Ros1Abb_rapid_sm_addin_msgsStateMachineState; sequence; bound/count 16. */
    public mixed $state_machines;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros1Std_msgsHeader();
        }
        if (array_key_exists('state_machines', $values)) { $this->state_machines = $values['state_machines']; }
        else
        {
            $this->state_machines = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsRuntimeState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsRuntimeState', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest field; extent 259..835 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155',
        "minimum" => 259,
        "maximum" => 835,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/SetEGMSettingsRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'task',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'settings',
                "type" => 'Ros1Abb_rapid_sm_addin_msgsEGMSettings',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 255
            ]
        ]
    ];
    /** @brief Original task: string; scalar; bound/count 0. */
    public mixed $task;
    /** @brief Original settings: Ros1Abb_rapid_sm_addin_msgsEGMSettings; scalar; bound/count 0. */
    public mixed $settings;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('task', $values)) { $this->task = $values['task']; }
        else
        {
            $this->task = '';
        }
        if (array_key_exists('settings', $values)) { $this->settings = $values['settings']; }
        else
        {
            $this->settings = new Ros1Abb_rapid_sm_addin_msgsEGMSettings();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse field; extent 6..518 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/SetEGMSettingsResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest field; extent 8..584 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3',
        "minimum" => 8,
        "maximum" => 584,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'task',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'routine',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original task: string; scalar; bound/count 0. */
    public mixed $task;
    /** @brief Original routine: string; scalar; bound/count 0. */
    public mixed $routine;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('task', $values)) { $this->task = $values['task']; }
        else
        {
            $this->task = '';
        }
        if (array_key_exists('routine', $values)) { $this->routine = $values['routine']; }
        else
        {
            $this->routine = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse field; extent 6..518 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/SetSGCommandRequest field; extent 9..73 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2',
        "minimum" => 9,
        "maximum" => 73,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/SetSGCommandRequest',
        "constants" => [
            "SG_COMMAND_UNKNOWN" => 1,
            "SG_COMMAND_NONE" => 2,
            "SG_COMMAND_INITIALIZE" => 3,
            "SG_COMMAND_CALIBRATE" => 4,
            "SG_COMMAND_MOVE_TO" => 5,
            "SG_COMMAND_GRIP_IN" => 6,
            "SG_COMMAND_GRIP_OUT" => 7,
            "SG_COMMAND_BLOW_ON_1" => 8,
            "SG_COMMAND_BLOW_ON_2" => 9,
            "SG_COMMAND_BLOW_OFF_1" => 10,
            "SG_COMMAND_BLOW_OFF_2" => 11,
            "SG_COMMAND_VACUUM_ON_1" => 12,
            "SG_COMMAND_VACUUM_ON_2" => 13,
            "SG_COMMAND_VACUUM_OFF_1" => 14,
            "SG_COMMAND_VACUUM_OFF_2" => 15
        ],
        "fields" => [
            [
                "name" => 'task',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'command',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'target_position',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original SG_COMMAND_UNKNOWN constant; consumes no instance bytes. */
    public const SG_COMMAND_UNKNOWN = 1;
    /** @brief Original SG_COMMAND_NONE constant; consumes no instance bytes. */
    public const SG_COMMAND_NONE = 2;
    /** @brief Original SG_COMMAND_INITIALIZE constant; consumes no instance bytes. */
    public const SG_COMMAND_INITIALIZE = 3;
    /** @brief Original SG_COMMAND_CALIBRATE constant; consumes no instance bytes. */
    public const SG_COMMAND_CALIBRATE = 4;
    /** @brief Original SG_COMMAND_MOVE_TO constant; consumes no instance bytes. */
    public const SG_COMMAND_MOVE_TO = 5;
    /** @brief Original SG_COMMAND_GRIP_IN constant; consumes no instance bytes. */
    public const SG_COMMAND_GRIP_IN = 6;
    /** @brief Original SG_COMMAND_GRIP_OUT constant; consumes no instance bytes. */
    public const SG_COMMAND_GRIP_OUT = 7;
    /** @brief Original SG_COMMAND_BLOW_ON_1 constant; consumes no instance bytes. */
    public const SG_COMMAND_BLOW_ON_1 = 8;
    /** @brief Original SG_COMMAND_BLOW_ON_2 constant; consumes no instance bytes. */
    public const SG_COMMAND_BLOW_ON_2 = 9;
    /** @brief Original SG_COMMAND_BLOW_OFF_1 constant; consumes no instance bytes. */
    public const SG_COMMAND_BLOW_OFF_1 = 10;
    /** @brief Original SG_COMMAND_BLOW_OFF_2 constant; consumes no instance bytes. */
    public const SG_COMMAND_BLOW_OFF_2 = 11;
    /** @brief Original SG_COMMAND_VACUUM_ON_1 constant; consumes no instance bytes. */
    public const SG_COMMAND_VACUUM_ON_1 = 12;
    /** @brief Original SG_COMMAND_VACUUM_ON_2 constant; consumes no instance bytes. */
    public const SG_COMMAND_VACUUM_ON_2 = 13;
    /** @brief Original SG_COMMAND_VACUUM_OFF_1 constant; consumes no instance bytes. */
    public const SG_COMMAND_VACUUM_OFF_1 = 14;
    /** @brief Original SG_COMMAND_VACUUM_OFF_2 constant; consumes no instance bytes. */
    public const SG_COMMAND_VACUUM_OFF_2 = 15;
    /** @brief Original task: string; scalar; bound/count 0. */
    public mixed $task;
    /** @brief Original command: uint8; scalar; bound/count 0. */
    public mixed $command;
    /** @brief Original target_position: float32; scalar; bound/count 0. */
    public mixed $target_position;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('task', $values)) { $this->task = $values['task']; }
        else
        {
            $this->task = '';
        }
        if (array_key_exists('command', $values)) { $this->command = $values['command']; }
        else
        {
            $this->command = 0;
        }
        if (array_key_exists('target_position', $values)) { $this->target_position = $values['target_position']; }
        else
        {
            $this->target_position = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/SetSGCommandResponse field; extent 6..518 bytes. */
final class Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_rapid_sm_addin_msgs/SetSGCommandResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetFileContentsRequest field; extent 4..516 bytes. */
final class Ros1Abb_robot_msgsGetFileContentsRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetFileContentsRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21',
        "minimum" => 4,
        "maximum" => 516,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetFileContentsRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'filename',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original filename: string; scalar; bound/count 0. */
    public mixed $filename;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('filename', $values)) { $this->filename = $values['filename']; }
        else
        {
            $this->filename = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetFileContentsRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetFileContentsRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetFileContentsResponse field; extent 10..4618 bytes. */
final class Ros1Abb_robot_msgsGetFileContentsResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetFileContentsResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb',
        "minimum" => 10,
        "maximum" => 4618,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetFileContentsResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'contents',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 4096,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original contents: string; scalar; bound/count 0. */
    public mixed $contents;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('contents', $values)) { $this->contents = $values['contents']; }
        else
        {
            $this->contents = '';
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetFileContentsResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetFileContentsResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetIOSignalRequest field; extent 4..516 bytes. */
final class Ros1Abb_robot_msgsGetIOSignalRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetIOSignalRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b',
        "minimum" => 4,
        "maximum" => 516,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetIOSignalRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'signal',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original signal: string; scalar; bound/count 0. */
    public mixed $signal;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('signal', $values)) { $this->signal = $values['signal']; }
        else
        {
            $this->signal = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetIOSignalRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetIOSignalRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetIOSignalResponse field; extent 10..1034 bytes. */
final class Ros1Abb_robot_msgsGetIOSignalResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetIOSignalResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e',
        "minimum" => 10,
        "maximum" => 1034,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetIOSignalResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'value',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original value: string; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = '';
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetIOSignalResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetIOSignalResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/RAPIDSymbolPath field; extent 12..204 bytes. */
final class Ros1Abb_robot_msgsRAPIDSymbolPath
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/RAPIDSymbolPath',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'task',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'module',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'symbol',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original task: string; scalar; bound/count 0. */
    public mixed $task;
    /** @brief Original module: string; scalar; bound/count 0. */
    public mixed $module;
    /** @brief Original symbol: string; scalar; bound/count 0. */
    public mixed $symbol;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('task', $values)) { $this->task = $values['task']; }
        else
        {
            $this->task = '';
        }
        if (array_key_exists('module', $values)) { $this->module = $values['module']; }
        else
        {
            $this->module = '';
        }
        if (array_key_exists('symbol', $values)) { $this->symbol = $values['symbol']; }
        else
        {
            $this->symbol = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsRAPIDSymbolPath', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsRAPIDSymbolPath', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDBoolRequest field; extent 12..204 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDBoolRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDBoolRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDBoolRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDBoolRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDBoolRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDBoolResponse field; extent 7..519 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDBoolResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDBoolResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f',
        "minimum" => 7,
        "maximum" => 519,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDBoolResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'value',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original value: bool; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = false;
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDBoolResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDBoolResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDDnumRequest field; extent 12..204 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDDnumRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDDnumRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDDnumRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDDnumRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDDnumRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDDnumResponse field; extent 14..526 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDDnumResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDDnumResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3',
        "minimum" => 14,
        "maximum" => 526,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDDnumResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'value',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original value: float64; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDDnumResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDDnumResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDNumRequest field; extent 12..204 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDNumRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDNumRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDNumRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDNumRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDNumRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDNumResponse field; extent 10..522 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDNumResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDNumResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0',
        "minimum" => 10,
        "maximum" => 522,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDNumResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'value',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original value: float32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDNumResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDNumResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDStringRequest field; extent 12..204 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDStringRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDStringRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDStringRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDStringRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDStringRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDStringResponse field; extent 10..1034 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDStringResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDStringResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854',
        "minimum" => 10,
        "maximum" => 1034,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDStringResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'value',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original value: string; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = '';
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDStringResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDStringResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDSymbolRequest field; extent 12..204 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDSymbolRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDSymbolRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDSymbolRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDSymbolRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDSymbolRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRAPIDSymbolResponse field; extent 10..1034 bytes. */
final class Ros1Abb_robot_msgsGetRAPIDSymbolResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRAPIDSymbolResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f',
        "minimum" => 10,
        "maximum" => 1034,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRAPIDSymbolResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'value',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original value: string; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = '';
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRAPIDSymbolResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRAPIDSymbolResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRobotControllerDescriptionRequest field; extent 0..0 bytes. */
final class Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRobotControllerDescriptionRequest',
        "constants" => [

        ],
        "fields" => [

        ]
    ];
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetRobotControllerDescriptionResponse field; extent 10..4618 bytes. */
final class Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39',
        "minimum" => 10,
        "maximum" => 4618,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetRobotControllerDescriptionResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'description',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 4096,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original description: string; scalar; bound/count 0. */
    public mixed $description;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('description', $values)) { $this->description = $values['description']; }
        else
        {
            $this->description = '';
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetSpeedRatioRequest field; extent 0..0 bytes. */
final class Ros1Abb_robot_msgsGetSpeedRatioRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetSpeedRatioRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetSpeedRatioRequest',
        "constants" => [

        ],
        "fields" => [

        ]
    ];
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetSpeedRatioRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetSpeedRatioRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/GetSpeedRatioResponse field; extent 7..519 bytes. */
final class Ros1Abb_robot_msgsGetSpeedRatioResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsGetSpeedRatioResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940',
        "minimum" => 7,
        "maximum" => 519,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/GetSpeedRatioResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'speed_ratio',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original speed_ratio: uint8; scalar; bound/count 0. */
    public mixed $speed_ratio;
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('speed_ratio', $values)) { $this->speed_ratio = $values['speed_ratio']; }
        else
        {
            $this->speed_ratio = 0;
        }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsGetSpeedRatioResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsGetSpeedRatioResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/MechanicalUnitState field; extent 5..69 bytes. */
final class Ros1Abb_robot_msgsMechanicalUnitState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsMechanicalUnitState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa',
        "minimum" => 5,
        "maximum" => 69,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/MechanicalUnitState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'name',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'activated',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original name: string; scalar; bound/count 0. */
    public mixed $name;
    /** @brief Original activated: bool; scalar; bound/count 0. */
    public mixed $activated;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('name', $values)) { $this->name = $values['name']; }
        else
        {
            $this->name = '';
        }
        if (array_key_exists('activated', $values)) { $this->activated = $values['activated']; }
        else
        {
            $this->activated = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsMechanicalUnitState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsMechanicalUnitState', $bytes); }
}

/** @brief Own every original abb_robot_msgs/RAPIDTaskState field; extent 7..71 bytes. */
final class Ros1Abb_robot_msgsRAPIDTaskState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsRAPIDTaskState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947',
        "minimum" => 7,
        "maximum" => 71,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/RAPIDTaskState',
        "constants" => [
            "EXECUTION_STATE_UNKNOWN" => 1,
            "EXECUTION_STATE_READY" => 2,
            "EXECUTION_STATE_STOPPED" => 3,
            "EXECUTION_STATE_STARTED" => 4,
            "EXECUTION_STATE_UNINITIALIZED" => 5
        ],
        "fields" => [
            [
                "name" => 'name',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'activated',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'execution_state',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'motion_task',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original EXECUTION_STATE_UNKNOWN constant; consumes no instance bytes. */
    public const EXECUTION_STATE_UNKNOWN = 1;
    /** @brief Original EXECUTION_STATE_READY constant; consumes no instance bytes. */
    public const EXECUTION_STATE_READY = 2;
    /** @brief Original EXECUTION_STATE_STOPPED constant; consumes no instance bytes. */
    public const EXECUTION_STATE_STOPPED = 3;
    /** @brief Original EXECUTION_STATE_STARTED constant; consumes no instance bytes. */
    public const EXECUTION_STATE_STARTED = 4;
    /** @brief Original EXECUTION_STATE_UNINITIALIZED constant; consumes no instance bytes. */
    public const EXECUTION_STATE_UNINITIALIZED = 5;
    /** @brief Original name: string; scalar; bound/count 0. */
    public mixed $name;
    /** @brief Original activated: bool; scalar; bound/count 0. */
    public mixed $activated;
    /** @brief Original execution_state: uint8; scalar; bound/count 0. */
    public mixed $execution_state;
    /** @brief Original motion_task: bool; scalar; bound/count 0. */
    public mixed $motion_task;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('name', $values)) { $this->name = $values['name']; }
        else
        {
            $this->name = '';
        }
        if (array_key_exists('activated', $values)) { $this->activated = $values['activated']; }
        else
        {
            $this->activated = false;
        }
        if (array_key_exists('execution_state', $values)) { $this->execution_state = $values['execution_state']; }
        else
        {
            $this->execution_state = 0;
        }
        if (array_key_exists('motion_task', $values)) { $this->motion_task = $values['motion_task']; }
        else
        {
            $this->motion_task = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsRAPIDTaskState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsRAPIDTaskState', $bytes); }
}

/** @brief Own every original abb_robot_msgs/ServiceResponses field; extent 0..0 bytes. */
final class Ros1Abb_robot_msgsServiceResponses
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsServiceResponses',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/ServiceResponses',
        "constants" => [
            "SUCCESS" => '',
            "RC_SUCCESS" => 1,
            "FAILED" => 'Service failed (e.g. timeout or resource not found, see the DEBUG log for details)',
            "RC_FAILED" => 2,
            "SERVER_IS_BUSY" => 'Server is busy',
            "RC_SERVER_IS_BUSY" => 1001,
            "EMPTY_FILENAME" => 'Filename is empty',
            "RC_EMPTY_FILENAME" => 2001,
            "EMPTY_SIGNAL_NAME" => 'Signal name is empty',
            "RC_EMPTY_SIGNAL_NAME" => 2002,
            "EMPTY_RAPID_TASK_NAME" => 'RAPID task name is empty',
            "RC_EMPTY_RAPID_TASK_NAME" => 2003,
            "EMPTY_RAPID_MODULE_NAME" => 'RAPID module name is empty',
            "RC_EMPTY_RAPID_MODULE_NAME" => 2004,
            "EMPTY_RAPID_SYMBOL_NAME" => 'RAPID symbol name is empty',
            "RC_EMPTY_RAPID_SYMBOL_NAME" => 2005,
            "NOT_IN_AUTO_MODE" => 'Robot controller is not in AUTO mode',
            "RC_NOT_IN_AUTO_MODE" => 3001,
            "MOTORS_ARE_OFF" => 'Motors are off',
            "RC_MOTORS_ARE_OFF" => 3002,
            "MOTORS_ARE_ON" => 'Motors are on',
            "RC_MOTORS_ARE_ON" => 3003,
            "RAPID_NOT_STOPPED" => 'RAPID has not been stopped',
            "RC_RAPID_NOT_STOPPED" => 3004,
            "RAPID_NOT_RUNNING" => 'RAPID is not running',
            "RC_RAPID_NOT_RUNNING" => 3005,
            "SM_RUNTIME_STATES_MISSING" => 'No runtime states received for any StateMachine Add-In instance',
            "RC_SM_RUNTIME_STATES_MISSING" => 4001,
            "SM_UNKNOWN_RAPID_TASK" => 'RAPID task not found among known StateMachine Add-In instances',
            "RC_SM_UNKNOWN_RAPID_TASK" => 4002,
            "SM_UNINITIALIZED" => 'StateMachine Add-In instance has not been initialized',
            "RC_SM_UNINITIALIZED" => 4003
        ],
        "fields" => [

        ]
    ];
    /** @brief Original SUCCESS constant; consumes no instance bytes. */
    public const SUCCESS = '';
    /** @brief Original RC_SUCCESS constant; consumes no instance bytes. */
    public const RC_SUCCESS = 1;
    /** @brief Original FAILED constant; consumes no instance bytes. */
    public const FAILED = 'Service failed (e.g. timeout or resource not found, see the DEBUG log for details)';
    /** @brief Original RC_FAILED constant; consumes no instance bytes. */
    public const RC_FAILED = 2;
    /** @brief Original SERVER_IS_BUSY constant; consumes no instance bytes. */
    public const SERVER_IS_BUSY = 'Server is busy';
    /** @brief Original RC_SERVER_IS_BUSY constant; consumes no instance bytes. */
    public const RC_SERVER_IS_BUSY = 1001;
    /** @brief Original EMPTY_FILENAME constant; consumes no instance bytes. */
    public const EMPTY_FILENAME = 'Filename is empty';
    /** @brief Original RC_EMPTY_FILENAME constant; consumes no instance bytes. */
    public const RC_EMPTY_FILENAME = 2001;
    /** @brief Original EMPTY_SIGNAL_NAME constant; consumes no instance bytes. */
    public const EMPTY_SIGNAL_NAME = 'Signal name is empty';
    /** @brief Original RC_EMPTY_SIGNAL_NAME constant; consumes no instance bytes. */
    public const RC_EMPTY_SIGNAL_NAME = 2002;
    /** @brief Original EMPTY_RAPID_TASK_NAME constant; consumes no instance bytes. */
    public const EMPTY_RAPID_TASK_NAME = 'RAPID task name is empty';
    /** @brief Original RC_EMPTY_RAPID_TASK_NAME constant; consumes no instance bytes. */
    public const RC_EMPTY_RAPID_TASK_NAME = 2003;
    /** @brief Original EMPTY_RAPID_MODULE_NAME constant; consumes no instance bytes. */
    public const EMPTY_RAPID_MODULE_NAME = 'RAPID module name is empty';
    /** @brief Original RC_EMPTY_RAPID_MODULE_NAME constant; consumes no instance bytes. */
    public const RC_EMPTY_RAPID_MODULE_NAME = 2004;
    /** @brief Original EMPTY_RAPID_SYMBOL_NAME constant; consumes no instance bytes. */
    public const EMPTY_RAPID_SYMBOL_NAME = 'RAPID symbol name is empty';
    /** @brief Original RC_EMPTY_RAPID_SYMBOL_NAME constant; consumes no instance bytes. */
    public const RC_EMPTY_RAPID_SYMBOL_NAME = 2005;
    /** @brief Original NOT_IN_AUTO_MODE constant; consumes no instance bytes. */
    public const NOT_IN_AUTO_MODE = 'Robot controller is not in AUTO mode';
    /** @brief Original RC_NOT_IN_AUTO_MODE constant; consumes no instance bytes. */
    public const RC_NOT_IN_AUTO_MODE = 3001;
    /** @brief Original MOTORS_ARE_OFF constant; consumes no instance bytes. */
    public const MOTORS_ARE_OFF = 'Motors are off';
    /** @brief Original RC_MOTORS_ARE_OFF constant; consumes no instance bytes. */
    public const RC_MOTORS_ARE_OFF = 3002;
    /** @brief Original MOTORS_ARE_ON constant; consumes no instance bytes. */
    public const MOTORS_ARE_ON = 'Motors are on';
    /** @brief Original RC_MOTORS_ARE_ON constant; consumes no instance bytes. */
    public const RC_MOTORS_ARE_ON = 3003;
    /** @brief Original RAPID_NOT_STOPPED constant; consumes no instance bytes. */
    public const RAPID_NOT_STOPPED = 'RAPID has not been stopped';
    /** @brief Original RC_RAPID_NOT_STOPPED constant; consumes no instance bytes. */
    public const RC_RAPID_NOT_STOPPED = 3004;
    /** @brief Original RAPID_NOT_RUNNING constant; consumes no instance bytes. */
    public const RAPID_NOT_RUNNING = 'RAPID is not running';
    /** @brief Original RC_RAPID_NOT_RUNNING constant; consumes no instance bytes. */
    public const RC_RAPID_NOT_RUNNING = 3005;
    /** @brief Original SM_RUNTIME_STATES_MISSING constant; consumes no instance bytes. */
    public const SM_RUNTIME_STATES_MISSING = 'No runtime states received for any StateMachine Add-In instance';
    /** @brief Original RC_SM_RUNTIME_STATES_MISSING constant; consumes no instance bytes. */
    public const RC_SM_RUNTIME_STATES_MISSING = 4001;
    /** @brief Original SM_UNKNOWN_RAPID_TASK constant; consumes no instance bytes. */
    public const SM_UNKNOWN_RAPID_TASK = 'RAPID task not found among known StateMachine Add-In instances';
    /** @brief Original RC_SM_UNKNOWN_RAPID_TASK constant; consumes no instance bytes. */
    public const RC_SM_UNKNOWN_RAPID_TASK = 4002;
    /** @brief Original SM_UNINITIALIZED constant; consumes no instance bytes. */
    public const SM_UNINITIALIZED = 'StateMachine Add-In instance has not been initialized';
    /** @brief Original RC_SM_UNINITIALIZED constant; consumes no instance bytes. */
    public const RC_SM_UNINITIALIZED = 4003;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsServiceResponses', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsServiceResponses', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetFileContentsRequest field; extent 8..4616 bytes. */
final class Ros1Abb_robot_msgsSetFileContentsRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetFileContentsRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012',
        "minimum" => 8,
        "maximum" => 4616,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetFileContentsRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'filename',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'contents',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 4096,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original filename: string; scalar; bound/count 0. */
    public mixed $filename;
    /** @brief Original contents: string; scalar; bound/count 0. */
    public mixed $contents;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('filename', $values)) { $this->filename = $values['filename']; }
        else
        {
            $this->filename = '';
        }
        if (array_key_exists('contents', $values)) { $this->contents = $values['contents']; }
        else
        {
            $this->contents = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetFileContentsRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetFileContentsRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetFileContentsResponse field; extent 6..518 bytes. */
final class Ros1Abb_robot_msgsSetFileContentsResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetFileContentsResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetFileContentsResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetFileContentsResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetFileContentsResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetIOSignalRequest field; extent 8..1032 bytes. */
final class Ros1Abb_robot_msgsSetIOSignalRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetIOSignalRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9',
        "minimum" => 8,
        "maximum" => 1032,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetIOSignalRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'signal',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'value',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original signal: string; scalar; bound/count 0. */
    public mixed $signal;
    /** @brief Original value: string; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('signal', $values)) { $this->signal = $values['signal']; }
        else
        {
            $this->signal = '';
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetIOSignalRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetIOSignalRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetIOSignalResponse field; extent 6..518 bytes. */
final class Ros1Abb_robot_msgsSetIOSignalResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetIOSignalResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetIOSignalResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetIOSignalResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetIOSignalResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDBoolRequest field; extent 13..205 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDBoolRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDBoolRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d',
        "minimum" => 13,
        "maximum" => 205,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDBoolRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'value',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Original value: bool; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDBoolRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDBoolRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDBoolResponse field; extent 6..518 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDBoolResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDBoolResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDBoolResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDBoolResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDBoolResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDDnumRequest field; extent 20..212 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDDnumRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDDnumRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9',
        "minimum" => 20,
        "maximum" => 212,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDDnumRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'value',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Original value: float64; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDDnumRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDDnumRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDDnumResponse field; extent 6..518 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDDnumResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDDnumResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDDnumResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDDnumResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDDnumResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDNumRequest field; extent 16..208 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDNumRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDNumRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f',
        "minimum" => 16,
        "maximum" => 208,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDNumRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'value',
                "type" => 'float32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Original value: float32; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDNumRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDNumRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDNumResponse field; extent 6..518 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDNumResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDNumResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDNumResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDNumResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDNumResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDStringRequest field; extent 16..720 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDStringRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDStringRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c',
        "minimum" => 16,
        "maximum" => 720,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDStringRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'value',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Original value: string; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDStringRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDStringRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDStringResponse field; extent 6..518 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDStringResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDStringResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDStringResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDStringResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDStringResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDSymbolRequest field; extent 16..720 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDSymbolRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDSymbolRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d',
        "minimum" => 16,
        "maximum" => 720,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDSymbolRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros1Abb_robot_msgsRAPIDSymbolPath',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 12
            ],
            [
                "name" => 'value',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original path: Ros1Abb_robot_msgsRAPIDSymbolPath; scalar; bound/count 0. */
    public mixed $path;
    /** @brief Original value: string; scalar; bound/count 0. */
    public mixed $value;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('path', $values)) { $this->path = $values['path']; }
        else
        {
            $this->path = new Ros1Abb_robot_msgsRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDSymbolRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDSymbolRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetRAPIDSymbolResponse field; extent 6..518 bytes. */
final class Ros1Abb_robot_msgsSetRAPIDSymbolResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetRAPIDSymbolResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetRAPIDSymbolResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetRAPIDSymbolResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetRAPIDSymbolResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetSpeedRatioRequest field; extent 1..1 bytes. */
final class Ros1Abb_robot_msgsSetSpeedRatioRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetSpeedRatioRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetSpeedRatioRequest',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'speed_ratio',
                "type" => 'uint8',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ]
        ]
    ];
    /** @brief Original speed_ratio: uint8; scalar; bound/count 0. */
    public mixed $speed_ratio;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('speed_ratio', $values)) { $this->speed_ratio = $values['speed_ratio']; }
        else
        {
            $this->speed_ratio = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetSpeedRatioRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetSpeedRatioRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SetSpeedRatioResponse field; extent 6..518 bytes. */
final class Ros1Abb_robot_msgsSetSpeedRatioResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSetSpeedRatioResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SetSpeedRatioResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSetSpeedRatioResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSetSpeedRatioResponse', $bytes); }
}

/** @brief Own every original abb_robot_msgs/SystemState field; extent 27..2331 bytes. */
final class Ros1Abb_robot_msgsSystemState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsSystemState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2',
        "minimum" => 27,
        "maximum" => 2331,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/SystemState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros1Std_msgsHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ],
            [
                "name" => 'motors_on',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'auto_mode',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'rapid_running',
                "type" => 'bool',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 1
            ],
            [
                "name" => 'rapid_tasks',
                "type" => 'Ros1Abb_robot_msgsRAPIDTaskState',
                "array" => 'sequence',
                "count" => 16,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 7
            ],
            [
                "name" => 'mechanical_units',
                "type" => 'Ros1Abb_robot_msgsMechanicalUnitState',
                "array" => 'sequence',
                "count" => 16,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 5
            ]
        ]
    ];
    /** @brief Original header: Ros1Std_msgsHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original motors_on: bool; scalar; bound/count 0. */
    public mixed $motors_on;
    /** @brief Original auto_mode: bool; scalar; bound/count 0. */
    public mixed $auto_mode;
    /** @brief Original rapid_running: bool; scalar; bound/count 0. */
    public mixed $rapid_running;
    /** @brief Original rapid_tasks: Ros1Abb_robot_msgsRAPIDTaskState; sequence; bound/count 16. */
    public mixed $rapid_tasks;
    /** @brief Original mechanical_units: Ros1Abb_robot_msgsMechanicalUnitState; sequence; bound/count 16. */
    public mixed $mechanical_units;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros1Std_msgsHeader();
        }
        if (array_key_exists('motors_on', $values)) { $this->motors_on = $values['motors_on']; }
        else
        {
            $this->motors_on = false;
        }
        if (array_key_exists('auto_mode', $values)) { $this->auto_mode = $values['auto_mode']; }
        else
        {
            $this->auto_mode = false;
        }
        if (array_key_exists('rapid_running', $values)) { $this->rapid_running = $values['rapid_running']; }
        else
        {
            $this->rapid_running = false;
        }
        if (array_key_exists('rapid_tasks', $values)) { $this->rapid_tasks = $values['rapid_tasks']; }
        else
        {
            $this->rapid_tasks = [];
        }
        if (array_key_exists('mechanical_units', $values)) { $this->mechanical_units = $values['mechanical_units']; }
        else
        {
            $this->mechanical_units = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsSystemState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsSystemState', $bytes); }
}

/** @brief Own every original abb_robot_msgs/TriggerWithResultCodeRequest field; extent 0..0 bytes. */
final class Ros1Abb_robot_msgsTriggerWithResultCodeRequest
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsTriggerWithResultCodeRequest',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/TriggerWithResultCodeRequest',
        "constants" => [

        ],
        "fields" => [

        ]
    ];
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsTriggerWithResultCodeRequest', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsTriggerWithResultCodeRequest', $bytes); }
}

/** @brief Own every original abb_robot_msgs/TriggerWithResultCodeResponse field; extent 6..518 bytes. */
final class Ros1Abb_robot_msgsTriggerWithResultCodeResponse
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Abb_robot_msgsTriggerWithResultCodeResponse',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'abb_robot_msgs/TriggerWithResultCodeResponse',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'result_code',
                "type" => 'uint16',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 2
            ],
            [
                "name" => 'message',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 512,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original result_code: uint16; scalar; bound/count 0. */
    public mixed $result_code;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('result_code', $values)) { $this->result_code = $values['result_code']; }
        else
        {
            $this->result_code = 0;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Abb_robot_msgsTriggerWithResultCodeResponse', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Abb_robot_msgsTriggerWithResultCodeResponse', $bytes); }
}

/** @brief Own every original duration field; extent 8..8 bytes. */
final class Ros1Duration
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Duration',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => 'normalized-duration',
        "ros_version" => 1,
        "native_type" => 'duration',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'sec',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'nsec',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original sec: int32; scalar; bound/count 0. */
    public mixed $sec;
    /** @brief Original nsec: int32; scalar; bound/count 0. */
    public mixed $nsec;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('sec', $values)) { $this->sec = $values['sec']; }
        else
        {
            $this->sec = 0;
        }
        if (array_key_exists('nsec', $values)) { $this->nsec = $values['nsec']; }
        else
        {
            $this->nsec = 0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Duration', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Duration', $bytes); }
}

/** @brief Own every original trajectory_msgs/JointTrajectoryPoint field; extent 24..408 bytes. */
final class Ros1Trajectory_msgsJointTrajectoryPoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Trajectory_msgsJointTrajectoryPoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5',
        "minimum" => 24,
        "maximum" => 408,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'trajectory_msgs/JointTrajectoryPoint',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'positions',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'velocities',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'accelerations',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'effort',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'time_from_start',
                "type" => 'Ros1Duration',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original positions: float64; sequence; bound/count 12. */
    public mixed $positions;
    /** @brief Original velocities: float64; sequence; bound/count 12. */
    public mixed $velocities;
    /** @brief Original accelerations: float64; sequence; bound/count 12. */
    public mixed $accelerations;
    /** @brief Original effort: float64; sequence; bound/count 12. */
    public mixed $effort;
    /** @brief Original time_from_start: Ros1Duration; scalar; bound/count 0. */
    public mixed $time_from_start;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('positions', $values)) { $this->positions = $values['positions']; }
        else
        {
            $this->positions = [];
        }
        if (array_key_exists('velocities', $values)) { $this->velocities = $values['velocities']; }
        else
        {
            $this->velocities = [];
        }
        if (array_key_exists('accelerations', $values)) { $this->accelerations = $values['accelerations']; }
        else
        {
            $this->accelerations = [];
        }
        if (array_key_exists('effort', $values)) { $this->effort = $values['effort']; }
        else
        {
            $this->effort = [];
        }
        if (array_key_exists('time_from_start', $values)) { $this->time_from_start = $values['time_from_start']; }
        else
        {
            $this->time_from_start = new Ros1Duration();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Trajectory_msgsJointTrajectoryPoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Trajectory_msgsJointTrajectoryPoint', $bytes); }
}

/** @brief Own every original trajectory_msgs/JointTrajectory field; extent 24..4168 bytes. */
final class Ros1Trajectory_msgsJointTrajectory
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Trajectory_msgsJointTrajectory',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b',
        "minimum" => 24,
        "maximum" => 4168,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'trajectory_msgs/JointTrajectory',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros1Std_msgsHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ],
            [
                "name" => 'joint_names',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'points',
                "type" => 'Ros1Trajectory_msgsJointTrajectoryPoint',
                "array" => 'sequence',
                "count" => 8,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ]
        ]
    ];
    /** @brief Original header: Ros1Std_msgsHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence; bound/count 12. */
    public mixed $joint_names;
    /** @brief Original points: Ros1Trajectory_msgsJointTrajectoryPoint; sequence; bound/count 8. */
    public mixed $points;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros1Std_msgsHeader();
        }
        if (array_key_exists('joint_names', $values)) { $this->joint_names = $values['joint_names']; }
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('points', $values)) { $this->points = $values['points']; }
        else
        {
            $this->points = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Trajectory_msgsJointTrajectory', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Trajectory_msgsJointTrajectory', $bytes); }
}

/** @brief Own every original control_msgs/JointTolerance field; extent 28..92 bytes. */
final class Ros1Control_msgsJointTolerance
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Control_msgsJointTolerance',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88',
        "minimum" => 28,
        "maximum" => 92,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'control_msgs/JointTolerance',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'name',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'position',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'velocity',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'acceleration',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original name: string; scalar; bound/count 0. */
    public mixed $name;
    /** @brief Original position: float64; scalar; bound/count 0. */
    public mixed $position;
    /** @brief Original velocity: float64; scalar; bound/count 0. */
    public mixed $velocity;
    /** @brief Original acceleration: float64; scalar; bound/count 0. */
    public mixed $acceleration;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('name', $values)) { $this->name = $values['name']; }
        else
        {
            $this->name = '';
        }
        if (array_key_exists('position', $values)) { $this->position = $values['position']; }
        else
        {
            $this->position = 0.0;
        }
        if (array_key_exists('velocity', $values)) { $this->velocity = $values['velocity']; }
        else
        {
            $this->velocity = 0.0;
        }
        if (array_key_exists('acceleration', $values)) { $this->acceleration = $values['acceleration']; }
        else
        {
            $this->acceleration = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Control_msgsJointTolerance', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Control_msgsJointTolerance', $bytes); }
}

/** @brief Own every original control_msgs/FollowJointTrajectoryGoal field; extent 40..6392 bytes. */
final class Ros1Control_msgsFollowJointTrajectoryGoal
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Control_msgsFollowJointTrajectoryGoal',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40',
        "minimum" => 40,
        "maximum" => 6392,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'control_msgs/FollowJointTrajectoryGoal',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'trajectory',
                "type" => 'Ros1Trajectory_msgsJointTrajectory',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'path_tolerance',
                "type" => 'Ros1Control_msgsJointTolerance',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ],
            [
                "name" => 'goal_tolerance',
                "type" => 'Ros1Control_msgsJointTolerance',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 28
            ],
            [
                "name" => 'goal_time_tolerance',
                "type" => 'Ros1Duration',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original trajectory: Ros1Trajectory_msgsJointTrajectory; scalar; bound/count 0. */
    public mixed $trajectory;
    /** @brief Original path_tolerance: Ros1Control_msgsJointTolerance; sequence; bound/count 12. */
    public mixed $path_tolerance;
    /** @brief Original goal_tolerance: Ros1Control_msgsJointTolerance; sequence; bound/count 12. */
    public mixed $goal_tolerance;
    /** @brief Original goal_time_tolerance: Ros1Duration; scalar; bound/count 0. */
    public mixed $goal_time_tolerance;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('trajectory', $values)) { $this->trajectory = $values['trajectory']; }
        else
        {
            $this->trajectory = new Ros1Trajectory_msgsJointTrajectory();
        }
        if (array_key_exists('path_tolerance', $values)) { $this->path_tolerance = $values['path_tolerance']; }
        else
        {
            $this->path_tolerance = [];
        }
        if (array_key_exists('goal_tolerance', $values)) { $this->goal_tolerance = $values['goal_tolerance']; }
        else
        {
            $this->goal_tolerance = [];
        }
        if (array_key_exists('goal_time_tolerance', $values)) { $this->goal_time_tolerance = $values['goal_time_tolerance']; }
        else
        {
            $this->goal_time_tolerance = new Ros1Duration();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Control_msgsFollowJointTrajectoryGoal', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Control_msgsFollowJointTrajectoryGoal', $bytes); }
}

/** @brief Own every original control_msgs/FollowJointTrajectoryResult field; extent 8..4104 bytes. */
final class Ros1Control_msgsFollowJointTrajectoryResult
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Control_msgsFollowJointTrajectoryResult',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281',
        "minimum" => 8,
        "maximum" => 4104,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'control_msgs/FollowJointTrajectoryResult',
        "constants" => [
            "SUCCESSFUL" => 0,
            "INVALID_GOAL" => -1,
            "INVALID_JOINTS" => -2,
            "OLD_HEADER_TIMESTAMP" => -3,
            "PATH_TOLERANCE_VIOLATED" => -4,
            "GOAL_TOLERANCE_VIOLATED" => -5
        ],
        "fields" => [
            [
                "name" => 'error_code',
                "type" => 'int32',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'error_string',
                "type" => 'string',
                "array" => '',
                "count" => 0,
                "string_bound" => 4096,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ]
        ]
    ];
    /** @brief Original SUCCESSFUL constant; consumes no instance bytes. */
    public const SUCCESSFUL = 0;
    /** @brief Original INVALID_GOAL constant; consumes no instance bytes. */
    public const INVALID_GOAL = -1;
    /** @brief Original INVALID_JOINTS constant; consumes no instance bytes. */
    public const INVALID_JOINTS = -2;
    /** @brief Original OLD_HEADER_TIMESTAMP constant; consumes no instance bytes. */
    public const OLD_HEADER_TIMESTAMP = -3;
    /** @brief Original PATH_TOLERANCE_VIOLATED constant; consumes no instance bytes. */
    public const PATH_TOLERANCE_VIOLATED = -4;
    /** @brief Original GOAL_TOLERANCE_VIOLATED constant; consumes no instance bytes. */
    public const GOAL_TOLERANCE_VIOLATED = -5;
    /** @brief Original error_code: int32; scalar; bound/count 0. */
    public mixed $error_code;
    /** @brief Original error_string: string; scalar; bound/count 0. */
    public mixed $error_string;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('error_code', $values)) { $this->error_code = $values['error_code']; }
        else
        {
            $this->error_code = 0;
        }
        if (array_key_exists('error_string', $values)) { $this->error_string = $values['error_string']; }
        else
        {
            $this->error_string = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Control_msgsFollowJointTrajectoryResult', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Control_msgsFollowJointTrajectoryResult', $bytes); }
}

/** @brief Own every original control_msgs/FollowJointTrajectoryFeedback field; extent 92..2124 bytes. */
final class Ros1Control_msgsFollowJointTrajectoryFeedback
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Control_msgsFollowJointTrajectoryFeedback',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8',
        "minimum" => 92,
        "maximum" => 2124,
        "semantics" => '',
        "ros_version" => 1,
        "native_type" => 'control_msgs/FollowJointTrajectoryFeedback',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros1Std_msgsHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ],
            [
                "name" => 'joint_names',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'desired',
                "type" => 'Ros1Trajectory_msgsJointTrajectoryPoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'actual',
                "type" => 'Ros1Trajectory_msgsJointTrajectoryPoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ],
            [
                "name" => 'error',
                "type" => 'Ros1Trajectory_msgsJointTrajectoryPoint',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 24
            ]
        ]
    ];
    /** @brief Original header: Ros1Std_msgsHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence; bound/count 12. */
    public mixed $joint_names;
    /** @brief Original desired: Ros1Trajectory_msgsJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $desired;
    /** @brief Original actual: Ros1Trajectory_msgsJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $actual;
    /** @brief Original error: Ros1Trajectory_msgsJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $error;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros1Std_msgsHeader();
        }
        if (array_key_exists('joint_names', $values)) { $this->joint_names = $values['joint_names']; }
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('desired', $values)) { $this->desired = $values['desired']; }
        else
        {
            $this->desired = new Ros1Trajectory_msgsJointTrajectoryPoint();
        }
        if (array_key_exists('actual', $values)) { $this->actual = $values['actual']; }
        else
        {
            $this->actual = new Ros1Trajectory_msgsJointTrajectoryPoint();
        }
        if (array_key_exists('error', $values)) { $this->error = $values['error']; }
        else
        {
            $this->error = new Ros1Trajectory_msgsJointTrajectoryPoint();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Control_msgsFollowJointTrajectoryFeedback', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Control_msgsFollowJointTrajectoryFeedback', $bytes); }
}

/** @brief Own every original sensor_msgs/JointState field; extent 32..1200 bytes. */
final class Ros1Sensor_msgsJointState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros1Sensor_msgsJointState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057',
        "minimum" => 32,
        "maximum" => 1200,
        "semantics" => 'joint-state-optional-equal-length-arrays',
        "ros_version" => 1,
        "native_type" => 'sensor_msgs/JointState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros1Std_msgsHeader',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 16
            ],
            [
                "name" => 'name',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 64,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 4
            ],
            [
                "name" => 'position',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'velocity',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ],
            [
                "name" => 'effort',
                "type" => 'float64',
                "array" => 'sequence',
                "count" => 12,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8
            ]
        ]
    ];
    /** @brief Original header: Ros1Std_msgsHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original name: string; sequence; bound/count 12. */
    public mixed $name;
    /** @brief Original position: float64; sequence; bound/count 12. */
    public mixed $position;
    /** @brief Original velocity: float64; sequence; bound/count 12. */
    public mixed $velocity;
    /** @brief Original effort: float64; sequence; bound/count 12. */
    public mixed $effort;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros1Std_msgsHeader();
        }
        if (array_key_exists('name', $values)) { $this->name = $values['name']; }
        else
        {
            $this->name = [];
        }
        if (array_key_exists('position', $values)) { $this->position = $values['position']; }
        else
        {
            $this->position = [];
        }
        if (array_key_exists('velocity', $values)) { $this->velocity = $values['velocity']; }
        else
        {
            $this->velocity = [];
        }
        if (array_key_exists('effort', $values)) { $this->effort = $values['effort']; }
        else
        {
            $this->effort = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros1Sensor_msgsJointState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros1Sensor_msgsJointState', $bytes); }
}

/** @brief Borrow the module's pure codec registry; construction opens no ROS resource.
 * @return Wire One lazily constructed registry over exact complete class schemas. */
function registry(): Wire
{
    static $wire = null;
    if ($wire === null)
    {
        $wire = new Wire([
            'Ros1Abb_egm_msgsEGMChannelState' =>
                Ros1Abb_egm_msgsEGMChannelState::SCHEMA + ['class' => Ros1Abb_egm_msgsEGMChannelState::class],
            'Ros1Time' =>
                Ros1Time::SCHEMA + ['class' => Ros1Time::class],
            'Ros1Std_msgsHeader' =>
                Ros1Std_msgsHeader::SCHEMA + ['class' => Ros1Std_msgsHeader::class],
            'Ros1Abb_egm_msgsEGMState' =>
                Ros1Abb_egm_msgsEGMState::SCHEMA + ['class' => Ros1Abb_egm_msgsEGMState::class],
            'Ros1Abb_rapid_msgsConfData' =>
                Ros1Abb_rapid_msgsConfData::SCHEMA + ['class' => Ros1Abb_rapid_msgsConfData::class],
            'Ros1Abb_rapid_msgsExtJoint' =>
                Ros1Abb_rapid_msgsExtJoint::SCHEMA + ['class' => Ros1Abb_rapid_msgsExtJoint::class],
            'Ros1Abb_rapid_msgsRobJoint' =>
                Ros1Abb_rapid_msgsRobJoint::SCHEMA + ['class' => Ros1Abb_rapid_msgsRobJoint::class],
            'Ros1Abb_rapid_msgsJointTarget' =>
                Ros1Abb_rapid_msgsJointTarget::SCHEMA + ['class' => Ros1Abb_rapid_msgsJointTarget::class],
            'Ros1Abb_rapid_msgsPos' =>
                Ros1Abb_rapid_msgsPos::SCHEMA + ['class' => Ros1Abb_rapid_msgsPos::class],
            'Ros1Abb_rapid_msgsOrient' =>
                Ros1Abb_rapid_msgsOrient::SCHEMA + ['class' => Ros1Abb_rapid_msgsOrient::class],
            'Ros1Abb_rapid_msgsLoadData' =>
                Ros1Abb_rapid_msgsLoadData::SCHEMA + ['class' => Ros1Abb_rapid_msgsLoadData::class],
            'Ros1Abb_rapid_msgsPose' =>
                Ros1Abb_rapid_msgsPose::SCHEMA + ['class' => Ros1Abb_rapid_msgsPose::class],
            'Ros1Abb_rapid_msgsRobTarget' =>
                Ros1Abb_rapid_msgsRobTarget::SCHEMA + ['class' => Ros1Abb_rapid_msgsRobTarget::class],
            'Ros1Abb_rapid_msgsToolData' =>
                Ros1Abb_rapid_msgsToolData::SCHEMA + ['class' => Ros1Abb_rapid_msgsToolData::class],
            'Ros1Abb_rapid_msgsWObjData' =>
                Ros1Abb_rapid_msgsWObjData::SCHEMA + ['class' => Ros1Abb_rapid_msgsWObjData::class],
            'Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings' =>
                Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings::class],
            'Ros1Abb_rapid_sm_addin_msgsEGMRunSettings' =>
                Ros1Abb_rapid_sm_addin_msgsEGMRunSettings::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsEGMRunSettings::class],
            'Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings' =>
                Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings::class],
            'Ros1Abb_rapid_sm_addin_msgsEGMStopSettings' =>
                Ros1Abb_rapid_sm_addin_msgsEGMStopSettings::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsEGMStopSettings::class],
            'Ros1Abb_rapid_sm_addin_msgsEGMSettings' =>
                Ros1Abb_rapid_sm_addin_msgsEGMSettings::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsEGMSettings::class],
            'Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest' =>
                Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest::class],
            'Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse' =>
                Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse::class],
            'Ros1Abb_rapid_sm_addin_msgsStateMachineState' =>
                Ros1Abb_rapid_sm_addin_msgsStateMachineState::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsStateMachineState::class],
            'Ros1Abb_rapid_sm_addin_msgsRuntimeState' =>
                Ros1Abb_rapid_sm_addin_msgsRuntimeState::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsRuntimeState::class],
            'Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest' =>
                Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest::class],
            'Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse' =>
                Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse::class],
            'Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest' =>
                Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest::class],
            'Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse' =>
                Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse::class],
            'Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest' =>
                Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest::class],
            'Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse' =>
                Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse::SCHEMA + ['class' => Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse::class],
            'Ros1Abb_robot_msgsGetFileContentsRequest' =>
                Ros1Abb_robot_msgsGetFileContentsRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsGetFileContentsRequest::class],
            'Ros1Abb_robot_msgsGetFileContentsResponse' =>
                Ros1Abb_robot_msgsGetFileContentsResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsGetFileContentsResponse::class],
            'Ros1Abb_robot_msgsGetIOSignalRequest' =>
                Ros1Abb_robot_msgsGetIOSignalRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsGetIOSignalRequest::class],
            'Ros1Abb_robot_msgsGetIOSignalResponse' =>
                Ros1Abb_robot_msgsGetIOSignalResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsGetIOSignalResponse::class],
            'Ros1Abb_robot_msgsRAPIDSymbolPath' =>
                Ros1Abb_robot_msgsRAPIDSymbolPath::SCHEMA + ['class' => Ros1Abb_robot_msgsRAPIDSymbolPath::class],
            'Ros1Abb_robot_msgsGetRAPIDBoolRequest' =>
                Ros1Abb_robot_msgsGetRAPIDBoolRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDBoolRequest::class],
            'Ros1Abb_robot_msgsGetRAPIDBoolResponse' =>
                Ros1Abb_robot_msgsGetRAPIDBoolResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDBoolResponse::class],
            'Ros1Abb_robot_msgsGetRAPIDDnumRequest' =>
                Ros1Abb_robot_msgsGetRAPIDDnumRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDDnumRequest::class],
            'Ros1Abb_robot_msgsGetRAPIDDnumResponse' =>
                Ros1Abb_robot_msgsGetRAPIDDnumResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDDnumResponse::class],
            'Ros1Abb_robot_msgsGetRAPIDNumRequest' =>
                Ros1Abb_robot_msgsGetRAPIDNumRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDNumRequest::class],
            'Ros1Abb_robot_msgsGetRAPIDNumResponse' =>
                Ros1Abb_robot_msgsGetRAPIDNumResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDNumResponse::class],
            'Ros1Abb_robot_msgsGetRAPIDStringRequest' =>
                Ros1Abb_robot_msgsGetRAPIDStringRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDStringRequest::class],
            'Ros1Abb_robot_msgsGetRAPIDStringResponse' =>
                Ros1Abb_robot_msgsGetRAPIDStringResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDStringResponse::class],
            'Ros1Abb_robot_msgsGetRAPIDSymbolRequest' =>
                Ros1Abb_robot_msgsGetRAPIDSymbolRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDSymbolRequest::class],
            'Ros1Abb_robot_msgsGetRAPIDSymbolResponse' =>
                Ros1Abb_robot_msgsGetRAPIDSymbolResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRAPIDSymbolResponse::class],
            'Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest' =>
                Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest::class],
            'Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse' =>
                Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse::class],
            'Ros1Abb_robot_msgsGetSpeedRatioRequest' =>
                Ros1Abb_robot_msgsGetSpeedRatioRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsGetSpeedRatioRequest::class],
            'Ros1Abb_robot_msgsGetSpeedRatioResponse' =>
                Ros1Abb_robot_msgsGetSpeedRatioResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsGetSpeedRatioResponse::class],
            'Ros1Abb_robot_msgsMechanicalUnitState' =>
                Ros1Abb_robot_msgsMechanicalUnitState::SCHEMA + ['class' => Ros1Abb_robot_msgsMechanicalUnitState::class],
            'Ros1Abb_robot_msgsRAPIDTaskState' =>
                Ros1Abb_robot_msgsRAPIDTaskState::SCHEMA + ['class' => Ros1Abb_robot_msgsRAPIDTaskState::class],
            'Ros1Abb_robot_msgsServiceResponses' =>
                Ros1Abb_robot_msgsServiceResponses::SCHEMA + ['class' => Ros1Abb_robot_msgsServiceResponses::class],
            'Ros1Abb_robot_msgsSetFileContentsRequest' =>
                Ros1Abb_robot_msgsSetFileContentsRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsSetFileContentsRequest::class],
            'Ros1Abb_robot_msgsSetFileContentsResponse' =>
                Ros1Abb_robot_msgsSetFileContentsResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsSetFileContentsResponse::class],
            'Ros1Abb_robot_msgsSetIOSignalRequest' =>
                Ros1Abb_robot_msgsSetIOSignalRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsSetIOSignalRequest::class],
            'Ros1Abb_robot_msgsSetIOSignalResponse' =>
                Ros1Abb_robot_msgsSetIOSignalResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsSetIOSignalResponse::class],
            'Ros1Abb_robot_msgsSetRAPIDBoolRequest' =>
                Ros1Abb_robot_msgsSetRAPIDBoolRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDBoolRequest::class],
            'Ros1Abb_robot_msgsSetRAPIDBoolResponse' =>
                Ros1Abb_robot_msgsSetRAPIDBoolResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDBoolResponse::class],
            'Ros1Abb_robot_msgsSetRAPIDDnumRequest' =>
                Ros1Abb_robot_msgsSetRAPIDDnumRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDDnumRequest::class],
            'Ros1Abb_robot_msgsSetRAPIDDnumResponse' =>
                Ros1Abb_robot_msgsSetRAPIDDnumResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDDnumResponse::class],
            'Ros1Abb_robot_msgsSetRAPIDNumRequest' =>
                Ros1Abb_robot_msgsSetRAPIDNumRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDNumRequest::class],
            'Ros1Abb_robot_msgsSetRAPIDNumResponse' =>
                Ros1Abb_robot_msgsSetRAPIDNumResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDNumResponse::class],
            'Ros1Abb_robot_msgsSetRAPIDStringRequest' =>
                Ros1Abb_robot_msgsSetRAPIDStringRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDStringRequest::class],
            'Ros1Abb_robot_msgsSetRAPIDStringResponse' =>
                Ros1Abb_robot_msgsSetRAPIDStringResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDStringResponse::class],
            'Ros1Abb_robot_msgsSetRAPIDSymbolRequest' =>
                Ros1Abb_robot_msgsSetRAPIDSymbolRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDSymbolRequest::class],
            'Ros1Abb_robot_msgsSetRAPIDSymbolResponse' =>
                Ros1Abb_robot_msgsSetRAPIDSymbolResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsSetRAPIDSymbolResponse::class],
            'Ros1Abb_robot_msgsSetSpeedRatioRequest' =>
                Ros1Abb_robot_msgsSetSpeedRatioRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsSetSpeedRatioRequest::class],
            'Ros1Abb_robot_msgsSetSpeedRatioResponse' =>
                Ros1Abb_robot_msgsSetSpeedRatioResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsSetSpeedRatioResponse::class],
            'Ros1Abb_robot_msgsSystemState' =>
                Ros1Abb_robot_msgsSystemState::SCHEMA + ['class' => Ros1Abb_robot_msgsSystemState::class],
            'Ros1Abb_robot_msgsTriggerWithResultCodeRequest' =>
                Ros1Abb_robot_msgsTriggerWithResultCodeRequest::SCHEMA + ['class' => Ros1Abb_robot_msgsTriggerWithResultCodeRequest::class],
            'Ros1Abb_robot_msgsTriggerWithResultCodeResponse' =>
                Ros1Abb_robot_msgsTriggerWithResultCodeResponse::SCHEMA + ['class' => Ros1Abb_robot_msgsTriggerWithResultCodeResponse::class],
            'Ros1Duration' =>
                Ros1Duration::SCHEMA + ['class' => Ros1Duration::class],
            'Ros1Trajectory_msgsJointTrajectoryPoint' =>
                Ros1Trajectory_msgsJointTrajectoryPoint::SCHEMA + ['class' => Ros1Trajectory_msgsJointTrajectoryPoint::class],
            'Ros1Trajectory_msgsJointTrajectory' =>
                Ros1Trajectory_msgsJointTrajectory::SCHEMA + ['class' => Ros1Trajectory_msgsJointTrajectory::class],
            'Ros1Control_msgsJointTolerance' =>
                Ros1Control_msgsJointTolerance::SCHEMA + ['class' => Ros1Control_msgsJointTolerance::class],
            'Ros1Control_msgsFollowJointTrajectoryGoal' =>
                Ros1Control_msgsFollowJointTrajectoryGoal::SCHEMA + ['class' => Ros1Control_msgsFollowJointTrajectoryGoal::class],
            'Ros1Control_msgsFollowJointTrajectoryResult' =>
                Ros1Control_msgsFollowJointTrajectoryResult::SCHEMA + ['class' => Ros1Control_msgsFollowJointTrajectoryResult::class],
            'Ros1Control_msgsFollowJointTrajectoryFeedback' =>
                Ros1Control_msgsFollowJointTrajectoryFeedback::SCHEMA + ['class' => Ros1Control_msgsFollowJointTrajectoryFeedback::class],
            'Ros1Sensor_msgsJointState' =>
                Ros1Sensor_msgsJointState::SCHEMA + ['class' => Ros1Sensor_msgsJointState::class],
        ]);
    }
    return $wire;
}
/** @brief Original complete interface roles and identities; source metadata creates no transport authority. */
const INTERFACES = [
    "abb_egm_msgs/EGMChannelState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_egm_msgsEGMChannelState'
        ]
    ],
    "abb_egm_msgs/EGMState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_egm_msgsEGMState'
        ]
    ],
    "abb_rapid_msgs/ConfData" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsConfData'
        ]
    ],
    "abb_rapid_msgs/ExtJoint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsExtJoint'
        ]
    ],
    "abb_rapid_msgs/JointTarget" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsJointTarget'
        ]
    ],
    "abb_rapid_msgs/LoadData" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsLoadData'
        ]
    ],
    "abb_rapid_msgs/Orient" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsOrient'
        ]
    ],
    "abb_rapid_msgs/Pos" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsPos'
        ]
    ],
    "abb_rapid_msgs/Pose" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsPose'
        ]
    ],
    "abb_rapid_msgs/RobJoint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsRobJoint'
        ]
    ],
    "abb_rapid_msgs/RobTarget" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsRobTarget'
        ]
    ],
    "abb_rapid_msgs/ToolData" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsToolData'
        ]
    ],
    "abb_rapid_msgs/WObjData" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_msgsWObjData'
        ]
    ],
    "abb_rapid_sm_addin_msgs/EGMActivateSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/EGMRunSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_sm_addin_msgsEGMRunSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/EGMSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_sm_addin_msgsEGMSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/EGMSetupSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/EGMStopSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_sm_addin_msgsEGMStopSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/GetEGMSettings" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0253027efaf2571537e2c984f07e6142fea0b9fcf5c92f7a2ff3f523ac7b8ef5',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest',
            "response" => 'Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse'
        ]
    ],
    "abb_rapid_sm_addin_msgs/RuntimeState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_sm_addin_msgsRuntimeState'
        ]
    ],
    "abb_rapid_sm_addin_msgs/SetEGMSettings" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9aec8cde2ed1ce2d454df1aa284bf6a2113fded4b3d2d7a45427edcf0a2f6855',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest',
            "response" => 'Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse'
        ]
    ],
    "abb_rapid_sm_addin_msgs/SetRAPIDRoutine" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bcd1f315393a4b291d9ad86528938844a7483bf7385f40849e0ca918e66be1ed',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest',
            "response" => 'Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse'
        ]
    ],
    "abb_rapid_sm_addin_msgs/SetSGCommand" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6e5da5a8605f0f37cbd5a408b01c313cfb1179c572dc389ff51bae9cd1ebc1ff',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest',
            "response" => 'Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse'
        ]
    ],
    "abb_rapid_sm_addin_msgs/StateMachineState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_rapid_sm_addin_msgsStateMachineState'
        ]
    ],
    "abb_robot_msgs/GetFileContents" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_04b138b00b5a3edf5039a157017e54e6891c359ee0f12c7a72ee8422d56e3f9f',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsGetFileContentsRequest',
            "response" => 'Ros1Abb_robot_msgsGetFileContentsResponse'
        ]
    ],
    "abb_robot_msgs/GetIOSignal" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_036fef3e3d5eb67bde7e4d8ee2d18e560b596339f4bf4be03d9cdf5576f9689f',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsGetIOSignalRequest',
            "response" => 'Ros1Abb_robot_msgsGetIOSignalResponse'
        ]
    ],
    "abb_robot_msgs/GetRAPIDBool" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_182a675f61922c9dc50b22e4a3ed26d91c48310a89f35984929f177b3a3c28e9',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsGetRAPIDBoolRequest',
            "response" => 'Ros1Abb_robot_msgsGetRAPIDBoolResponse'
        ]
    ],
    "abb_robot_msgs/GetRAPIDDnum" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e87bf91cee65dba3d10a4b472869bd963a9aa6af745462937de5977ef6d5a449',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsGetRAPIDDnumRequest',
            "response" => 'Ros1Abb_robot_msgsGetRAPIDDnumResponse'
        ]
    ],
    "abb_robot_msgs/GetRAPIDNum" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c35b8a47d36559867fe63d94cfecb62bfad30640bacec4827b392e21d9fa96e6',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsGetRAPIDNumRequest',
            "response" => 'Ros1Abb_robot_msgsGetRAPIDNumResponse'
        ]
    ],
    "abb_robot_msgs/GetRAPIDString" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1281ff249af9139dab85872208e457616bd1ce0a2e467c57b67b39731eb04b44',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsGetRAPIDStringRequest',
            "response" => 'Ros1Abb_robot_msgsGetRAPIDStringResponse'
        ]
    ],
    "abb_robot_msgs/GetRAPIDSymbol" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7986012d8ad079e263d9b3c64b58e2a9df4e11fa0888aeccfb5bd5e4a37d60e7',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsGetRAPIDSymbolRequest',
            "response" => 'Ros1Abb_robot_msgsGetRAPIDSymbolResponse'
        ]
    ],
    "abb_robot_msgs/GetRobotControllerDescription" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2b6a26336ee541bda91cf0a87657fffccaa128dca88870405939d475351f277f',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest',
            "response" => 'Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse'
        ]
    ],
    "abb_robot_msgs/GetSpeedRatio" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9b8666adc03ec3d5542d4e7a14bbfb521881dec822629550296ab7413a1178c7',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsGetSpeedRatioRequest',
            "response" => 'Ros1Abb_robot_msgsGetSpeedRatioResponse'
        ]
    ],
    "abb_robot_msgs/MechanicalUnitState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_robot_msgsMechanicalUnitState'
        ]
    ],
    "abb_robot_msgs/RAPIDSymbolPath" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_robot_msgsRAPIDSymbolPath'
        ]
    ],
    "abb_robot_msgs/RAPIDTaskState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_robot_msgsRAPIDTaskState'
        ]
    ],
    "abb_robot_msgs/ServiceResponses" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4',
        "registered" => false,
        "components" => [
            "message" => 'Ros1Abb_robot_msgsServiceResponses'
        ]
    ],
    "abb_robot_msgs/SetFileContents" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ff990d5dc508f98a3da7be8a384058a19d333f9e4838e86b71091e24bff7eb64',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsSetFileContentsRequest',
            "response" => 'Ros1Abb_robot_msgsSetFileContentsResponse'
        ]
    ],
    "abb_robot_msgs/SetIOSignal" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8ff8f149fadfaffd6f582f2090fd182a16b9a3d43858ae66d042d7365a880839',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsSetIOSignalRequest',
            "response" => 'Ros1Abb_robot_msgsSetIOSignalResponse'
        ]
    ],
    "abb_robot_msgs/SetRAPIDBool" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5b029cc2edc4850b305ff775050ae8f0034e8220c6e2b5c7296459154c4dcf3f',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsSetRAPIDBoolRequest',
            "response" => 'Ros1Abb_robot_msgsSetRAPIDBoolResponse'
        ]
    ],
    "abb_robot_msgs/SetRAPIDDnum" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_97eda55ed270b85a3bdb51b8ab78871daff9d633b3b78d3c8a2ec2548ebe6d6d',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsSetRAPIDDnumRequest',
            "response" => 'Ros1Abb_robot_msgsSetRAPIDDnumResponse'
        ]
    ],
    "abb_robot_msgs/SetRAPIDNum" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7dd40d2cdd66be9f56dd41e2b78e3b80df54dcbfd7443ba69d11a9329754476e',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsSetRAPIDNumRequest',
            "response" => 'Ros1Abb_robot_msgsSetRAPIDNumResponse'
        ]
    ],
    "abb_robot_msgs/SetRAPIDString" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b352ad129019c8685cb84955b6d97e01ffe11e420cb3a6e49036e710435facdd',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsSetRAPIDStringRequest',
            "response" => 'Ros1Abb_robot_msgsSetRAPIDStringResponse'
        ]
    ],
    "abb_robot_msgs/SetRAPIDSymbol" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_44ff20c39fd153e71cb0241fde5920443443d3647af86b456665c1110313bdbf',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsSetRAPIDSymbolRequest',
            "response" => 'Ros1Abb_robot_msgsSetRAPIDSymbolResponse'
        ]
    ],
    "abb_robot_msgs/SetSpeedRatio" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_759ba188de8b29ddf84bb52f7a628e39ae89e05f522077531efc1c6ed0241bb6',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsSetSpeedRatioRequest',
            "response" => 'Ros1Abb_robot_msgsSetSpeedRatioResponse'
        ]
    ],
    "abb_robot_msgs/SystemState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Abb_robot_msgsSystemState'
        ]
    ],
    "abb_robot_msgs/TriggerWithResultCode" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5c859961ac03d6fafad46d79023a88cda8e5e609c341cd57659fa8effe7c367c',
        "registered" => true,
        "components" => [
            "request" => 'Ros1Abb_robot_msgsTriggerWithResultCodeRequest',
            "response" => 'Ros1Abb_robot_msgsTriggerWithResultCodeResponse'
        ]
    ],
    "control_msgs/FollowJointTrajectory" => [
        "kind" => 'action',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a0838ba66a1bcbcc3313564322c7ded0504bc86cb7138a77e7b8e22c94b3b2d2',
        "registered" => true,
        "components" => [
            "goal" => 'Ros1Control_msgsFollowJointTrajectoryGoal',
            "result" => 'Ros1Control_msgsFollowJointTrajectoryResult',
            "feedback" => 'Ros1Control_msgsFollowJointTrajectoryFeedback'
        ]
    ],
    "control_msgs/JointTolerance" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88',
        "registered" => false,
        "components" => [
            "message" => 'Ros1Control_msgsJointTolerance'
        ]
    ],
    "sensor_msgs/JointState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057',
        "registered" => true,
        "components" => [
            "message" => 'Ros1Sensor_msgsJointState'
        ]
    ],
    "std_msgs/Header" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db',
        "registered" => false,
        "components" => [
            "message" => 'Ros1Std_msgsHeader'
        ]
    ],
    "trajectory_msgs/JointTrajectory" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b',
        "registered" => false,
        "components" => [
            "message" => 'Ros1Trajectory_msgsJointTrajectory'
        ]
    ],
    "trajectory_msgs/JointTrajectoryPoint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5',
        "registered" => false,
        "components" => [
            "message" => 'Ros1Trajectory_msgsJointTrajectoryPoint'
        ]
    ]
];
