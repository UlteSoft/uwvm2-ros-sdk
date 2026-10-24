<?php
/**
 * @file records.php
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */

declare(strict_types=1);
namespace Uwvm\Abb\Ros2;

/** @file records.php
 * @brief Complete original ABB ROS 2 records and interfaces.
 * @details Exact fields, defaults and bounds; no native registration or permission is inferred. */
use Uwvm\RosWasm\Wire;
use Uwvm\RosWasm\Word;

/** @brief Own every original abb_egm_msgs/msg/EGMChannelState field; extent 17..81 bytes. */
final class Ros2Abb_egm_msgsMsgEGMChannelState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_egm_msgsMsgEGMChannelState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519',
        "minimum" => 17,
        "maximum" => 81,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_egm_msgs/msg/EGMChannelState',
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
    public function encode(): string { return registry()->encode('Ros2Abb_egm_msgsMsgEGMChannelState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_egm_msgsMsgEGMChannelState', $bytes); }
}

/** @brief Own every original builtin_interfaces/msg/Time field; extent 8..8 bytes. */
final class Ros2Builtin_interfacesMsgTime
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Builtin_interfacesMsgTime',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => 'normalized-time',
        "ros_version" => 2,
        "native_type" => 'builtin_interfaces/msg/Time',
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
                "name" => 'nanosec',
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
    /** @brief Original sec: int32; scalar; bound/count 0. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar; bound/count 0. */
    public mixed $nanosec;
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
        if (array_key_exists('nanosec', $values)) { $this->nanosec = $values['nanosec']; }
        else
        {
            $this->nanosec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Builtin_interfacesMsgTime', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Builtin_interfacesMsgTime', $bytes); }
}

/** @brief Own every original std_msgs/msg/Header field; extent 12..76 bytes. */
final class Ros2Std_msgsMsgHeader
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Std_msgsMsgHeader',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396',
        "minimum" => 12,
        "maximum" => 76,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'std_msgs/msg/Header',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'stamp',
                "type" => 'Ros2Builtin_interfacesMsgTime',
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
    /** @brief Original stamp: Ros2Builtin_interfacesMsgTime; scalar; bound/count 0. */
    public mixed $stamp;
    /** @brief Original frame_id: string; scalar; bound/count 0. */
    public mixed $frame_id;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('stamp', $values)) { $this->stamp = $values['stamp']; }
        else
        {
            $this->stamp = new Ros2Builtin_interfacesMsgTime();
        }
        if (array_key_exists('frame_id', $values)) { $this->frame_id = $values['frame_id']; }
        else
        {
            $this->frame_id = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Std_msgsMsgHeader', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Std_msgsMsgHeader', $bytes); }
}

/** @brief Own every original abb_egm_msgs/msg/EGMState field; extent 16..1376 bytes. */
final class Ros2Abb_egm_msgsMsgEGMState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_egm_msgsMsgEGMState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d',
        "minimum" => 16,
        "maximum" => 1376,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_egm_msgs/msg/EGMState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
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
                "name" => 'egm_channels',
                "type" => 'Ros2Abb_egm_msgsMsgEGMChannelState',
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
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original egm_channels: Ros2Abb_egm_msgsMsgEGMChannelState; sequence; bound/count 16. */
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
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('egm_channels', $values)) { $this->egm_channels = $values['egm_channels']; }
        else
        {
            $this->egm_channels = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_egm_msgsMsgEGMState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_egm_msgsMsgEGMState', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/ConfData field; extent 16..16 bytes. */
final class Ros2Abb_rapid_msgsMsgConfData
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgConfData',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571',
        "minimum" => 16,
        "maximum" => 16,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/ConfData',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgConfData', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgConfData', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/ExtJoint field; extent 24..24 bytes. */
final class Ros2Abb_rapid_msgsMsgExtJoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgExtJoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2',
        "minimum" => 24,
        "maximum" => 24,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/ExtJoint',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgExtJoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgExtJoint', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/RobJoint field; extent 24..24 bytes. */
final class Ros2Abb_rapid_msgsMsgRobJoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgRobJoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd',
        "minimum" => 24,
        "maximum" => 24,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/RobJoint',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgRobJoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgRobJoint', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/JointTarget field; extent 48..48 bytes. */
final class Ros2Abb_rapid_msgsMsgJointTarget
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgJointTarget',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540',
        "minimum" => 48,
        "maximum" => 48,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/JointTarget',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'robax',
                "type" => 'Ros2Abb_rapid_msgsMsgRobJoint',
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
                "type" => 'Ros2Abb_rapid_msgsMsgExtJoint',
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
    /** @brief Original robax: Ros2Abb_rapid_msgsMsgRobJoint; scalar; bound/count 0. */
    public mixed $robax;
    /** @brief Original extax: Ros2Abb_rapid_msgsMsgExtJoint; scalar; bound/count 0. */
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
            $this->robax = new Ros2Abb_rapid_msgsMsgRobJoint();
        }
        if (array_key_exists('extax', $values)) { $this->extax = $values['extax']; }
        else
        {
            $this->extax = new Ros2Abb_rapid_msgsMsgExtJoint();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgJointTarget', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgJointTarget', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/Pos field; extent 12..12 bytes. */
final class Ros2Abb_rapid_msgsMsgPos
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgPos',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2',
        "minimum" => 12,
        "maximum" => 12,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/Pos',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgPos', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgPos', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/Orient field; extent 16..16 bytes. */
final class Ros2Abb_rapid_msgsMsgOrient
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgOrient',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e',
        "minimum" => 16,
        "maximum" => 16,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/Orient',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgOrient', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgOrient', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/LoadData field; extent 44..44 bytes. */
final class Ros2Abb_rapid_msgsMsgLoadData
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgLoadData',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9',
        "minimum" => 44,
        "maximum" => 44,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/LoadData',
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
                "type" => 'Ros2Abb_rapid_msgsMsgPos',
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
                "type" => 'Ros2Abb_rapid_msgsMsgOrient',
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
    /** @brief Original cog: Ros2Abb_rapid_msgsMsgPos; scalar; bound/count 0. */
    public mixed $cog;
    /** @brief Original aom: Ros2Abb_rapid_msgsMsgOrient; scalar; bound/count 0. */
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
            $this->cog = new Ros2Abb_rapid_msgsMsgPos();
        }
        if (array_key_exists('aom', $values)) { $this->aom = $values['aom']; }
        else
        {
            $this->aom = new Ros2Abb_rapid_msgsMsgOrient();
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgLoadData', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgLoadData', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/Pose field; extent 28..28 bytes. */
final class Ros2Abb_rapid_msgsMsgPose
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgPose',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2',
        "minimum" => 28,
        "maximum" => 28,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/Pose',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'trans',
                "type" => 'Ros2Abb_rapid_msgsMsgPos',
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
                "type" => 'Ros2Abb_rapid_msgsMsgOrient',
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
    /** @brief Original trans: Ros2Abb_rapid_msgsMsgPos; scalar; bound/count 0. */
    public mixed $trans;
    /** @brief Original rot: Ros2Abb_rapid_msgsMsgOrient; scalar; bound/count 0. */
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
            $this->trans = new Ros2Abb_rapid_msgsMsgPos();
        }
        if (array_key_exists('rot', $values)) { $this->rot = $values['rot']; }
        else
        {
            $this->rot = new Ros2Abb_rapid_msgsMsgOrient();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgPose', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgPose', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/RobTarget field; extent 68..68 bytes. */
final class Ros2Abb_rapid_msgsMsgRobTarget
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgRobTarget',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8',
        "minimum" => 68,
        "maximum" => 68,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/RobTarget',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'trans',
                "type" => 'Ros2Abb_rapid_msgsMsgPos',
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
                "type" => 'Ros2Abb_rapid_msgsMsgOrient',
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
                "type" => 'Ros2Abb_rapid_msgsMsgConfData',
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
                "type" => 'Ros2Abb_rapid_msgsMsgExtJoint',
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
    /** @brief Original trans: Ros2Abb_rapid_msgsMsgPos; scalar; bound/count 0. */
    public mixed $trans;
    /** @brief Original rot: Ros2Abb_rapid_msgsMsgOrient; scalar; bound/count 0. */
    public mixed $rot;
    /** @brief Original robconf: Ros2Abb_rapid_msgsMsgConfData; scalar; bound/count 0. */
    public mixed $robconf;
    /** @brief Original extax: Ros2Abb_rapid_msgsMsgExtJoint; scalar; bound/count 0. */
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
            $this->trans = new Ros2Abb_rapid_msgsMsgPos();
        }
        if (array_key_exists('rot', $values)) { $this->rot = $values['rot']; }
        else
        {
            $this->rot = new Ros2Abb_rapid_msgsMsgOrient();
        }
        if (array_key_exists('robconf', $values)) { $this->robconf = $values['robconf']; }
        else
        {
            $this->robconf = new Ros2Abb_rapid_msgsMsgConfData();
        }
        if (array_key_exists('extax', $values)) { $this->extax = $values['extax']; }
        else
        {
            $this->extax = new Ros2Abb_rapid_msgsMsgExtJoint();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgRobTarget', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgRobTarget', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/ToolData field; extent 73..73 bytes. */
final class Ros2Abb_rapid_msgsMsgToolData
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgToolData',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237',
        "minimum" => 73,
        "maximum" => 73,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/ToolData',
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
                "type" => 'Ros2Abb_rapid_msgsMsgPose',
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
                "type" => 'Ros2Abb_rapid_msgsMsgLoadData',
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
    /** @brief Original tframe: Ros2Abb_rapid_msgsMsgPose; scalar; bound/count 0. */
    public mixed $tframe;
    /** @brief Original tload: Ros2Abb_rapid_msgsMsgLoadData; scalar; bound/count 0. */
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
            $this->tframe = new Ros2Abb_rapid_msgsMsgPose();
        }
        if (array_key_exists('tload', $values)) { $this->tload = $values['tload']; }
        else
        {
            $this->tload = new Ros2Abb_rapid_msgsMsgLoadData();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgToolData', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgToolData', $bytes); }
}

