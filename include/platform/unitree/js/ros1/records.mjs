/**
 * @file records.mjs
 * @brief Complete original Unitree ROS 1 classes.
 * @details Every original field, nested element, quota and installed identity is retained.
 * Values own their storage and grant no ROS authority.
 */
import {Record, Registry} from 'ros/js/wire';

export const REGISTRY = new Registry();

/**
 * @brief Own every original unitree_legged_msgs/BmsCmd field.
 * @details Exactly 2 fields; 4..4 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsBmsCmd extends Record
{
    /** @brief Original off: uint8; scalar; count/quota 0. */
    /** @brief Original reserve: uint8; array; count/quota 3. */
    static schema = {
        type : 'unitree_legged_msgs/BmsCmd',
        native_identity: 'c09195f3200bd8917201f8805a3fe1d1',
        codec_identity: 'UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928',
        minimum: 4,
        maximum: 4,
        semantics: '',
        fields:
            [
                {
                    name : 'off',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'reserve',
                    type: 'uint8',
                    array: 'array',
                    count: 3,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsBmsCmd);

/**
 * @brief Own every original unitree_legged_msgs/BmsState field.
 * @details Exactly 9 fields; 34..34 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsBmsState extends Record
{
    /** @brief Original version_h: uint8; scalar; count/quota 0. */
    /** @brief Original version_l: uint8; scalar; count/quota 0. */
    /** @brief Original bms_status: uint8; scalar; count/quota 0. */
    /** @brief Original SOC: uint8; scalar; count/quota 0. */
    /** @brief Original current: int32; scalar; count/quota 0. */
    /** @brief Original cycle: uint16; scalar; count/quota 0. */
    /** @brief Original BQ_NTC: int8; array; count/quota 2. */
    /** @brief Original MCU_NTC: int8; array; count/quota 2. */
    /** @brief Original cell_vol: uint16; array; count/quota 10. */
    static schema = {
        type : 'unitree_legged_msgs/BmsState',
        native_identity: '8e007c660c590388bca7c2464d80df54',
        codec_identity: 'UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a',
        minimum: 34,
        maximum: 34,
        semantics: '',
        fields:
            [
                {
                    name : 'version_h',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'version_l',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bms_status',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'SOC',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'current',
                    type: 'int32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'cycle',
                    type: 'uint16',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'BQ_NTC',
                    type: 'int8',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'MCU_NTC',
                    type: 'int8',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'cell_vol',
                    type: 'uint16',
                    array: 'array',
                    count: 10,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsBmsState);

/**
 * @brief Own every original unitree_legged_msgs/Cartesian field.
 * @details Exactly 3 fields; 12..12 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsCartesian extends Record
{
    /** @brief Original x: float32; scalar; count/quota 0. */
    /** @brief Original y: float32; scalar; count/quota 0. */
    /** @brief Original z: float32; scalar; count/quota 0. */
    static schema = {
        type : 'unitree_legged_msgs/Cartesian',
        native_identity: 'cc153912f1453b708d221682bc23d9ac',
        codec_identity: 'UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722',
        minimum: 12,
        maximum: 12,
        semantics: '',
        fields:
            [
                {
                    name : 'x',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'y',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'z',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsCartesian);

/**
 * @brief Own every original unitree_legged_msgs/LED field.
 * @details Exactly 3 fields; 3..3 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsLED extends Record
{
    /** @brief Original r: uint8; scalar; count/quota 0. */
    /** @brief Original g: uint8; scalar; count/quota 0. */
    /** @brief Original b: uint8; scalar; count/quota 0. */
    static schema = {
        type : 'unitree_legged_msgs/LED',
        native_identity: '353891e354491c51aabe32df673fb446',
        codec_identity: 'UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5',
        minimum: 3,
        maximum: 3,
        semantics: '',
        fields:
            [
                {
                    name : 'r',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'g',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'b',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsLED);

/**
 * @brief Own every original unitree_legged_msgs/HighCmd field.
 * @details Exactly 20 fields; 129..129 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsHighCmd extends Record
{
    /** @brief Original head: uint8; array; count/quota 2. */
    /** @brief Original levelFlag: uint8; scalar; count/quota 0. */
    /** @brief Original frameReserve: uint8; scalar; count/quota 0. */
    /** @brief Original SN: uint32; array; count/quota 2. */
    /** @brief Original version: uint32; array; count/quota 2. */
    /** @brief Original bandWidth: uint16; scalar; count/quota 0. */
    /** @brief Original mode: uint8; scalar; count/quota 0. */
    /** @brief Original gaitType: uint8; scalar; count/quota 0. */
    /** @brief Original speedLevel: uint8; scalar; count/quota 0. */
    /** @brief Original footRaiseHeight: float32; scalar; count/quota 0. */
    /** @brief Original bodyHeight: float32; scalar; count/quota 0. */
    /** @brief Original position: float32; array; count/quota 2. */
    /** @brief Original euler: float32; array; count/quota 3. */
    /** @brief Original velocity: float32; array; count/quota 2. */
    /** @brief Original yawSpeed: float32; scalar; count/quota 0. */
    /** @brief Original bms: unitree_legged_msgs/BmsCmd; scalar; count/quota 0. */
    /** @brief Original led: unitree_legged_msgs/LED; array; count/quota 4. */
    /** @brief Original wirelessRemote: uint8; array; count/quota 40. */
    /** @brief Original reserve: uint32; scalar; count/quota 0. */
    /** @brief Original crc: uint32; scalar; count/quota 0. */
    static schema = {
        type : 'unitree_legged_msgs/HighCmd',
        native_identity: 'b4825051cf66ae8183b54c57dba16b66',
        codec_identity: 'UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38',
        minimum: 129,
        maximum: 129,
        semantics: '',
        fields:
            [
                {
                    name : 'head',
                    type: 'uint8',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'levelFlag',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'frameReserve',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'SN',
                    type: 'uint32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'version',
                    type: 'uint32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bandWidth',
                    type: 'uint16',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'mode',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'gaitType',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'speedLevel',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'footRaiseHeight',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bodyHeight',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'position',
                    type: 'float32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'euler',
                    type: 'float32',
                    array: 'array',
                    count: 3,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'velocity',
                    type: 'float32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'yawSpeed',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bms',
                    type: 'unitree_legged_msgs/BmsCmd',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'led',
                    type: 'unitree_legged_msgs/LED',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'wirelessRemote',
                    type: 'uint8',
                    array: 'array',
                    count: 40,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'reserve',
                    type: 'uint32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'crc',
                    type: 'uint32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsHighCmd);

/**
 * @brief Own every original unitree_legged_msgs/IMU field.
 * @details Exactly 5 fields; 53..53 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsIMU extends Record
{
    /** @brief Original quaternion: float32; array; count/quota 4. */
    /** @brief Original gyroscope: float32; array; count/quota 3. */
    /** @brief Original accelerometer: float32; array; count/quota 3. */
    /** @brief Original rpy: float32; array; count/quota 3. */
    /** @brief Original temperature: int8; scalar; count/quota 0. */
    static schema = {
        type : 'unitree_legged_msgs/IMU',
        native_identity: 'c2bcd83820da00fff261b67d6490da58',
        codec_identity: 'UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276',
        minimum: 53,
        maximum: 53,
        semantics: '',
        fields:
            [
                {
                    name : 'quaternion',
                    type: 'float32',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'gyroscope',
                    type: 'float32',
                    array: 'array',
                    count: 3,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'accelerometer',
                    type: 'float32',
                    array: 'array',
                    count: 3,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'rpy',
                    type: 'float32',
                    array: 'array',
                    count: 3,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'temperature',
                    type: 'int8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsIMU);

/**
 * @brief Own every original unitree_legged_msgs/MotorState field.
 * @details Exactly 10 fields; 38..38 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsMotorState extends Record
{
    /** @brief Original mode: uint8; scalar; count/quota 0. */
    /** @brief Original q: float32; scalar; count/quota 0. */
    /** @brief Original dq: float32; scalar; count/quota 0. */
    /** @brief Original ddq: float32; scalar; count/quota 0. */
    /** @brief Original tauEst: float32; scalar; count/quota 0. */
    /** @brief Original q_raw: float32; scalar; count/quota 0. */
    /** @brief Original dq_raw: float32; scalar; count/quota 0. */
    /** @brief Original ddq_raw: float32; scalar; count/quota 0. */
    /** @brief Original temperature: int8; scalar; count/quota 0. */
    /** @brief Original reserve: uint32; array; count/quota 2. */
    static schema = {
        type : 'unitree_legged_msgs/MotorState',
        native_identity: '94c55ee3b7852be2bd437b20ce12a254',
        codec_identity: 'UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf',
        minimum: 38,
        maximum: 38,
        semantics: '',
        fields:
            [
                {
                    name : 'mode',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'q',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'dq',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'ddq',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'tauEst',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'q_raw',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'dq_raw',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'ddq_raw',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'temperature',
                    type: 'int8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'reserve',
                    type: 'uint32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsMotorState);

/**
 * @brief Own every original unitree_legged_msgs/HighState field.
 * @details Exactly 25 fields; 1087..1087 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsHighState extends Record
{
    /** @brief Original head: uint8; array; count/quota 2. */
    /** @brief Original levelFlag: uint8; scalar; count/quota 0. */
    /** @brief Original frameReserve: uint8; scalar; count/quota 0. */
    /** @brief Original SN: uint32; array; count/quota 2. */
    /** @brief Original version: uint32; array; count/quota 2. */
    /** @brief Original bandWidth: uint16; scalar; count/quota 0. */
    /** @brief Original imu: unitree_legged_msgs/IMU; scalar; count/quota 0. */
    /** @brief Original motorState: unitree_legged_msgs/MotorState; array; count/quota 20. */
    /** @brief Original bms: unitree_legged_msgs/BmsState; scalar; count/quota 0. */
    /** @brief Original footForce: int16; array; count/quota 4. */
    /** @brief Original footForceEst: int16; array; count/quota 4. */
    /** @brief Original mode: uint8; scalar; count/quota 0. */
    /** @brief Original progress: float32; scalar; count/quota 0. */
    /** @brief Original gaitType: uint8; scalar; count/quota 0. */
    /** @brief Original footRaiseHeight: float32; scalar; count/quota 0. */
    /** @brief Original position: float32; array; count/quota 3. */
    /** @brief Original bodyHeight: float32; scalar; count/quota 0. */
    /** @brief Original velocity: float32; array; count/quota 3. */
    /** @brief Original yawSpeed: float32; scalar; count/quota 0. */
    /** @brief Original rangeObstacle: float32; array; count/quota 4. */
    /** @brief Original footPosition2Body: unitree_legged_msgs/Cartesian; array; count/quota 4. */
    /** @brief Original footSpeed2Body: unitree_legged_msgs/Cartesian; array; count/quota 4. */
    /** @brief Original wirelessRemote: uint8; array; count/quota 40. */
    /** @brief Original reserve: uint32; scalar; count/quota 0. */
    /** @brief Original crc: uint32; scalar; count/quota 0. */
    static schema = {
        type : 'unitree_legged_msgs/HighState',
        native_identity: '7904f43019dadf7640d573b4c14b9066',
        codec_identity: 'UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d',
        minimum: 1087,
        maximum: 1087,
        semantics: '',
        fields:
            [
                {
                    name : 'head',
                    type: 'uint8',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'levelFlag',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'frameReserve',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'SN',
                    type: 'uint32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'version',
                    type: 'uint32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bandWidth',
                    type: 'uint16',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'imu',
                    type: 'unitree_legged_msgs/IMU',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'motorState',
                    type: 'unitree_legged_msgs/MotorState',
                    array: 'array',
                    count: 20,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bms',
                    type: 'unitree_legged_msgs/BmsState',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'footForce',
                    type: 'int16',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'footForceEst',
                    type: 'int16',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'mode',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'progress',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'gaitType',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'footRaiseHeight',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'position',
                    type: 'float32',
                    array: 'array',
                    count: 3,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bodyHeight',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'velocity',
                    type: 'float32',
                    array: 'array',
                    count: 3,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'yawSpeed',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'rangeObstacle',
                    type: 'float32',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'footPosition2Body',
                    type: 'unitree_legged_msgs/Cartesian',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'footSpeed2Body',
                    type: 'unitree_legged_msgs/Cartesian',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'wirelessRemote',
                    type: 'uint8',
                    array: 'array',
                    count: 40,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'reserve',
                    type: 'uint32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'crc',
                    type: 'uint32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsHighState);

/**
 * @brief Own every original unitree_legged_msgs/MotorCmd field.
 * @details Exactly 7 fields; 33..33 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsMotorCmd extends Record
{
    /** @brief Original mode: uint8; scalar; count/quota 0. */
    /** @brief Original q: float32; scalar; count/quota 0. */
    /** @brief Original dq: float32; scalar; count/quota 0. */
    /** @brief Original tau: float32; scalar; count/quota 0. */
    /** @brief Original Kp: float32; scalar; count/quota 0. */
    /** @brief Original Kd: float32; scalar; count/quota 0. */
    /** @brief Original reserve: uint32; array; count/quota 3. */
    static schema = {
        type : 'unitree_legged_msgs/MotorCmd',
        native_identity: 'bbb3b7d91319c3a1b99055f0149ba221',
        codec_identity: 'UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083',
        minimum: 33,
        maximum: 33,
        semantics: '',
        fields:
            [
                {
                    name : 'mode',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'q',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'dq',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'tau',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'Kp',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'Kd',
                    type: 'float32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'reserve',
                    type: 'uint32',
                    array: 'array',
                    count: 3,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsMotorCmd);

/**
 * @brief Own every original unitree_legged_msgs/LowCmd field.
 * @details Exactly 11 fields; 734..734 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsLowCmd extends Record
{
    /** @brief Original head: uint8; array; count/quota 2. */
    /** @brief Original levelFlag: uint8; scalar; count/quota 0. */
    /** @brief Original frameReserve: uint8; scalar; count/quota 0. */
    /** @brief Original SN: uint32; array; count/quota 2. */
    /** @brief Original version: uint32; array; count/quota 2. */
    /** @brief Original bandWidth: uint16; scalar; count/quota 0. */
    /** @brief Original motorCmd: unitree_legged_msgs/MotorCmd; array; count/quota 20. */
    /** @brief Original bms: unitree_legged_msgs/BmsCmd; scalar; count/quota 0. */
    /** @brief Original wirelessRemote: uint8; array; count/quota 40. */
    /** @brief Original reserve: uint32; scalar; count/quota 0. */
    /** @brief Original crc: uint32; scalar; count/quota 0. */
    static schema = {
        type : 'unitree_legged_msgs/LowCmd',
        native_identity: '7a33b01032a894134df9b65b5cd356d1',
        codec_identity: 'UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181',
        minimum: 734,
        maximum: 734,
        semantics: '',
        fields:
            [
                {
                    name : 'head',
                    type: 'uint8',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'levelFlag',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'frameReserve',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'SN',
                    type: 'uint32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'version',
                    type: 'uint32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bandWidth',
                    type: 'uint16',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'motorCmd',
                    type: 'unitree_legged_msgs/MotorCmd',
                    array: 'array',
                    count: 20,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bms',
                    type: 'unitree_legged_msgs/BmsCmd',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'wirelessRemote',
                    type: 'uint8',
                    array: 'array',
                    count: 40,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'reserve',
                    type: 'uint32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'crc',
                    type: 'uint32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsLowCmd);

/**
 * @brief Own every original unitree_legged_msgs/LowState field.
 * @details Exactly 20 fields; 1069..1069 canonical bytes.
 * Inherited encode/decode reject malformed whole values transactionally.
 */
export class Ros1Unitree_legged_msgsLowState extends Record
{
    /** @brief Original head: uint8; array; count/quota 2. */
    /** @brief Original levelFlag: uint8; scalar; count/quota 0. */
    /** @brief Original frameReserve: uint8; scalar; count/quota 0. */
    /** @brief Original SN: uint32; array; count/quota 2. */
    /** @brief Original version: uint32; array; count/quota 2. */
    /** @brief Original bandWidth: uint16; scalar; count/quota 0. */
    /** @brief Original imu: unitree_legged_msgs/IMU; scalar; count/quota 0. */
    /** @brief Original motorState: unitree_legged_msgs/MotorState; array; count/quota 20. */
    /** @brief Original bms: unitree_legged_msgs/BmsState; scalar; count/quota 0. */
    /** @brief Original footForce: int16; array; count/quota 4. */
    /** @brief Original footForceEst: int16; array; count/quota 4. */
    /** @brief Original tick: uint32; scalar; count/quota 0. */
    /** @brief Original wirelessRemote: uint8; array; count/quota 40. */
    /** @brief Original reserve: uint32; scalar; count/quota 0. */
    /** @brief Original crc: uint32; scalar; count/quota 0. */
    /** @brief Original eeForceRaw: unitree_legged_msgs/Cartesian; array; count/quota 4. */
    /** @brief Original eeForce: unitree_legged_msgs/Cartesian; array; count/quota 4. */
    /** @brief Original position: unitree_legged_msgs/Cartesian; scalar; count/quota 0. */
    /** @brief Original velocity: unitree_legged_msgs/Cartesian; scalar; count/quota 0. */
    /** @brief Original velocity_w: unitree_legged_msgs/Cartesian; scalar; count/quota 0. */
    static schema = {
        type : 'unitree_legged_msgs/LowState',
        native_identity: '481f8a83f729a25e7cc170da192f80f9',
        codec_identity: 'UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0',
        minimum: 1069,
        maximum: 1069,
        semantics: '',
        fields:
            [
                {
                    name : 'head',
                    type: 'uint8',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'levelFlag',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'frameReserve',
                    type: 'uint8',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'SN',
                    type: 'uint32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'version',
                    type: 'uint32',
                    array: 'array',
                    count: 2,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bandWidth',
                    type: 'uint16',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'imu',
                    type: 'unitree_legged_msgs/IMU',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'motorState',
                    type: 'unitree_legged_msgs/MotorState',
                    array: 'array',
                    count: 20,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'bms',
                    type: 'unitree_legged_msgs/BmsState',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'footForce',
                    type: 'int16',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'footForceEst',
                    type: 'int16',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'tick',
                    type: 'uint32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'wirelessRemote',
                    type: 'uint8',
                    array: 'array',
                    count: 40,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'reserve',
                    type: 'uint32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'crc',
                    type: 'uint32',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'eeForceRaw',
                    type: 'unitree_legged_msgs/Cartesian',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'eeForce',
                    type: 'unitree_legged_msgs/Cartesian',
                    array: 'array',
                    count: 4,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'position',
                    type: 'unitree_legged_msgs/Cartesian',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'velocity',
                    type: 'unitree_legged_msgs/Cartesian',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
                {
                    name : 'velocity_w',
                    type: 'unitree_legged_msgs/Cartesian',
                    array: '',
                    count: 0,
                    string_bound: 0,
                    native_string_bound: 0,
                    native_sequence_bound: 0,
                    native_default: null,
                    native_scalar: '',
                    string_encoding: 'utf8',
                    float_policy: 'finite',
                    default: null,
                },
            ],
    };
}

REGISTRY.add(Ros1Unitree_legged_msgsLowState);
