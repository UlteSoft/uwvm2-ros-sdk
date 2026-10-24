@file:JvmName("Arithmetic")
package uwvm.pal.preload.math
import org.teavm.interop.Export
/** @brief Retain actual Kotlin module-local catch state, without a host JVM guest. */
private var caught = 0
/** @brief Count every actual finally execution independently of the result. */
private var finished = 0
/** @brief Count the real file-class initializer once per loaded module instance. */
private var initializations = 0
private val initialized = initializeModule()
private fun initializeModule(): Boolean { initializations += 1; return true }
/** @return Exact low-i32 sum/status zero, or status one after a real overflow catch. */
@Export(name = "checked_add")
fun checkedAdd(left: Int, right: Int): Long {
    try {
        val sum = left.toLong() + right.toLong()
        if (sum < Int.MIN_VALUE.toLong() || sum > Int.MAX_VALUE.toLong()) {
            throw ArithmeticException("i32 overflow")
        }
        return sum and 0xffffffffL
    } catch (overflow: ArithmeticException) {
        caught += 1
        return 1L shl 32
    } finally {
        finished += 1
    }
}
/** @return Actual catch count in high bits and finally count in low bits. */
@Export(name = "cleanup_counts")
fun cleanupCounts(): Long = (caught.toLong() shl 32) or (finished.toLong() and 0xffffffffL)
/** @return Actual initialization count; the real initializer token must be set. */
@Export(name = "initialization_count")
fun initializationCount(): Int {
    if (!initialized) { throw IllegalStateException("Module initializer did not run") }
    return initializations
}
