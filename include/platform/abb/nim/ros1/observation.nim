## @file observation.nim
## @brief Represent the complete original ABB ROS 1 canonical value catalog.
## @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
## fields, original constants and native defaults; field units and frames follow the retained
## definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
## native ROS objects; importing them grants no transport alias.
## @brief Observe complete original Abb ROS 1 messages in genuine Nim.
## @details All values own their bytes; successful acquisitions close exactly once.
import ros/nim/observation as core
import abb/nim/ros1/records
export core

proc waitSystemState*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros1Abb_robot_msgsSystemState] =
    ## @brief Observe every original abb_robot_msgs/SystemState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Abb_robot_msgsSystemState](aliasBytes, 27, 2331, attempts)

proc waitEgmState*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros1Abb_egm_msgsEGMState] =
    ## @brief Observe every original abb_egm_msgs/EGMState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Abb_egm_msgsEGMState](aliasBytes, 20, 1380, attempts)

proc waitRuntimeState*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros1Abb_rapid_sm_addin_msgsRuntimeState] =
    ## @brief Observe every original abb_rapid_sm_addin_msgs/RuntimeState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Abb_rapid_sm_addin_msgsRuntimeState](aliasBytes, 20, 8372, attempts)

