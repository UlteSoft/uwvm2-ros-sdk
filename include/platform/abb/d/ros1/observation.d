/**
 * @file observation.d
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
/// @brief Observe complete original Abb ROS 1 messages in genuine D.
/// @details All values own their bytes; successful acquisitions close exactly once.
module abb.d.ros1.observation;
public import ros.d.observation;
public import abb.d.ros1.records;

/// @brief Observe every original abb_robot_msgs/SystemState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation!Ros1Abb_robot_msgsSystemState waitSystemState(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive!Ros1Abb_robot_msgsSystemState(aliasBytes, attempts);
}

/// @brief Observe every original abb_egm_msgs/EGMState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation!Ros1Abb_egm_msgsEGMState waitEgmState(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive!Ros1Abb_egm_msgsEGMState(aliasBytes, attempts);
}

/// @brief Observe every original abb_rapid_sm_addin_msgs/RuntimeState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation!Ros1Abb_rapid_sm_addin_msgsRuntimeState waitRuntimeState(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive!Ros1Abb_rapid_sm_addin_msgsRuntimeState(aliasBytes, attempts);
}

