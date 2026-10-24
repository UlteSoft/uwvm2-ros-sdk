/**
 * @file records.mjs
 * @brief Complete original clearpath classes using the shared strict JavaScript codec.
 * @details Source-only identities grant no native ROS registration or permission.
 */
import {Record, Registry} from 'ros/js/wire';
export const REGISTRY = new Registry();

/**
 * @brief Own every original builtin_interfaces/msg/Duration field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Builtin_interfacesMsgDuration extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-duration",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "sec",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "nanosec",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                }
            ],
        "type": "builtin_interfaces/msg/Duration"
    };
}

REGISTRY.add(Ros2Builtin_interfacesMsgDuration);

/**
 * @brief Own every original builtin_interfaces/msg/Time field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Builtin_interfacesMsgTime extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "sec",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "nanosec",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                }
            ],
        "type": "builtin_interfaces/msg/Time"
    };
}

REGISTRY.add(Ros2Builtin_interfacesMsgTime);

/**
 * @brief Own every original clearpath_platform_msgs/msg/Drive field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsMsgDrive extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "ros_version": 2,
        "constants": {"MODE_VELOCITY": 0, "MODE_PWM": 1, "MODE_NONE": -1, "LEFT": 0, "RIGHT": 1},
        "fields":
            [
                {
                      "name" : "mode",
                      "type": "int8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "drivers",
                      "type": "float32",
                      "array": "array",
                      "count": 2,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 4
                }
            ],
        "type": "clearpath_platform_msgs/msg/Drive"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsMsgDrive);

/**
 * @brief Own every original clearpath_platform_msgs/msg/DriveFeedback field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsMsgDriveFeedback extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287",
        "minimum": 25,
        "maximum": 25,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "current",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "duty_cycle",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "bridge_temperature",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "motor_temperature",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "measured_velocity",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "measured_travel",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "driver_fault",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                }
            ],
        "type": "clearpath_platform_msgs/msg/DriveFeedback"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsMsgDriveFeedback);

/**
 * @brief Own every original clearpath_platform_msgs/msg/Fans field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsMsgFans extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317",
        "minimum": 4,
        "maximum": 6,
        "semantics": "",
        "ros_version": 2,
        "constants": {
                      "R100_EQUIPMENT_BAY_INTAKE": 0,
                      "R100_EQUIPMENT_BAY_EXHAUST": 1,
                      "R100_CHARGER_BAY_INTAKE": 2,
                      "R100_CHARGER_BAY_EXHAUST": 3,
                      "R100_USER_BAY_INTAKE": 4,
                      "R100_USER_BAY_EXHAUST": 5,
                      "FAN_OFF": 0,
                      "FAN_ON_HIGH": 1,
                      "FAN_ON_LOW": 2
        },
        "fields": [ {
                      "name" : "fans",
                      "type": "uint8",
                      "array": "sequence",
                      "count": 2,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
        }
         ],
        "type": "clearpath_platform_msgs/msg/Fans"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsMsgFans);

/**
 * @brief Own every original std_msgs/msg/Header field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Std_msgsMsgHeader extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        "minimum": 12,
        "maximum": 140,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "stamp",
                    "type": "builtin_interfaces/msg/Time",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                },
                {
                    "name" : "frame_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                }
            ],
        "type": "std_msgs/msg/Header"
    };
}

REGISTRY.add(Ros2Std_msgsMsgHeader);

/**
 * @brief Own every original clearpath_platform_msgs/msg/Feedback field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsMsgFeedback extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442",
        "minimum": 64,
        "maximum": 192,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/msg/Header",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 12
                },
                {
                    "name" : "drivers",
                    "type": "clearpath_platform_msgs/msg/DriveFeedback",
                    "array": "array",
                    "count": 2,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 25
                },
                {
                    "name" : "commanded_mode",
                    "type": "int8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "actual_mode",
                    "type": "int8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                }
            ],
        "type": "clearpath_platform_msgs/msg/Feedback"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsMsgFeedback);

/**
 * @brief Own every original clearpath_platform_msgs/msg/RGB field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsMsgRGB extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1",
        "minimum": 3,
        "maximum": 3,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "red",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "green",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "blue",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                }
            ],
        "type": "clearpath_platform_msgs/msg/RGB"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsMsgRGB);

/**
 * @brief Own every original clearpath_platform_msgs/msg/Lights field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsMsgLights extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332",
        "minimum": 4,
        "maximum": 10,
        "semantics": "",
        "ros_version": 2,
        "constants": {
                      "D100_LIGHTS_REAR_LEFT": 0,
                      "D100_LIGHTS_FRONT_LEFT": 1,
                      "D100_LIGHTS_FRONT_RIGHT": 2,
                      "D100_LIGHTS_REAR_RIGHT": 3,
                      "D150_LIGHTS_REAR_LEFT": 0,
                      "D150_LIGHTS_FRONT_LEFT": 1,
                      "D150_LIGHTS_FRONT_RIGHT": 2,
                      "D150_LIGHTS_REAR_RIGHT": 3,
                      "R100_LIGHTS_FRONT_PORT_UPPER": 0,
                      "R100_LIGHTS_FRONT_PORT_LOWER": 1,
                      "R100_LIGHTS_FRONT_STARBOARD_UPPER": 2,
                      "R100_LIGHTS_FRONT_STARBOARD_LOWER": 3,
                      "R100_LIGHTS_REAR_PORT_UPPER": 4,
                      "R100_LIGHTS_REAR_PORT_LOWER": 5,
                      "R100_LIGHTS_REAR_STARBOARD_UPPER": 6,
                      "R100_LIGHTS_REAR_STARBOARD_LOWER": 7,
                      "W200_LIGHTS_FRONT_LEFT": 0,
                      "W200_LIGHTS_FRONT_RIGHT": 1,
                      "W200_LIGHTS_REAR_LEFT": 2,
                      "W200_LIGHTS_REAR_RIGHT": 3
        },
        "fields": [ {
                      "name" : "lights",
                      "type": "clearpath_platform_msgs/msg/RGB",
                      "array": "sequence",
                      "count": 2,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 3
        }
         ],
        "type": "clearpath_platform_msgs/msg/Lights"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsMsgLights);

/**
 * @brief Own every original clearpath_platform_msgs/msg/Power field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsMsgPower extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22",
        "minimum": 25,
        "maximum": 169,
        "semantics": "",
        "ros_version": 2,
        "constants": {
                      "NOT_APPLICABLE": -1,
                      "J100_MEASURED_BATTERY": 0,
                      "J100_MEASURED_5V": 1,
                      "J100_MEASURED_12V": 2,
                      "D100_MEASURED_BATTERY": 0,
                      "D100_MEASURED_5V": 1,
                      "D100_MEASURED_12V": 2,
                      "D150_MEASURED_BATTERY": 0,
                      "D150_MEASURED_5V": 1,
                      "D150_MEASURED_12V": 2,
                      "W200_MEASURED_BATTERY": 0,
                      "W200_MEASURED_12V": 1,
                      "W200_MEASURED_24V": 2,
                      "W200_MEASURED_48V": 3,
                      "R100_MEASURED_BATTERY": 0,
                      "R100_MEASURED_5V": 1,
                      "R100_MEASURED_12V": 2,
                      "R100_MEASURED_INVERTER": 3,
                      "R100_MEASURED_FRONT_AXLE": 4,
                      "R100_MEASURED_REAR_AXLE": 5,
                      "R100_MEASURED_LIGHT": 6,
                      "A200_BATTERY_VOLTAGE": 0,
                      "A200_LEFT_DRIVER_VOLTAGE": 1,
                      "A200_RIGHT_DRIVER_VOLTAGE": 2,
                      "A200_VOLTAGES_SIZE": 3,
                      "J100_TOTAL_CURRENT": 0,
                      "J100_COMPUTER_CURRENT": 1,
                      "J100_DRIVE_CURRENT": 2,
                      "J100_USER_CURRENT": 3,
                      "D100_TOTAL_CURRENT": 0,
                      "D100_COMPUTER_CURRENT": 1,
                      "D150_TOTAL_CURRENT": 0,
                      "D150_COMPUTER_CURRENT": 1,
                      "W200_TOTAL_CURRENT": 0,
                      "W200_COMPUTER_CURRENT": 1,
                      "W200_12V_CURRENT": 2,
                      "W200_24V_CURRENT": 3,
                      "R100_TOTAL_CURRENT": 0,
                      "A200_MCU_AND_USER_PORT_CURRENT": 0,
                      "A200_LEFT_DRIVER_CURRENT": 1,
                      "A200_RIGHT_DRIVER_CURRENT": 2,
                      "A200_CURRENTS_SIZE": 3
        },
        "fields":
            [
                {
                      "name" : "header",
                      "type": "std_msgs/msg/Header",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 12
                },
                {
                      "name" : "shore_power_connected",
                      "type": "int8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "battery_connected",
                      "type": "int8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "power_12v_user_nominal",
                      "type": "int8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "charger_connected",
                      "type": "int8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "charging_complete",
                      "type": "int8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "measured_voltages",
                      "type": "float32",
                      "array": "sequence",
                      "count": 2,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 4
                },
                {
                      "name" : "measured_currents",
                      "type": "float32",
                      "array": "sequence",
                      "count": 2,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 4
                }
            ],
        "type": "clearpath_platform_msgs/msg/Power"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsMsgPower);

/**
 * @brief Own every original clearpath_platform_msgs/msg/Status field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsMsgStatus extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1",
        "minimum": 44,
        "maximum": 684,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/msg/Header",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 12
                },
                {
                    "name" : "hardware_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 256,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "firmware_version",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 256,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "mcu_uptime",
                    "type": "builtin_interfaces/msg/Duration",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                },
                {
                    "name" : "connection_uptime",
                    "type": "builtin_interfaces/msg/Duration",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                },
                {
                    "name" : "pcb_temperature",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "mcu_temperature",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                }
            ],
        "type": "clearpath_platform_msgs/msg/Status"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsMsgStatus);

/**
 * @brief Own every original clearpath_platform_msgs/msg/StopStatus field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsMsgStopStatus extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2",
        "minimum": 15,
        "maximum": 143,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/msg/Header",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 12
                },
                {
                    "name" : "stop_power_status",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "external_stop_present",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "needs_reset",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                }
            ],
        "type": "clearpath_platform_msgs/msg/StopStatus"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsMsgStopStatus);

/**
 * @brief Own every original clearpath_platform_msgs/srv/ConfigureMcu_Request field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsSrvConfigureMcu_Request extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "domain_id",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "robot_namespace",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 256,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                }
            ],
        "type": "clearpath_platform_msgs/srv/ConfigureMcu_Request"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsSrvConfigureMcu_Request);

/**
 * @brief Own every original clearpath_platform_msgs/srv/ConfigureMcu_Response field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Clearpath_platform_msgsSrvConfigureMcu_Response extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "success",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 256,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                }
            ],
        "type": "clearpath_platform_msgs/srv/ConfigureMcu_Response"
    };
}

REGISTRY.add(Ros2Clearpath_platform_msgsSrvConfigureMcu_Response);
