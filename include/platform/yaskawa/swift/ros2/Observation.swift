/// @file Observation.swift
/// @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
/// @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
/// fields, original constants and native defaults; field units and frames follow the retained
/// definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
/// native ROS objects; importing them grants no transport alias.
///  @brief Select only complete original Yaskawa ROS 2 message observers.
///  @details This namespace creates no owner; each actual observation owns its lifecycle.
public enum YaskawaRos2 {

  /// @brief Observe every original industrial_msgs/msg/RobotStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRobotStatus(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> RosObservation<Ros2Industrial_msgsMsgRobotStatus>
  {
    return rosReceive(
      aliasBytes, 150, attempts, Ros2Industrial_msgsMsgRobotStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original sensor_msgs/msg/JointState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitJointState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> RosObservation<Ros2Sensor_msgsMsgJointState>
  {
    return rosReceive(
      aliasBytes, 1196, attempts, Ros2Sensor_msgsMsgJointState.decode, { $0.encode() })
  }

  /// @brief Observe every original motoros2_interfaces/msg/AlarmInfo field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitAlarmInfo(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> RosObservation<Ros2Motoros2_interfacesMsgAlarmInfo>
  {
    return rosReceive(
      aliasBytes, 25248, attempts, Ros2Motoros2_interfacesMsgAlarmInfo.decode, { $0.encode() })
  }

}
