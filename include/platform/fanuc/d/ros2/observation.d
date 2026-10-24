/**
 * @file observation.d
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
/// @brief Observe complete original Fanuc ROS 2 messages in genuine D.
/// @details All values own their bytes; successful acquisitions close exactly once.
module fanuc.d.ros2.observation;
public import ros.d.observation;
public import fanuc.d.ros2.records;

/// @brief Observe every original fanuc_msgs/msg/ConnectionStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation!Ros2Fanuc_msgsMsgConnectionStatus waitConnectionStatus(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive!Ros2Fanuc_msgsMsgConnectionStatus(aliasBytes, attempts);
}

/// @brief Observe every original fanuc_msgs/msg/ForceSensor field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation!Ros2Fanuc_msgsMsgForceSensor waitForceSensor(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive!Ros2Fanuc_msgsMsgForceSensor(aliasBytes, attempts);
}

/// @brief Observe every original fanuc_msgs/msg/Frame field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation!Ros2Fanuc_msgsMsgFrame waitFrame(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive!Ros2Fanuc_msgsMsgFrame(aliasBytes, attempts);
}

