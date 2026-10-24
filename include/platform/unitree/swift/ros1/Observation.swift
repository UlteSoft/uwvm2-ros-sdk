/// @brief Select only complete original Unitree ROS 1 message observers.
/// @details This namespace creates no owner; each actual observation owns its lifecycle.
public enum UnitreeRos1 {

  /// @brief Observe every original unitree_legged_msgs/HighState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitMotionState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> UnitreeObservation<Ros1Unitree_legged_msgsHighState>
  {
    return unitreeReceive(
      aliasBytes, 1087, attempts, Ros1Unitree_legged_msgsHighState.decode, { $0.encode() })
  }

  /// @brief Observe every original unitree_legged_msgs/LowState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitLowState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> UnitreeObservation<Ros1Unitree_legged_msgsLowState>
  {
    return unitreeReceive(
      aliasBytes, 1069, attempts, Ros1Unitree_legged_msgsLowState.decode, { $0.encode() })
  }

  /// @brief Observe every original unitree_legged_msgs/MotorState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitMotorState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> UnitreeObservation<Ros1Unitree_legged_msgsMotorState>
  {
    return unitreeReceive(
      aliasBytes, 38, attempts, Ros1Unitree_legged_msgsMotorState.decode, { $0.encode() })
  }

}
