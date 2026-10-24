/// @brief Select only complete original Unitree ROS 2 message observers.
/// @details This namespace creates no owner; each actual observation owns its lifecycle.
public enum UnitreeRos2 {

  /// @brief Observe every original unitree_go/msg/SportModeState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitMotionState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> UnitreeObservation<Ros2Unitree_goMsgSportModeState>
  {
    return unitreeReceive(
      aliasBytes, 227, attempts, Ros2Unitree_goMsgSportModeState.decode, { $0.encode() })
  }

  /// @brief Observe every original unitree_go/msg/LowState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitLowState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> UnitreeObservation<Ros2Unitree_goMsgLowState>
  {
    return unitreeReceive(
      aliasBytes, 1050, attempts, Ros2Unitree_goMsgLowState.decode, { $0.encode() })
  }

  /// @brief Observe every original unitree_go/msg/WirelessController field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitWirelessController(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> UnitreeObservation<Ros2Unitree_goMsgWirelessController>
  {
    return unitreeReceive(
      aliasBytes, 18, attempts, Ros2Unitree_goMsgWirelessController.decode, { $0.encode() })
  }

}