/** @brief Own every original abb_rapid_msgs/msg/WObjData field; extent 62..574 bytes. */
final class Ros2Abb_rapid_msgsMsgWObjData
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_msgsMsgWObjData',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd',
        "minimum" => 62,
        "maximum" => 574,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_msgs/msg/WObjData',
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
                "type" => 'Ros2Abb_rapid_msgsMsgPose',
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
                "type" => 'Ros2Abb_rapid_msgsMsgPose',
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
    /** @brief Original uframe: Ros2Abb_rapid_msgsMsgPose; scalar; bound/count 0. */
    public mixed $uframe;
    /** @brief Original oframe: Ros2Abb_rapid_msgsMsgPose; scalar; bound/count 0. */
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
            $this->uframe = new Ros2Abb_rapid_msgsMsgPose();
        }
        if (array_key_exists('oframe', $values)) { $this->oframe = $values['oframe']; }
        else
        {
            $this->oframe = new Ros2Abb_rapid_msgsMsgPose();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_msgsMsgWObjData', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_msgsMsgWObjData', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings field; extent 204..716 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa',
        "minimum" => 204,
        "maximum" => 716,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/msg/EGMActivateSettings',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'tool',
                "type" => 'Ros2Abb_rapid_msgsMsgToolData',
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
                "type" => 'Ros2Abb_rapid_msgsMsgWObjData',
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
                "type" => 'Ros2Abb_rapid_msgsMsgPose',
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
                "type" => 'Ros2Abb_rapid_msgsMsgPose',
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
    /** @brief Original tool: Ros2Abb_rapid_msgsMsgToolData; scalar; bound/count 0. */
    public mixed $tool;
    /** @brief Original wobj: Ros2Abb_rapid_msgsMsgWObjData; scalar; bound/count 0. */
    public mixed $wobj;
    /** @brief Original correction_frame: Ros2Abb_rapid_msgsMsgPose; scalar; bound/count 0. */
    public mixed $correction_frame;
    /** @brief Original sensor_frame: Ros2Abb_rapid_msgsMsgPose; scalar; bound/count 0. */
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
            $this->tool = new Ros2Abb_rapid_msgsMsgToolData();
        }
        if (array_key_exists('wobj', $values)) { $this->wobj = $values['wobj']; }
        else
        {
            $this->wobj = new Ros2Abb_rapid_msgsMsgWObjData();
        }
        if (array_key_exists('correction_frame', $values)) { $this->correction_frame = $values['correction_frame']; }
        else
        {
            $this->correction_frame = new Ros2Abb_rapid_msgsMsgPose();
        }
        if (array_key_exists('sensor_frame', $values)) { $this->sensor_frame = $values['sensor_frame']; }
        else
        {
            $this->sensor_frame = new Ros2Abb_rapid_msgsMsgPose();
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/msg/EGMRunSettings field; extent 40..40 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2',
        "minimum" => 40,
        "maximum" => 40,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/msg/EGMRunSettings',
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
                "type" => 'Ros2Abb_rapid_msgsMsgPose',
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
    /** @brief Original offset: Ros2Abb_rapid_msgsMsgPose; scalar; bound/count 0. */
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
            $this->offset = new Ros2Abb_rapid_msgsMsgPose();
        }
        if (array_key_exists('pos_corr_gain', $values)) { $this->pos_corr_gain = $values['pos_corr_gain']; }
        else
        {
            $this->pos_corr_gain = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings field; extent 5..5 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c',
        "minimum" => 5,
        "maximum" => 5,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/msg/EGMSetupSettings',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/msg/EGMStopSettings field; extent 4..4 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee',
        "minimum" => 4,
        "maximum" => 4,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/msg/EGMStopSettings',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/msg/EGMSettings field; extent 255..767 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3',
        "minimum" => 255,
        "maximum" => 767,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/msg/EGMSettings',
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
                "type" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings',
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
                "type" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings',
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
                "type" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings',
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
                "type" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings',
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
    /** @brief Original setup_uc: Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings; scalar; bound/count 0. */
    public mixed $setup_uc;
    /** @brief Original activate: Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings; scalar; bound/count 0. */
    public mixed $activate;
    /** @brief Original run: Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings; scalar; bound/count 0. */
    public mixed $run;
    /** @brief Original stop: Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings; scalar; bound/count 0. */
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
            $this->setup_uc = new Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings();
        }
        if (array_key_exists('activate', $values)) { $this->activate = $values['activate']; }
        else
        {
            $this->activate = new Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings();
        }
        if (array_key_exists('run', $values)) { $this->run = $values['run']; }
        else
        {
            $this->run = new Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings();
        }
        if (array_key_exists('stop', $values)) { $this->stop = $values['stop']; }
        else
        {
            $this->stop = new Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/msg/StateMachineState field; extent 6..518 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/msg/StateMachineState',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/msg/RuntimeState field; extent 16..8368 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9',
        "minimum" => 16,
        "maximum" => 8368,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/msg/RuntimeState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
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
                "name" => 'state_machines',
                "type" => 'Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState',
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
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original state_machines: Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState; sequence; bound/count 16. */
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
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('state_machines', $values)) { $this->state_machines = $values['state_machines']; }
        else
        {
            $this->state_machines = [];
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request field; extent 4..68 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e',
        "minimum" => 4,
        "maximum" => 68,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response field; extent 261..1285 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb',
        "minimum" => 261,
        "maximum" => 1285,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'settings',
                "type" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings',
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
    /** @brief Original settings: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings; scalar; bound/count 0. */
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
            $this->settings = new Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings();
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request field; extent 259..835 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd',
        "minimum" => 259,
        "maximum" => 835,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request',
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
                "type" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings',
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
    /** @brief Original settings: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings; scalar; bound/count 0. */
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
            $this->settings = new Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response field; extent 6..518 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request field; extent 8..584 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c',
        "minimum" => 8,
        "maximum" => 584,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response field; extent 6..518 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request field; extent 9..73 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90',
        "minimum" => 9,
        "maximum" => 73,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request', $bytes); }
}

/** @brief Own every original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response field; extent 6..518 bytes. */
final class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/msg/MechanicalUnitState field; extent 5..69 bytes. */
final class Ros2Abb_robot_msgsMsgMechanicalUnitState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsMsgMechanicalUnitState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8',
        "minimum" => 5,
        "maximum" => 69,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/msg/MechanicalUnitState',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsMsgMechanicalUnitState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsMsgMechanicalUnitState', $bytes); }
}

/** @brief Own every original abb_robot_msgs/msg/RAPIDSymbolPath field; extent 12..204 bytes. */
final class Ros2Abb_robot_msgsMsgRAPIDSymbolPath
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/msg/RAPIDSymbolPath',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsMsgRAPIDSymbolPath', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsMsgRAPIDSymbolPath', $bytes); }
}

/** @brief Own every original abb_robot_msgs/msg/RAPIDTaskState field; extent 7..71 bytes. */
final class Ros2Abb_robot_msgsMsgRAPIDTaskState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsMsgRAPIDTaskState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd',
        "minimum" => 7,
        "maximum" => 71,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/msg/RAPIDTaskState',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsMsgRAPIDTaskState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsMsgRAPIDTaskState', $bytes); }
}

