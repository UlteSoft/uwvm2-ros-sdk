## @brief Observe complete original Unitree ROS 2 messages in genuine Nim.
## @details All values own their bytes; successful acquisitions close exactly once.
import unitree/nim/observation as core
import unitree/nim/ros2/records
export core

proc waitMotionState*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros2Unitree_goMsgSportModeState] =
    ## @brief Observe every original unitree_go/msg/SportModeState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Unitree_goMsgSportModeState](aliasBytes, 227, 227, attempts)

proc waitLowState*(aliasBytes: openArray[byte]; attempts: uint32): Observation[Ros2Unitree_goMsgLowState] =
    ## @brief Observe every original unitree_go/msg/LowState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Unitree_goMsgLowState](aliasBytes, 1050, 1050, attempts)

proc waitWirelessController*(aliasBytes: openArray[byte]; attempts: uint32): Observation[
        Ros2Unitree_goMsgWirelessController] =
    ## @brief Observe every original unitree_go/msg/WirelessController field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros2Unitree_goMsgWirelessController](aliasBytes, 18, 18, attempts)
