/**
 * @file Client.kt
 * @brief Provide the complete agibot Client.kt source contract.
 * @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
 * encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
 */
package agibot.kotlin

import agibot.shared.jvm.Core

/**
 * Owned complete AimDK observation. JSON retains every original field; all
 * int64/uint64 JSON values are decimal strings. [vendor] keeps the exact signed
 * service code separately from [error] and [cleanup]. No capability escapes.
 */
data class Observation(val error: Int, val cleanup: Int, val json: String, val vendor: Long)

/**
 * Kotlin SDK compiled from actual JVM bytecode to standalone WASI by TeaVM.
 * The shared JVM layer runs inside the same Wasm and owns the exact ROS imports,
 * bounded buffers and complete codecs. There is no host JVM or Node execution.
 */
object Client
{
    private fun own(value: Core.Observation): Observation =
        Observation(value.error, value.cleanup, value.json, value.vendor)

    /**
     * Query original GetMcAction once using [alias], an explicit service grant of
     * 1..255 UTF-8 bytes. Returns owned data after one checked capability close.
     * A vendor refusal does not become a transport error or cause request replay.
     */
    fun queryMode(alias: String): Observation = own(Core.observe(1, alias, 3000))

    /**
     * Receive complete McCommonState from [alias] before [timeoutMilliseconds],
     * in 1..30000 ms. Requires monotonic-clock; errno 110 means deadline expiry.
     * Only an idle queue is polled again. No callback enters Kotlin concurrently.
     */
    fun nextMotionState(alias: String, timeoutMilliseconds: Int = 3000): Observation =
        own(Core.observe(2, alias, timeoutMilliseconds))

    /**
     * Enumerate complete original X2 Ultra resources through [alias], an explicit
     * GetRobotResources service grant. This operation does not play or download
     * any resource. Independent invocations share no mutable SDK storage.
     */
    fun listResources(alias: String): Observation = own(Core.observe(3, alias, 3000))
}