/** @brief Own every original abb_robot_msgs/msg/ServiceResponses field; extent 0..0 bytes. */
final class Ros2Abb_robot_msgsMsgServiceResponses
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsMsgServiceResponses',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/msg/ServiceResponses',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsMsgServiceResponses', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsMsgServiceResponses', $bytes); }
}

/** @brief Own every original abb_robot_msgs/msg/SystemState field; extent 23..2327 bytes. */
final class Ros2Abb_robot_msgsMsgSystemState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsMsgSystemState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f',
        "minimum" => 23,
        "maximum" => 2327,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/msg/SystemState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
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
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDTaskState',
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
                "type" => 'Ros2Abb_robot_msgsMsgMechanicalUnitState',
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
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original motors_on: bool; scalar; bound/count 0. */
    public mixed $motors_on;
    /** @brief Original auto_mode: bool; scalar; bound/count 0. */
    public mixed $auto_mode;
    /** @brief Original rapid_running: bool; scalar; bound/count 0. */
    public mixed $rapid_running;
    /** @brief Original rapid_tasks: Ros2Abb_robot_msgsMsgRAPIDTaskState; sequence; bound/count 16. */
    public mixed $rapid_tasks;
    /** @brief Original mechanical_units: Ros2Abb_robot_msgsMsgMechanicalUnitState; sequence; bound/count 16. */
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
            $this->header = new Ros2Std_msgsMsgHeader();
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsMsgSystemState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsMsgSystemState', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetFileContents_Request field; extent 4..516 bytes. */
final class Ros2Abb_robot_msgsSrvGetFileContents_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetFileContents_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b',
        "minimum" => 4,
        "maximum" => 516,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetFileContents_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetFileContents_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetFileContents_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetFileContents_Response field; extent 10..4618 bytes. */
final class Ros2Abb_robot_msgsSrvGetFileContents_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetFileContents_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107',
        "minimum" => 10,
        "maximum" => 4618,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetFileContents_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetFileContents_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetFileContents_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetIOSignal_Request field; extent 4..516 bytes. */
final class Ros2Abb_robot_msgsSrvGetIOSignal_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetIOSignal_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5',
        "minimum" => 4,
        "maximum" => 516,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetIOSignal_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetIOSignal_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetIOSignal_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetIOSignal_Response field; extent 10..1034 bytes. */
final class Ros2Abb_robot_msgsSrvGetIOSignal_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetIOSignal_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e',
        "minimum" => 10,
        "maximum" => 1034,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetIOSignal_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetIOSignal_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetIOSignal_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDBool_Request field; extent 12..204 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDBool_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDBool_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDBool_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDBool_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDBool_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDBool_Response field; extent 7..519 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDBool_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDBool_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd',
        "minimum" => 7,
        "maximum" => 519,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDBool_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDBool_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDBool_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDDnum_Request field; extent 12..204 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDDnum_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDDnum_Response field; extent 14..526 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56',
        "minimum" => 14,
        "maximum" => 526,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDDnum_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDNum_Request field; extent 12..204 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDNum_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDNum_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDNum_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDNum_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDNum_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDNum_Response field; extent 10..522 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDNum_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDNum_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d',
        "minimum" => 10,
        "maximum" => 522,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDNum_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDNum_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDNum_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDString_Request field; extent 12..204 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDString_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDString_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDString_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDString_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDString_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDString_Response field; extent 10..1034 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDString_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDString_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458',
        "minimum" => 10,
        "maximum" => 1034,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDString_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDString_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDString_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDSymbol_Request field; extent 12..204 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469',
        "minimum" => 12,
        "maximum" => 204,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDSymbol_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRAPIDSymbol_Response field; extent 10..1034 bytes. */
final class Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602',
        "minimum" => 10,
        "maximum" => 1034,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRAPIDSymbol_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRobotControllerDescription_Request field; extent 0..0 bytes. */
final class Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRobotControllerDescription_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetRobotControllerDescription_Response field; extent 10..4618 bytes. */
final class Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368',
        "minimum" => 10,
        "maximum" => 4618,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetRobotControllerDescription_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetSpeedRatio_Request field; extent 0..0 bytes. */
final class Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetSpeedRatio_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetSpeedRatio_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetSpeedRatio_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetSpeedRatio_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/GetSpeedRatio_Response field; extent 7..519 bytes. */
final class Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvGetSpeedRatio_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b',
        "minimum" => 7,
        "maximum" => 519,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/GetSpeedRatio_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvGetSpeedRatio_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvGetSpeedRatio_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetFileContents_Request field; extent 8..4616 bytes. */
final class Ros2Abb_robot_msgsSrvSetFileContents_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetFileContents_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b',
        "minimum" => 8,
        "maximum" => 4616,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetFileContents_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetFileContents_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetFileContents_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetFileContents_Response field; extent 6..518 bytes. */
final class Ros2Abb_robot_msgsSrvSetFileContents_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetFileContents_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetFileContents_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetFileContents_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetFileContents_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetIOSignal_Request field; extent 8..1032 bytes. */
final class Ros2Abb_robot_msgsSrvSetIOSignal_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetIOSignal_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7',
        "minimum" => 8,
        "maximum" => 1032,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetIOSignal_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetIOSignal_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetIOSignal_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetIOSignal_Response field; extent 6..518 bytes. */
final class Ros2Abb_robot_msgsSrvSetIOSignal_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetIOSignal_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetIOSignal_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetIOSignal_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetIOSignal_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDBool_Request field; extent 13..205 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDBool_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDBool_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52',
        "minimum" => 13,
        "maximum" => 205,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDBool_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = false;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDBool_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDBool_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDBool_Response field; extent 6..518 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDBool_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDBool_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDBool_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDBool_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDBool_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDDnum_Request field; extent 20..212 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76',
        "minimum" => 20,
        "maximum" => 212,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDDnum_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDDnum_Response field; extent 6..518 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDDnum_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDNum_Request field; extent 16..208 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDNum_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDNum_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02',
        "minimum" => 16,
        "maximum" => 208,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDNum_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = 0.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDNum_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDNum_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDNum_Response field; extent 6..518 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDNum_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDNum_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDNum_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDNum_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDNum_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDString_Request field; extent 16..720 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDString_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDString_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461',
        "minimum" => 16,
        "maximum" => 720,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDString_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDString_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDString_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDString_Response field; extent 6..518 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDString_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDString_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDString_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDString_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDString_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDSymbol_Request field; extent 16..720 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf',
        "minimum" => 16,
        "maximum" => 720,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDSymbol_Request',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'path',
                "type" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath',
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
    /** @brief Original path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath; scalar; bound/count 0. */
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
            $this->path = new Ros2Abb_robot_msgsMsgRAPIDSymbolPath();
        }
        if (array_key_exists('value', $values)) { $this->value = $values['value']; }
        else
        {
            $this->value = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetRAPIDSymbol_Response field; extent 6..518 bytes. */
final class Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetRAPIDSymbol_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetSpeedRatio_Request field; extent 1..1 bytes. */
final class Ros2Abb_robot_msgsSrvSetSpeedRatio_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetSpeedRatio_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355',
        "minimum" => 1,
        "maximum" => 1,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetSpeedRatio_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetSpeedRatio_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetSpeedRatio_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/SetSpeedRatio_Response field; extent 6..518 bytes. */
final class Ros2Abb_robot_msgsSrvSetSpeedRatio_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvSetSpeedRatio_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/SetSpeedRatio_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvSetSpeedRatio_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvSetSpeedRatio_Response', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/TriggerWithResultCode_Request field; extent 0..0 bytes. */
final class Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/TriggerWithResultCode_Request',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request', $bytes); }
}

/** @brief Own every original abb_robot_msgs/srv/TriggerWithResultCode_Response field; extent 6..518 bytes. */
final class Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51',
        "minimum" => 6,
        "maximum" => 518,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'abb_robot_msgs/srv/TriggerWithResultCode_Response',
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
    public function encode(): string { return registry()->encode('Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response', $bytes); }
}

/** @brief Own every original builtin_interfaces/msg/Duration field; extent 8..8 bytes. */
final class Ros2Builtin_interfacesMsgDuration
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Builtin_interfacesMsgDuration',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4',
        "minimum" => 8,
        "maximum" => 8,
        "semantics" => 'normalized-time',
        "ros_version" => 2,
        "native_type" => 'builtin_interfaces/msg/Duration',
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
                "name" => 'nanosec',
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
    /** @brief Original sec: int32; scalar; bound/count 0. */
    public mixed $sec;
    /** @brief Original nanosec: uint32; scalar; bound/count 0. */
    public mixed $nanosec;
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
        if (array_key_exists('nanosec', $values)) { $this->nanosec = $values['nanosec']; }
        else
        {
            $this->nanosec = Word::fromDecimal('0', 4, false);
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Builtin_interfacesMsgDuration', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Builtin_interfacesMsgDuration', $bytes); }
}

