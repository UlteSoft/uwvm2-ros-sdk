/**
 * @file Observers.kt
 * @brief Observe complete Unitree records through ordinary Kotlin/Java interoperability.
 * @details Each call returns the owned whole Java record and independent operation
 * and cleanup facts. The Java facade has already closed its subscription once.
 */
package uwvm.unitree.kotlin.ros2

import uwvm.unitree.Observation
import uwvm.unitree.ros2.*

/** @brief Name the complete finite Kotlin observation operations. */
object Observers
{
    /**
     * @brief Receive a complete Ros2Unitree_goMsgSportModeState value.
     * @param alias Borrowed exact alias independently granted by deployment.
     * @param attempts Explicit finite poll budget in the inclusive range 1..250.
     * @return Owned complete value and independent status/length/cleanup facts.
     * @details Only idle status 11 permits another 20 ms poll. Failure commits
     * no partial record. Fatal allocation or VM traps bypass normal cleanup.
     */
    fun readMotionState(alias: String, attempts: Int): Observation.Result<Ros2Unitree_goMsgSportModeState>
    {
        return Observations.readMotionState(alias, attempts)
    }

    /**
     * @brief Receive a complete Ros2Unitree_goMsgLowState value.
     * @param alias Borrowed exact alias independently granted by deployment.
     * @param attempts Explicit finite poll budget in the inclusive range 1..250.
     * @return Owned complete value and independent status/length/cleanup facts.
     * @details Only idle status 11 permits another 20 ms poll. Failure commits
     * no partial record. Fatal allocation or VM traps bypass normal cleanup.
     */
    fun readLowState(alias: String, attempts: Int): Observation.Result<Ros2Unitree_goMsgLowState>
    {
        return Observations.readLowState(alias, attempts)
    }

    /**
     * @brief Receive a complete Ros2Unitree_goMsgWirelessController value.
     * @param alias Borrowed exact alias independently granted by deployment.
     * @param attempts Explicit finite poll budget in the inclusive range 1..250.
     * @return Owned complete value and independent status/length/cleanup facts.
     * @details Only idle status 11 permits another 20 ms poll. Failure commits
     * no partial record. Fatal allocation or VM traps bypass normal cleanup.
     */
    fun readWirelessController(alias: String, attempts: Int): Observation.Result<Ros2Unitree_goMsgWirelessController>
    {
        return Observations.readWirelessController(alias, attempts)
    }

}
