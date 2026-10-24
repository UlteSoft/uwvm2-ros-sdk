/// @file Observation.swift
/// @brief Represent the complete original FANUC ROS 2 canonical value catalog.
/// @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
/// fields, original constants and native defaults; field units and frames follow the retained
/// definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
/// native ROS objects; importing them grants no transport alias.
///  @brief Select only complete original Fanuc ROS 2 message observers.
///  @details This namespace creates no owner; each actual observation owns its lifecycle.
public enum FanucRos2 {

  /// @brief Observe every original fanuc_msgs/msg/ConnectionStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitConnectionStatus(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> RosObservation<Ros2Fanuc_msgsMsgConnectionStatus>
  {
    return rosReceive(
      aliasBytes, 1, attempts, Ros2Fanuc_msgsMsgConnectionStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original fanuc_msgs/msg/ForceSensor field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitForceSensor(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> RosObservation<Ros2Fanuc_msgsMsgForceSensor>
  {
    return rosReceive(
      aliasBytes, 28, attempts, Ros2Fanuc_msgsMsgForceSensor.decode, { $0.encode() })
  }

  /// @brief Observe every original fanuc_msgs/msg/Frame field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitFrame(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> RosObservation<Ros2Fanuc_msgsMsgFrame>
  {
    return rosReceive(aliasBytes, 24, attempts, Ros2Fanuc_msgsMsgFrame.decode, { $0.encode() })
  }

}
