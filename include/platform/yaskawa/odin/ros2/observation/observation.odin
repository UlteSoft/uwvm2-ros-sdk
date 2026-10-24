/**
 * @file observation.odin
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
// @brief Observe complete original Yaskawa ROS 2 messages in genuine Odin.
// @details All values own their bytes; successful acquisitions close exactly once.
package yaskawa
import core "ros:odin/observation"
import records "yaskawa:odin/ros2"

// @brief Observe every original industrial_msgs/msg/RobotStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_robot_status :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Industrial_msgsMsgRobotStatus) {
    return core.receive(
        records.Ros2Industrial_msgsMsgRobotStatus,
        alias_bytes,
        150,
        records.decode_Ros2Industrial_msgsMsgRobotStatus,
        records.encode_Ros2Industrial_msgsMsgRobotStatus,
        attempts,
    )
}

// @brief Observe every original sensor_msgs/msg/JointState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_joint_state :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Sensor_msgsMsgJointState) {
    return core.receive(
        records.Ros2Sensor_msgsMsgJointState,
        alias_bytes,
        1196,
        records.decode_Ros2Sensor_msgsMsgJointState,
        records.encode_Ros2Sensor_msgsMsgJointState,
        attempts,
    )
}

// @brief Observe every original motoros2_interfaces/msg/AlarmInfo field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_alarm_info :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Motoros2_interfacesMsgAlarmInfo) {
    return core.receive(
        records.Ros2Motoros2_interfacesMsgAlarmInfo,
        alias_bytes,
        25248,
        records.decode_Ros2Motoros2_interfacesMsgAlarmInfo,
        records.encode_Ros2Motoros2_interfacesMsgAlarmInfo,
        attempts,
    )
}

