/// @brief Observe complete original Unitree ROS 2 messages in genuine D.
/// @details All values own their bytes; successful acquisitions close exactly once.
module unitree.d.ros2.observation;
public
import unitree.d.observation;
public
import unitree.d.ros2.records;

/// @brief Observe every original unitree_go/msg/SportModeState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Unitree_goMsgSportModeState waitMotionState(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Unitree_goMsgSportModeState(aliasBytes, attempts);
}

/// @brief Observe every original unitree_go/msg/LowState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Unitree_goMsgLowState waitLowState(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Unitree_goMsgLowState(aliasBytes, attempts);
}

/// @brief Observe every original unitree_go/msg/WirelessController field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Unitree_goMsgWirelessController waitWirelessController(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Unitree_goMsgWirelessController(aliasBytes, attempts);
}