/** @brief Own every original trajectory_msgs/msg/JointTrajectoryPoint field; extent 24..408 bytes. */
final class Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5',
        "minimum" => 24,
        "maximum" => 408,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'trajectory_msgs/msg/JointTrajectoryPoint',
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
                "type" => 'Ros2Builtin_interfacesMsgDuration',
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
    /** @brief Original time_from_start: Ros2Builtin_interfacesMsgDuration; scalar; bound/count 0. */
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
            $this->time_from_start = new Ros2Builtin_interfacesMsgDuration();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Trajectory_msgsMsgJointTrajectoryPoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Trajectory_msgsMsgJointTrajectoryPoint', $bytes); }
}

/** @brief Own every original trajectory_msgs/msg/JointTrajectory field; extent 20..4164 bytes. */
final class Ros2Trajectory_msgsMsgJointTrajectory
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Trajectory_msgsMsgJointTrajectory',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0',
        "minimum" => 20,
        "maximum" => 4164,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'trajectory_msgs/msg/JointTrajectory',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
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
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
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
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence; bound/count 12. */
    public mixed $joint_names;
    /** @brief Original points: Ros2Trajectory_msgsMsgJointTrajectoryPoint; sequence; bound/count 8. */
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
            $this->header = new Ros2Std_msgsMsgHeader();
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
    public function encode(): string { return registry()->encode('Ros2Trajectory_msgsMsgJointTrajectory', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Trajectory_msgsMsgJointTrajectory', $bytes); }
}

/** @brief Own every original geometry_msgs/msg/Vector3 field; extent 24..24 bytes. */
final class Ros2Geometry_msgsMsgVector3
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Geometry_msgsMsgVector3',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
        "minimum" => 24,
        "maximum" => 24,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'geometry_msgs/msg/Vector3',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'x',
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
                "name" => 'y',
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
                "name" => 'z',
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
    /** @brief Original x: float64; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float64; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float64; scalar; bound/count 0. */
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
    public function encode(): string { return registry()->encode('Ros2Geometry_msgsMsgVector3', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Geometry_msgsMsgVector3', $bytes); }
}

/** @brief Own every original geometry_msgs/msg/Quaternion field; extent 32..32 bytes. */
final class Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Geometry_msgsMsgQuaternion',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
        "minimum" => 32,
        "maximum" => 32,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'geometry_msgs/msg/Quaternion',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'x',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0.0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8,
                "default" => 0.0
            ],
            [
                "name" => 'y',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0.0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8,
                "default" => 0.0
            ],
            [
                "name" => 'z',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '0.0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8,
                "default" => 0.0
            ],
            [
                "name" => 'w',
                "type" => 'float64',
                "array" => '',
                "count" => 0,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => '1.0',
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 8,
                "default" => 1.0
            ]
        ]
    ];
    /** @brief Original x: float64; scalar; bound/count 0. */
    public mixed $x;
    /** @brief Original y: float64; scalar; bound/count 0. */
    public mixed $y;
    /** @brief Original z: float64; scalar; bound/count 0. */
    public mixed $z;
    /** @brief Original w: float64; scalar; bound/count 0. */
    public mixed $w;
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
        if (array_key_exists('w', $values)) { $this->w = $values['w']; }
        else
        {
            $this->w = 1.0;
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Geometry_msgsMsgQuaternion', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Geometry_msgsMsgQuaternion', $bytes); }
}

/** @brief Own every original geometry_msgs/msg/Transform field; extent 56..56 bytes. */
final class Ros2Geometry_msgsMsgTransform
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Geometry_msgsMsgTransform',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b',
        "minimum" => 56,
        "maximum" => 56,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'geometry_msgs/msg/Transform',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'translation',
                "type" => 'Ros2Geometry_msgsMsgVector3',
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
                "name" => 'rotation',
                "type" => 'Ros2Geometry_msgsMsgQuaternion',
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
                "element_minimum" => 32
            ]
        ]
    ];
    /** @brief Original translation: Ros2Geometry_msgsMsgVector3; scalar; bound/count 0. */
    public mixed $translation;
    /** @brief Original rotation: Ros2Geometry_msgsMsgQuaternion; scalar; bound/count 0. */
    public mixed $rotation;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('translation', $values)) { $this->translation = $values['translation']; }
        else
        {
            $this->translation = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('rotation', $values)) { $this->rotation = $values['rotation']; }
        else
        {
            $this->rotation = new Ros2Geometry_msgsMsgQuaternion();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Geometry_msgsMsgTransform', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Geometry_msgsMsgTransform', $bytes); }
}

/** @brief Own every original geometry_msgs/msg/Twist field; extent 48..48 bytes. */
final class Ros2Geometry_msgsMsgTwist
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Geometry_msgsMsgTwist',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
        "minimum" => 48,
        "maximum" => 48,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'geometry_msgs/msg/Twist',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'linear',
                "type" => 'Ros2Geometry_msgsMsgVector3',
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
                "name" => 'angular',
                "type" => 'Ros2Geometry_msgsMsgVector3',
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
    /** @brief Original linear: Ros2Geometry_msgsMsgVector3; scalar; bound/count 0. */
    public mixed $linear;
    /** @brief Original angular: Ros2Geometry_msgsMsgVector3; scalar; bound/count 0. */
    public mixed $angular;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('linear', $values)) { $this->linear = $values['linear']; }
        else
        {
            $this->linear = new Ros2Geometry_msgsMsgVector3();
        }
        if (array_key_exists('angular', $values)) { $this->angular = $values['angular']; }
        else
        {
            $this->angular = new Ros2Geometry_msgsMsgVector3();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Geometry_msgsMsgTwist', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Geometry_msgsMsgTwist', $bytes); }
}

/** @brief Own every original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field; extent 20..324 bytes. */
final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242',
        "minimum" => 20,
        "maximum" => 324,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'transforms',
                "type" => 'Ros2Geometry_msgsMsgTransform',
                "array" => 'sequence',
                "count" => 2,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 56
            ],
            [
                "name" => 'velocities',
                "type" => 'Ros2Geometry_msgsMsgTwist',
                "array" => 'sequence',
                "count" => 2,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 48
            ],
            [
                "name" => 'accelerations',
                "type" => 'Ros2Geometry_msgsMsgTwist',
                "array" => 'sequence',
                "count" => 2,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 48
            ],
            [
                "name" => 'time_from_start',
                "type" => 'Ros2Builtin_interfacesMsgDuration',
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
    /** @brief Original transforms: Ros2Geometry_msgsMsgTransform; sequence; bound/count 2. */
    public mixed $transforms;
    /** @brief Original velocities: Ros2Geometry_msgsMsgTwist; sequence; bound/count 2. */
    public mixed $velocities;
    /** @brief Original accelerations: Ros2Geometry_msgsMsgTwist; sequence; bound/count 2. */
    public mixed $accelerations;
    /** @brief Original time_from_start: Ros2Builtin_interfacesMsgDuration; scalar; bound/count 0. */
    public mixed $time_from_start;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('transforms', $values)) { $this->transforms = $values['transforms']; }
        else
        {
            $this->transforms = [];
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
        if (array_key_exists('time_from_start', $values)) { $this->time_from_start = $values['time_from_start']; }
        else
        {
            $this->time_from_start = new Ros2Builtin_interfacesMsgDuration();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint', $bytes); }
}

/** @brief Own every original trajectory_msgs/msg/MultiDOFJointTrajectory field; extent 20..1516 bytes. */
final class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401',
        "minimum" => 20,
        "maximum" => 1516,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'trajectory_msgs/msg/MultiDOFJointTrajectory',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
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
                "name" => 'joint_names',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 2,
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
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
                "array" => 'sequence',
                "count" => 4,
                "string_bound" => 0,
                "native_string_bound" => 0,
                "native_sequence_bound" => 0,
                "native_default" => null,
                "native_scalar" => '',
                "string_encoding" => 'utf8',
                "float_policy" => 'finite',
                "raw" => false,
                "element_minimum" => 20
            ]
        ]
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence; bound/count 2. */
    public mixed $joint_names;
    /** @brief Original points: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; sequence; bound/count 4. */
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
            $this->header = new Ros2Std_msgsMsgHeader();
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
    public function encode(): string { return registry()->encode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectory', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Trajectory_msgsMsgMultiDOFJointTrajectory', $bytes); }
}

