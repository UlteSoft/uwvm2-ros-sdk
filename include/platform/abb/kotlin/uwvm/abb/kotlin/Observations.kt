/**
 * @file Observations.kt
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb.kotlin

import uwvm.abb.Observation

/**
 * @brief Expose idiomatic Kotlin signatures for complete ABB observation values.
 * @details Kotlin sources are compiled to genuine JVM IR and then AOT-lowered
 * by TeaVM into this same WASI guest. Java facade values remain caller-owned;
 * no host JVM, ROS process, coroutine scope, or reflection bridge is required.
 */
object Observations {
    /**
     * @brief Read the complete GetSpeedRatio response once.
     * @param alias Existing exact service-call capability alias.
     * @return Owned typed response/report; primary 5 preserves controller refusal.
     * @details All imported operations and the once-only close complete before return.
     */
    fun readSpeed(alias: String): Observation.Result<Observation.SpeedRatio> =
        Observation.readSpeed(alias)

    /**
     * @brief Read one IO signal with a real bounded canonical request.
     * @param alias Existing exact GetIOSignal service-call alias.
     * @param signal Nonempty Unicode name, at most 512 encoded UTF-8 bytes.
     * @return Owned complete response/report; local invalid input yields primary 22.
     * @details The signal and alias are borrowed only until this synchronous call returns.
     */
    fun readIO(alias: String, signal: String): Observation.Result<Observation.IOSignal> =
        Observation.readIO(alias, signal)

    /**
     * @brief Await a complete SystemState through one retained subscription.
     * @param alias Existing exact topic-subscribe alias.
     * @param attempts Explicit poll credits in 1..250.
     * @return Owned complete nested state or actual transport/clock/decode failure.
     * @details Only idle status 11 allows another poll; every pause uses WASI monotonic time.
     */
    fun systemState(alias: String, attempts: Int): Observation.Result<Observation.SystemState> =
        Observation.systemState(alias, attempts)
}
