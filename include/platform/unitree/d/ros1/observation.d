/// @brief Observe complete original Unitree ROS 1 messages in genuine D.
/// @details All values own their bytes; successful acquisitions close exactly once.
module unitree.d.ros1.observation;
public
import unitree.d.observation;
public
import unitree.d.ros1.records;

/// @brief Observe every original unitree_legged_msgs/HighState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Unitree_legged_msgsHighState waitMotionState(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Unitree_legged_msgsHighState(aliasBytes, attempts);
}

/// @brief Observe every original unitree_legged_msgs/LowState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Unitree_legged_msgsLowState waitLowState(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Unitree_legged_msgsLowState(aliasBytes, attempts);
}

/// @brief Observe every original unitree_legged_msgs/MotorState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Unitree_legged_msgsMotorState waitMotorState(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Unitree_legged_msgsMotorState(aliasBytes, attempts);
}