/** @brief Own every original control_msgs/msg/JointTolerance field; extent 28..92 bytes. */
final class Ros2Control_msgsMsgJointTolerance
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsMsgJointTolerance',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2',
        "minimum" => 28,
        "maximum" => 92,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/msg/JointTolerance',
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
    public function encode(): string { return registry()->encode('Ros2Control_msgsMsgJointTolerance', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsMsgJointTolerance', $bytes); }
}

/** @brief Own every original control_msgs/msg/JointComponentTolerance field; extent 30..542 bytes. */
final class Ros2Control_msgsMsgJointComponentTolerance
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsMsgJointComponentTolerance',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342',
        "minimum" => 30,
        "maximum" => 542,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/msg/JointComponentTolerance',
        "constants" => [
            "X_AXIS" => 1,
            "Y_AXIS" => 2,
            "Z_AXIS" => 3,
            "TRANSLATION" => 4,
            "ROTATION" => 5
        ],
        "fields" => [
            [
                "name" => 'joint_name',
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
                "name" => 'component',
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
    /** @brief Original X_AXIS constant; consumes no instance bytes. */
    public const X_AXIS = 1;
    /** @brief Original Y_AXIS constant; consumes no instance bytes. */
    public const Y_AXIS = 2;
    /** @brief Original Z_AXIS constant; consumes no instance bytes. */
    public const Z_AXIS = 3;
    /** @brief Original TRANSLATION constant; consumes no instance bytes. */
    public const TRANSLATION = 4;
    /** @brief Original ROTATION constant; consumes no instance bytes. */
    public const ROTATION = 5;
    /** @brief Original joint_name: string; scalar; bound/count 0. */
    public mixed $joint_name;
    /** @brief Original component: uint16; scalar; bound/count 0. */
    public mixed $component;
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
        if (array_key_exists('joint_name', $values)) { $this->joint_name = $values['joint_name']; }
        else
        {
            $this->joint_name = '';
        }
        if (array_key_exists('component', $values)) { $this->component = $values['component']; }
        else
        {
            $this->component = 0;
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
    public function encode(): string { return registry()->encode('Ros2Control_msgsMsgJointComponentTolerance', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsMsgJointComponentTolerance', $bytes); }
}

/** @brief Own every original control_msgs/action/FollowJointTrajectory_Goal field; extent 64..20920 bytes. */
final class Ros2Control_msgsActionFollowJointTrajectory_Goal
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsActionFollowJointTrajectory_Goal',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16',
        "minimum" => 64,
        "maximum" => 20920,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/action/FollowJointTrajectory_Goal',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'trajectory',
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectory',
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
                "element_minimum" => 20
            ],
            [
                "name" => 'multi_dof_trajectory',
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory',
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
                "element_minimum" => 20
            ],
            [
                "name" => 'path_tolerance',
                "type" => 'Ros2Control_msgsMsgJointTolerance',
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
                "name" => 'component_path_tolerance',
                "type" => 'Ros2Control_msgsMsgJointComponentTolerance',
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
                "element_minimum" => 30
            ],
            [
                "name" => 'goal_tolerance',
                "type" => 'Ros2Control_msgsMsgJointTolerance',
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
                "name" => 'component_goal_tolerance',
                "type" => 'Ros2Control_msgsMsgJointComponentTolerance',
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
                "element_minimum" => 30
            ],
            [
                "name" => 'goal_time_tolerance',
                "type" => 'Ros2Builtin_interfacesMsgDuration',
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
    /** @brief Original trajectory: Ros2Trajectory_msgsMsgJointTrajectory; scalar; bound/count 0. */
    public mixed $trajectory;
    /** @brief Original multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; scalar; bound/count 0. */
    public mixed $multi_dof_trajectory;
    /** @brief Original path_tolerance: Ros2Control_msgsMsgJointTolerance; sequence; bound/count 12. */
    public mixed $path_tolerance;
    /** @brief Original component_path_tolerance: Ros2Control_msgsMsgJointComponentTolerance; sequence; bound/count 12. */
    public mixed $component_path_tolerance;
    /** @brief Original goal_tolerance: Ros2Control_msgsMsgJointTolerance; sequence; bound/count 12. */
    public mixed $goal_tolerance;
    /** @brief Original component_goal_tolerance: Ros2Control_msgsMsgJointComponentTolerance; sequence; bound/count 12. */
    public mixed $component_goal_tolerance;
    /** @brief Original goal_time_tolerance: Ros2Builtin_interfacesMsgDuration; scalar; bound/count 0. */
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
            $this->trajectory = new Ros2Trajectory_msgsMsgJointTrajectory();
        }
        if (array_key_exists('multi_dof_trajectory', $values)) { $this->multi_dof_trajectory = $values['multi_dof_trajectory']; }
        else
        {
            $this->multi_dof_trajectory = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectory();
        }
        if (array_key_exists('path_tolerance', $values)) { $this->path_tolerance = $values['path_tolerance']; }
        else
        {
            $this->path_tolerance = [];
        }
        if (array_key_exists('component_path_tolerance', $values)) { $this->component_path_tolerance = $values['component_path_tolerance']; }
        else
        {
            $this->component_path_tolerance = [];
        }
        if (array_key_exists('goal_tolerance', $values)) { $this->goal_tolerance = $values['goal_tolerance']; }
        else
        {
            $this->goal_tolerance = [];
        }
        if (array_key_exists('component_goal_tolerance', $values)) { $this->component_goal_tolerance = $values['component_goal_tolerance']; }
        else
        {
            $this->component_goal_tolerance = [];
        }
        if (array_key_exists('goal_time_tolerance', $values)) { $this->goal_time_tolerance = $values['goal_time_tolerance']; }
        else
        {
            $this->goal_time_tolerance = new Ros2Builtin_interfacesMsgDuration();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Control_msgsActionFollowJointTrajectory_Goal', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsActionFollowJointTrajectory_Goal', $bytes); }
}

/** @brief Own every original control_msgs/action/FollowJointTrajectory_Result field; extent 8..4104 bytes. */
final class Ros2Control_msgsActionFollowJointTrajectory_Result
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsActionFollowJointTrajectory_Result',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70',
        "minimum" => 8,
        "maximum" => 4104,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/action/FollowJointTrajectory_Result',
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
    public function encode(): string { return registry()->encode('Ros2Control_msgsActionFollowJointTrajectory_Result', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsActionFollowJointTrajectory_Result', $bytes); }
}

/** @brief Own every original control_msgs/action/FollowJointTrajectory_Feedback field; extent 152..4128 bytes. */
final class Ros2Control_msgsActionFollowJointTrajectory_Feedback
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Control_msgsActionFollowJointTrajectory_Feedback',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb',
        "minimum" => 152,
        "maximum" => 4128,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'control_msgs/action/FollowJointTrajectory_Feedback',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
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
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
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
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
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
                "type" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint',
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
                "name" => 'multi_dof_joint_names',
                "type" => 'string',
                "array" => 'sequence',
                "count" => 2,
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
                "name" => 'multi_dof_desired',
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
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
                "element_minimum" => 20
            ],
            [
                "name" => 'multi_dof_actual',
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
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
                "element_minimum" => 20
            ],
            [
                "name" => 'multi_dof_error',
                "type" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint',
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
                "element_minimum" => 20
            ]
        ]
    ];
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
    public mixed $header;
    /** @brief Original joint_names: string; sequence; bound/count 12. */
    public mixed $joint_names;
    /** @brief Original desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $desired;
    /** @brief Original actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $actual;
    /** @brief Original error: Ros2Trajectory_msgsMsgJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $error;
    /** @brief Original multi_dof_joint_names: string; sequence; bound/count 2. */
    public mixed $multi_dof_joint_names;
    /** @brief Original multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $multi_dof_desired;
    /** @brief Original multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $multi_dof_actual;
    /** @brief Original multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; scalar; bound/count 0. */
    public mixed $multi_dof_error;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('header', $values)) { $this->header = $values['header']; }
        else
        {
            $this->header = new Ros2Std_msgsMsgHeader();
        }
        if (array_key_exists('joint_names', $values)) { $this->joint_names = $values['joint_names']; }
        else
        {
            $this->joint_names = [];
        }
        if (array_key_exists('desired', $values)) { $this->desired = $values['desired']; }
        else
        {
            $this->desired = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
        if (array_key_exists('actual', $values)) { $this->actual = $values['actual']; }
        else
        {
            $this->actual = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
        if (array_key_exists('error', $values)) { $this->error = $values['error']; }
        else
        {
            $this->error = new Ros2Trajectory_msgsMsgJointTrajectoryPoint();
        }
        if (array_key_exists('multi_dof_joint_names', $values)) { $this->multi_dof_joint_names = $values['multi_dof_joint_names']; }
        else
        {
            $this->multi_dof_joint_names = [];
        }
        if (array_key_exists('multi_dof_desired', $values)) { $this->multi_dof_desired = $values['multi_dof_desired']; }
        else
        {
            $this->multi_dof_desired = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        }
        if (array_key_exists('multi_dof_actual', $values)) { $this->multi_dof_actual = $values['multi_dof_actual']; }
        else
        {
            $this->multi_dof_actual = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        }
        if (array_key_exists('multi_dof_error', $values)) { $this->multi_dof_error = $values['multi_dof_error']; }
        else
        {
            $this->multi_dof_error = new Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint();
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Control_msgsActionFollowJointTrajectory_Feedback', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Control_msgsActionFollowJointTrajectory_Feedback', $bytes); }
}

/** @brief Own every original sensor_msgs/msg/JointState field; extent 28..1196 bytes. */
final class Ros2Sensor_msgsMsgJointState
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Sensor_msgsMsgJointState',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884',
        "minimum" => 28,
        "maximum" => 1196,
        "semantics" => 'joint-state-optional-equal-length-arrays',
        "ros_version" => 2,
        "native_type" => 'sensor_msgs/msg/JointState',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'header',
                "type" => 'Ros2Std_msgsMsgHeader',
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
    /** @brief Original header: Ros2Std_msgsMsgHeader; scalar; bound/count 0. */
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
            $this->header = new Ros2Std_msgsMsgHeader();
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
    public function encode(): string { return registry()->encode('Ros2Sensor_msgsMsgJointState', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Sensor_msgsMsgJointState', $bytes); }
}

/** @brief Own every original std_srvs/srv/Trigger_Request field; extent 0..0 bytes. */
final class Ros2Std_srvsSrvTrigger_Request
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Std_srvsSrvTrigger_Request',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77',
        "minimum" => 0,
        "maximum" => 0,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'std_srvs/srv/Trigger_Request',
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
    public function encode(): string { return registry()->encode('Ros2Std_srvsSrvTrigger_Request', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Std_srvsSrvTrigger_Request', $bytes); }
}

/** @brief Own every original std_srvs/srv/Trigger_Response field; extent 5..517 bytes. */
final class Ros2Std_srvsSrvTrigger_Response
{
    /** @brief Source-derived complete schema; null native identity remains absent. */
    public const SCHEMA = [
        "symbol" => 'Ros2Std_srvsSrvTrigger_Response',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d',
        "minimum" => 5,
        "maximum" => 517,
        "semantics" => '',
        "ros_version" => 2,
        "native_type" => 'std_srvs/srv/Trigger_Response',
        "constants" => [

        ],
        "fields" => [
            [
                "name" => 'success',
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
    /** @brief Original success: bool; scalar; bound/count 0. */
    public mixed $success;
    /** @brief Original message: string; scalar; bound/count 0. */
    public mixed $message;
    /** @brief Initialize every original field with fresh defaults or exact explicit overrides.
     * @param array $values Original field names; unknown names raise InvalidArgumentException.
     * @details Supplied nested objects retain normal PHP reference semantics. */
    public function __construct(array $values = [])
    {
        if (array_diff(array_keys($values), array_column(self::SCHEMA['fields'], 'name'))) { throw new \InvalidArgumentException('unknown original field'); }
        if (array_key_exists('success', $values)) { $this->success = $values['success']; }
        else
        {
            $this->success = false;
        }
        if (array_key_exists('message', $values)) { $this->message = $values['message']; }
        else
        {
            $this->message = '';
        }
    }
    /** @brief Encode the whole validated value; malformed fields raise InvalidArgumentException.
     * @return string Complete independent canonical bytes; no owner or I/O. */
    public function encode(): string { return registry()->encode('Ros2Std_srvsSrvTrigger_Response', $this); }
    /** @brief Transactionally decode one whole value; truncated/trailing data are refused.
     * @param string $bytes Complete borrowed input.
     * @return self Fresh complete value; failures throw before it escapes. */
    public static function decode(string $bytes): self { return registry()->decode('Ros2Std_srvsSrvTrigger_Response', $bytes); }
}

/** @brief Borrow the module's pure codec registry; construction opens no ROS resource.
 * @return Wire One lazily constructed registry over exact complete class schemas. */
function registry(): Wire
{
    static $wire = null;
    if ($wire === null)
    {
        $wire = new Wire([
            'Ros2Abb_egm_msgsMsgEGMChannelState' =>
                Ros2Abb_egm_msgsMsgEGMChannelState::SCHEMA + ['class' => Ros2Abb_egm_msgsMsgEGMChannelState::class],
            'Ros2Builtin_interfacesMsgTime' =>
                Ros2Builtin_interfacesMsgTime::SCHEMA + ['class' => Ros2Builtin_interfacesMsgTime::class],
            'Ros2Std_msgsMsgHeader' =>
                Ros2Std_msgsMsgHeader::SCHEMA + ['class' => Ros2Std_msgsMsgHeader::class],
            'Ros2Abb_egm_msgsMsgEGMState' =>
                Ros2Abb_egm_msgsMsgEGMState::SCHEMA + ['class' => Ros2Abb_egm_msgsMsgEGMState::class],
            'Ros2Abb_rapid_msgsMsgConfData' =>
                Ros2Abb_rapid_msgsMsgConfData::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgConfData::class],
            'Ros2Abb_rapid_msgsMsgExtJoint' =>
                Ros2Abb_rapid_msgsMsgExtJoint::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgExtJoint::class],
            'Ros2Abb_rapid_msgsMsgRobJoint' =>
                Ros2Abb_rapid_msgsMsgRobJoint::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgRobJoint::class],
            'Ros2Abb_rapid_msgsMsgJointTarget' =>
                Ros2Abb_rapid_msgsMsgJointTarget::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgJointTarget::class],
            'Ros2Abb_rapid_msgsMsgPos' =>
                Ros2Abb_rapid_msgsMsgPos::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgPos::class],
            'Ros2Abb_rapid_msgsMsgOrient' =>
                Ros2Abb_rapid_msgsMsgOrient::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgOrient::class],
            'Ros2Abb_rapid_msgsMsgLoadData' =>
                Ros2Abb_rapid_msgsMsgLoadData::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgLoadData::class],
            'Ros2Abb_rapid_msgsMsgPose' =>
                Ros2Abb_rapid_msgsMsgPose::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgPose::class],
            'Ros2Abb_rapid_msgsMsgRobTarget' =>
                Ros2Abb_rapid_msgsMsgRobTarget::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgRobTarget::class],
            'Ros2Abb_rapid_msgsMsgToolData' =>
                Ros2Abb_rapid_msgsMsgToolData::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgToolData::class],
            'Ros2Abb_rapid_msgsMsgWObjData' =>
                Ros2Abb_rapid_msgsMsgWObjData::SCHEMA + ['class' => Ros2Abb_rapid_msgsMsgWObjData::class],
            'Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings' =>
                Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::class],
            'Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings' =>
                Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::class],
            'Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings' =>
                Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::class],
            'Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings' =>
                Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::class],
            'Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings' =>
                Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::class],
            'Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState' =>
                Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::class],
            'Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState' =>
                Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::class],
            'Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request' =>
                Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::class],
            'Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response' =>
                Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::class],
            'Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request' =>
                Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::class],
            'Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response' =>
                Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::class],
            'Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request' =>
                Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::class],
            'Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response' =>
                Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::class],
            'Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request' =>
                Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::class],
            'Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response' =>
                Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::SCHEMA + ['class' => Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::class],
            'Ros2Abb_robot_msgsMsgMechanicalUnitState' =>
                Ros2Abb_robot_msgsMsgMechanicalUnitState::SCHEMA + ['class' => Ros2Abb_robot_msgsMsgMechanicalUnitState::class],
            'Ros2Abb_robot_msgsMsgRAPIDSymbolPath' =>
                Ros2Abb_robot_msgsMsgRAPIDSymbolPath::SCHEMA + ['class' => Ros2Abb_robot_msgsMsgRAPIDSymbolPath::class],
            'Ros2Abb_robot_msgsMsgRAPIDTaskState' =>
                Ros2Abb_robot_msgsMsgRAPIDTaskState::SCHEMA + ['class' => Ros2Abb_robot_msgsMsgRAPIDTaskState::class],
            'Ros2Abb_robot_msgsMsgServiceResponses' =>
                Ros2Abb_robot_msgsMsgServiceResponses::SCHEMA + ['class' => Ros2Abb_robot_msgsMsgServiceResponses::class],
            'Ros2Abb_robot_msgsMsgSystemState' =>
                Ros2Abb_robot_msgsMsgSystemState::SCHEMA + ['class' => Ros2Abb_robot_msgsMsgSystemState::class],
            'Ros2Abb_robot_msgsSrvGetFileContents_Request' =>
                Ros2Abb_robot_msgsSrvGetFileContents_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetFileContents_Request::class],
            'Ros2Abb_robot_msgsSrvGetFileContents_Response' =>
                Ros2Abb_robot_msgsSrvGetFileContents_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetFileContents_Response::class],
            'Ros2Abb_robot_msgsSrvGetIOSignal_Request' =>
                Ros2Abb_robot_msgsSrvGetIOSignal_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetIOSignal_Request::class],
            'Ros2Abb_robot_msgsSrvGetIOSignal_Response' =>
                Ros2Abb_robot_msgsSrvGetIOSignal_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetIOSignal_Response::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDBool_Request' =>
                Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDBool_Response' =>
                Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request' =>
                Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response' =>
                Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDNum_Request' =>
                Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDNum_Response' =>
                Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDString_Request' =>
                Ros2Abb_robot_msgsSrvGetRAPIDString_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDString_Request::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDString_Response' =>
                Ros2Abb_robot_msgsSrvGetRAPIDString_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDString_Response::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request' =>
                Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::class],
            'Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response' =>
                Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::class],
            'Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request' =>
                Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::class],
            'Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response' =>
                Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::class],
            'Ros2Abb_robot_msgsSrvGetSpeedRatio_Request' =>
                Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::class],
            'Ros2Abb_robot_msgsSrvGetSpeedRatio_Response' =>
                Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::class],
            'Ros2Abb_robot_msgsSrvSetFileContents_Request' =>
                Ros2Abb_robot_msgsSrvSetFileContents_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetFileContents_Request::class],
            'Ros2Abb_robot_msgsSrvSetFileContents_Response' =>
                Ros2Abb_robot_msgsSrvSetFileContents_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetFileContents_Response::class],
            'Ros2Abb_robot_msgsSrvSetIOSignal_Request' =>
                Ros2Abb_robot_msgsSrvSetIOSignal_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetIOSignal_Request::class],
            'Ros2Abb_robot_msgsSrvSetIOSignal_Response' =>
                Ros2Abb_robot_msgsSrvSetIOSignal_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetIOSignal_Response::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDBool_Request' =>
                Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDBool_Response' =>
                Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request' =>
                Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response' =>
                Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDNum_Request' =>
                Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDNum_Response' =>
                Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDString_Request' =>
                Ros2Abb_robot_msgsSrvSetRAPIDString_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDString_Request::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDString_Response' =>
                Ros2Abb_robot_msgsSrvSetRAPIDString_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDString_Response::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request' =>
                Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::class],
            'Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response' =>
                Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::class],
            'Ros2Abb_robot_msgsSrvSetSpeedRatio_Request' =>
                Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::class],
            'Ros2Abb_robot_msgsSrvSetSpeedRatio_Response' =>
                Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::class],
            'Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request' =>
                Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::class],
            'Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response' =>
                Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::SCHEMA + ['class' => Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::class],
            'Ros2Builtin_interfacesMsgDuration' =>
                Ros2Builtin_interfacesMsgDuration::SCHEMA + ['class' => Ros2Builtin_interfacesMsgDuration::class],
            'Ros2Trajectory_msgsMsgJointTrajectoryPoint' =>
                Ros2Trajectory_msgsMsgJointTrajectoryPoint::SCHEMA + ['class' => Ros2Trajectory_msgsMsgJointTrajectoryPoint::class],
            'Ros2Trajectory_msgsMsgJointTrajectory' =>
                Ros2Trajectory_msgsMsgJointTrajectory::SCHEMA + ['class' => Ros2Trajectory_msgsMsgJointTrajectory::class],
            'Ros2Geometry_msgsMsgVector3' =>
                Ros2Geometry_msgsMsgVector3::SCHEMA + ['class' => Ros2Geometry_msgsMsgVector3::class],
            'Ros2Geometry_msgsMsgQuaternion' =>
                Ros2Geometry_msgsMsgQuaternion::SCHEMA + ['class' => Ros2Geometry_msgsMsgQuaternion::class],
            'Ros2Geometry_msgsMsgTransform' =>
                Ros2Geometry_msgsMsgTransform::SCHEMA + ['class' => Ros2Geometry_msgsMsgTransform::class],
            'Ros2Geometry_msgsMsgTwist' =>
                Ros2Geometry_msgsMsgTwist::SCHEMA + ['class' => Ros2Geometry_msgsMsgTwist::class],
            'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint' =>
                Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::SCHEMA + ['class' => Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::class],
            'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory' =>
                Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::SCHEMA + ['class' => Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::class],
            'Ros2Control_msgsMsgJointTolerance' =>
                Ros2Control_msgsMsgJointTolerance::SCHEMA + ['class' => Ros2Control_msgsMsgJointTolerance::class],
            'Ros2Control_msgsMsgJointComponentTolerance' =>
                Ros2Control_msgsMsgJointComponentTolerance::SCHEMA + ['class' => Ros2Control_msgsMsgJointComponentTolerance::class],
            'Ros2Control_msgsActionFollowJointTrajectory_Goal' =>
                Ros2Control_msgsActionFollowJointTrajectory_Goal::SCHEMA + ['class' => Ros2Control_msgsActionFollowJointTrajectory_Goal::class],
            'Ros2Control_msgsActionFollowJointTrajectory_Result' =>
                Ros2Control_msgsActionFollowJointTrajectory_Result::SCHEMA + ['class' => Ros2Control_msgsActionFollowJointTrajectory_Result::class],
            'Ros2Control_msgsActionFollowJointTrajectory_Feedback' =>
                Ros2Control_msgsActionFollowJointTrajectory_Feedback::SCHEMA + ['class' => Ros2Control_msgsActionFollowJointTrajectory_Feedback::class],
            'Ros2Sensor_msgsMsgJointState' =>
                Ros2Sensor_msgsMsgJointState::SCHEMA + ['class' => Ros2Sensor_msgsMsgJointState::class],
            'Ros2Std_srvsSrvTrigger_Request' =>
                Ros2Std_srvsSrvTrigger_Request::SCHEMA + ['class' => Ros2Std_srvsSrvTrigger_Request::class],
            'Ros2Std_srvsSrvTrigger_Response' =>
                Ros2Std_srvsSrvTrigger_Response::SCHEMA + ['class' => Ros2Std_srvsSrvTrigger_Response::class],
        ]);
    }
    return $wire;
}
/** @brief Original complete interface roles and identities; source metadata creates no transport authority. */
const INTERFACES = [
    "abb_egm_msgs/msg/EGMChannelState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_egm_msgsMsgEGMChannelState'
        ]
    ],
    "abb_egm_msgs/msg/EGMState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_egm_msgsMsgEGMState'
        ]
    ],
    "abb_rapid_msgs/msg/ConfData" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgConfData'
        ]
    ],
    "abb_rapid_msgs/msg/ExtJoint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgExtJoint'
        ]
    ],
    "abb_rapid_msgs/msg/JointTarget" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgJointTarget'
        ]
    ],
    "abb_rapid_msgs/msg/LoadData" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgLoadData'
        ]
    ],
    "abb_rapid_msgs/msg/Orient" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgOrient'
        ]
    ],
    "abb_rapid_msgs/msg/Pos" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgPos'
        ]
    ],
    "abb_rapid_msgs/msg/Pose" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgPose'
        ]
    ],
    "abb_rapid_msgs/msg/RobJoint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgRobJoint'
        ]
    ],
    "abb_rapid_msgs/msg/RobTarget" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgRobTarget'
        ]
    ],
    "abb_rapid_msgs/msg/ToolData" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgToolData'
        ]
    ],
    "abb_rapid_msgs/msg/WObjData" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_msgsMsgWObjData'
        ]
    ],
    "abb_rapid_sm_addin_msgs/msg/EGMActivateSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/msg/EGMRunSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/msg/EGMSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/msg/EGMSetupSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/msg/EGMStopSettings" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings'
        ]
    ],
    "abb_rapid_sm_addin_msgs/msg/RuntimeState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState'
        ]
    ],
    "abb_rapid_sm_addin_msgs/msg/StateMachineState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState'
        ]
    ],
    "abb_rapid_sm_addin_msgs/srv/GetEGMSettings" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_629da1466b9fb1d5619c9ed7cb72af63f1abf8edffca98b76253939cd6c85b13',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request',
            "response" => 'Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response'
        ]
    ],
    "abb_rapid_sm_addin_msgs/srv/SetEGMSettings" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_63ebd3925a4dcccddc17fd99f01aecd0380241b441391bb15b0b7179b78c907d',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request',
            "response" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response'
        ]
    ],
    "abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_fece71adbfbaa38621a9440e9d453164e326cc12ce7b4f62ae8f5208a446a428',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request',
            "response" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response'
        ]
    ],
    "abb_rapid_sm_addin_msgs/srv/SetSGCommand" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_263a3706bdfe6388b6a466be4dcaebe86241a5f0a93d9c874c41252a05fba1fe',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request',
            "response" => 'Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response'
        ]
    ],
    "abb_robot_msgs/msg/MechanicalUnitState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_robot_msgsMsgMechanicalUnitState'
        ]
    ],
    "abb_robot_msgs/msg/RAPIDSymbolPath" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_robot_msgsMsgRAPIDSymbolPath'
        ]
    ],
    "abb_robot_msgs/msg/RAPIDTaskState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_robot_msgsMsgRAPIDTaskState'
        ]
    ],
    "abb_robot_msgs/msg/ServiceResponses" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Abb_robot_msgsMsgServiceResponses'
        ]
    ],
    "abb_robot_msgs/msg/SystemState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Abb_robot_msgsMsgSystemState'
        ]
    ],
    "abb_robot_msgs/srv/GetFileContents" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_c7b97ec9f395c089ef8b57e8ee2516eab9e6ed3f9634e6b0bef7e2c775372254',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvGetFileContents_Request',
            "response" => 'Ros2Abb_robot_msgsSrvGetFileContents_Response'
        ]
    ],
    "abb_robot_msgs/srv/GetIOSignal" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_eb316d69fb5a32c8f6420013e9129bfdd22c468233686b3cd59715f1a0d4ea2e',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvGetIOSignal_Request',
            "response" => 'Ros2Abb_robot_msgsSrvGetIOSignal_Response'
        ]
    ],
    "abb_robot_msgs/srv/GetRAPIDBool" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_95dd04c7da1d3bacf8966cc5edc81610db309d4d9b742bc60aaeec8e37958496',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvGetRAPIDBool_Request',
            "response" => 'Ros2Abb_robot_msgsSrvGetRAPIDBool_Response'
        ]
    ],
    "abb_robot_msgs/srv/GetRAPIDDnum" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_05ef910e3b349c82858b78b07d492c20ea94fe654237ef84aa5381b773e7205c',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request',
            "response" => 'Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response'
        ]
    ],
    "abb_robot_msgs/srv/GetRAPIDNum" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_94575e630f48c602029406b42b68dce108ab4f6dfa7b472f1fc5790ac12b4c42',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvGetRAPIDNum_Request',
            "response" => 'Ros2Abb_robot_msgsSrvGetRAPIDNum_Response'
        ]
    ],
    "abb_robot_msgs/srv/GetRAPIDString" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d10ac5ec86f441f67de7a2ee840c24111f0a50d5db6978a723499015a60489be',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvGetRAPIDString_Request',
            "response" => 'Ros2Abb_robot_msgsSrvGetRAPIDString_Response'
        ]
    ],
    "abb_robot_msgs/srv/GetRAPIDSymbol" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_aa9eafab83cb6ef87e5a066ed003e2ea981e12c08d94247acaab926ef6a0744b',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request',
            "response" => 'Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response'
        ]
    ],
    "abb_robot_msgs/srv/GetRobotControllerDescription" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_e619dfd61cfa53caaf1f68654265dc55840f22c9e0f0aba4bf13ab113c7e8807',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request',
            "response" => 'Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response'
        ]
    ],
    "abb_robot_msgs/srv/GetSpeedRatio" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f60207d7d91d2ec182aca36906b656362af00b0295fd571cb251396c112bad22',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvGetSpeedRatio_Request',
            "response" => 'Ros2Abb_robot_msgsSrvGetSpeedRatio_Response'
        ]
    ],
    "abb_robot_msgs/srv/SetFileContents" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_668b5831104ea9a62c8a17bbf472e1ed41bdbdff8eb8198668d7fce3cd0904a4',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvSetFileContents_Request',
            "response" => 'Ros2Abb_robot_msgsSrvSetFileContents_Response'
        ]
    ],
    "abb_robot_msgs/srv/SetIOSignal" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_203b99505ba5e8687db76351a993eebfc19cfceb6b020f53a7ea6ed5883b7b77',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvSetIOSignal_Request',
            "response" => 'Ros2Abb_robot_msgsSrvSetIOSignal_Response'
        ]
    ],
    "abb_robot_msgs/srv/SetRAPIDBool" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bbbcf522450086ae2504598275b38bb4c693837878adcbef88a8eba146b7cba9',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvSetRAPIDBool_Request',
            "response" => 'Ros2Abb_robot_msgsSrvSetRAPIDBool_Response'
        ]
    ],
    "abb_robot_msgs/srv/SetRAPIDDnum" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_921a02212c775748bb0efa41c1a099d01f8a365cbaa2c6b848f308ea8343773c',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request',
            "response" => 'Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response'
        ]
    ],
    "abb_robot_msgs/srv/SetRAPIDNum" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_f53f6854ac9971f826db237909035a28694c08d99470685504bf7961c9ec718d',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvSetRAPIDNum_Request',
            "response" => 'Ros2Abb_robot_msgsSrvSetRAPIDNum_Response'
        ]
    ],
    "abb_robot_msgs/srv/SetRAPIDString" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_869a873b853404f55cf2089141feb4f02b635cfc7d41379119e1cbd27e803024',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvSetRAPIDString_Request',
            "response" => 'Ros2Abb_robot_msgsSrvSetRAPIDString_Response'
        ]
    ],
    "abb_robot_msgs/srv/SetRAPIDSymbol" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1e56d1bd5cce820b2de1ab138d1cfa04d86a0d533ecae924af6399e4361b7d8d',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request',
            "response" => 'Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response'
        ]
    ],
    "abb_robot_msgs/srv/SetSpeedRatio" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_71c8ed938f11420b01451d43b7487212b1745061cd5016e65f5b33e1cac61c6b',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvSetSpeedRatio_Request',
            "response" => 'Ros2Abb_robot_msgsSrvSetSpeedRatio_Response'
        ]
    ],
    "abb_robot_msgs/srv/TriggerWithResultCode" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4fa47b1ad67153250f276ad1bcd7ab8f30d32e150715d2856caabb40261deb5c',
        "registered" => true,
        "components" => [
            "request" => 'Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request',
            "response" => 'Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response'
        ]
    ],
    "builtin_interfaces/msg/Duration" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Builtin_interfacesMsgDuration'
        ]
    ],
    "builtin_interfaces/msg/Time" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Builtin_interfacesMsgTime'
        ]
    ],
    "control_msgs/action/FollowJointTrajectory" => [
        "kind" => 'action',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_bd40771444c5441b79e63bdf5f2d5829d2c8b7ea0ccfd285baba8867cdc43757',
        "registered" => true,
        "components" => [
            "goal" => 'Ros2Control_msgsActionFollowJointTrajectory_Goal',
            "result" => 'Ros2Control_msgsActionFollowJointTrajectory_Result',
            "feedback" => 'Ros2Control_msgsActionFollowJointTrajectory_Feedback'
        ]
    ],
    "control_msgs/msg/JointComponentTolerance" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Control_msgsMsgJointComponentTolerance'
        ]
    ],
    "control_msgs/msg/JointTolerance" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Control_msgsMsgJointTolerance'
        ]
    ],
    "geometry_msgs/msg/Quaternion" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Geometry_msgsMsgQuaternion'
        ]
    ],
    "geometry_msgs/msg/Transform" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Geometry_msgsMsgTransform'
        ]
    ],
    "geometry_msgs/msg/Twist" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Geometry_msgsMsgTwist'
        ]
    ],
    "geometry_msgs/msg/Vector3" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Geometry_msgsMsgVector3'
        ]
    ],
    "sensor_msgs/msg/JointState" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884',
        "registered" => true,
        "components" => [
            "message" => 'Ros2Sensor_msgsMsgJointState'
        ]
    ],
    "std_msgs/msg/Header" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Std_msgsMsgHeader'
        ]
    ],
    "std_srvs/srv/Trigger" => [
        "kind" => 'service',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_2bafba62f4b166a5e736d6b5f0a5db9a8f8c2f02dc21daa0779ff56f8b87e583',
        "registered" => false,
        "components" => [
            "request" => 'Ros2Std_srvsSrvTrigger_Request',
            "response" => 'Ros2Std_srvsSrvTrigger_Response'
        ]
    ],
    "trajectory_msgs/msg/JointTrajectory" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Trajectory_msgsMsgJointTrajectory'
        ]
    ],
    "trajectory_msgs/msg/JointTrajectoryPoint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Trajectory_msgsMsgJointTrajectoryPoint'
        ]
    ],
    "trajectory_msgs/msg/MultiDOFJointTrajectory" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectory'
        ]
    ],
    "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint" => [
        "kind" => 'message',
        "native_identity" => null,
        "codec_identity" => 'UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242',
        "registered" => false,
        "components" => [
            "message" => 'Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint'
        ]
    ]
];
