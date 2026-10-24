package org.uwvm.robotis.patrol.kotlin

import org.uwvm.roswasm.Capability
import org.uwvm.roswasm.Codecs
import org.uwvm.roswasm.Result
import org.uwvm.roswasm.Ros2Transport
import org.uwvm.roswasm.RosException
import org.uwvm.roswasm.Session

/**
 * @brief Complete original Patrol Vector3 Goal without field projection.
 * @details Construction creates no permission or physical/model guarantee.
 * Validation precedes any capability acquisition in encodeGoal/run.
 * @param mode Original square1 or triangle2 selector.
 * @param distance Original finite distance in metres when submitted.
 * @param count Original decimal integer converted to finite double.
 * @see PatrolClient.parseGoal PatrolClient.encodeGoal PatrolClient.run
 */
data class Goal(val mode: Double, val distance: Double, val count: Double)

/**
 * @brief Retain complete original values, full unsigned ID and every close outcome.
 * @details primary retains the exact Throwable. goalId uses all Long bits;
 * negative values remain valid u64 and are printed with toUnsignedString.
 * sendUnknown never permits replay. Only feedback[0 until feedbackUsed] is
 * populated; terminalKind2/3/4 accompanies a fully decoded original resultText.
 * cleanup/failures preserve original per-owner outcomes in reverse acquisition
 * order, even when cleanupException was thrown. session retains real retirement
 * diagnostics. A single synchronous Guest caller owns this mutable carrier.
 * @see PatrolClient.run Session.closeChecked
 */
class Report internal constructor(polls: Int) {
    var primary: Throwable? = null
    var goalId: Long = 0
    var sendUnknown = false
    val feedback: Array<String?> = arrayOfNulls(polls)
    var feedbackUsed = 0
    var terminalKind = 0
    var resultText = ""
    var cleanup: List<Result?> = emptyList()
    var cleanupFailures: List<Throwable?> = emptyList()
    var cleanupException: Throwable? = null
    var session: Session? = null
}

/**
 * @brief Execute the bounded original Patrol client through the genuine Java SDK.
 * @details Requires Kotlin/JVM-bytecode plus the actual TeaVM WEBASSEMBLY_WASI
 * runtime/ROS bridge. No JVM/JNI, socket, native server, callback thread, retry
 * or automatic cancellation is supplied. Original server/driver remains separate.
 * @see PatrolClient.parseGoal PatrolClient.run Report
 */
object PatrolClient {
    private fun invalid(): Nothing = throw RosException(Result(22))

    private fun number(text: String, integer: Boolean): Double {
        val grammar = if (integer) "[+-]?[0-9]+" else "[+-]?(?:[0-9]+(?:\\.[0-9]*)?|\\.[0-9]+)(?:[eE][+-]?[0-9]+)?"
        if (text.isEmpty() || text.length > 255 || !Regex(grammar).matches(text)) invalid()
        val value = text.toDoubleOrNull() ?: invalid()
        if (!value.isFinite()) invalid()
        return if (integer && value == 0.0) 0.0 else value
    }

    /**
     * @brief Parse a complete square/triangle Goal before any owner is opened.
     * @details Numeric arguments contain at most255 ASCII bytes. Count requires
     * signed decimal digits converted to equivalent finite original float64,
     * including positive zero for '-0'. Original interactive/unbounded Python
     * input remains an explicit narrower-domain difference. No model limit inferred.
     * @param mode Exactly s or t; main handles x without a Session.
     * @param distance Original finite distance in metres.
     * @param count Original signed decimal integer count.
     * @return Complete Goal, or RosException(error22) before an external effect.
     * @see Goal PatrolClient.encodeGoal PatrolClient.run
     */
    fun parseGoal(mode: String, distance: String, count: String): Goal {
        if (mode != "s" && mode != "t") invalid()
        return Goal(if (mode == "s") 1.0 else 2.0, number(distance, false), number(count, true))
    }

    /**
     * @brief Encode every original Vector3 field through the shared canonical writer.
     * @details Pure24-byte little-endian conversion; no native API is called.
     * @param goal Borrowed complete Goal, unchanged while encoding.
     * @return Owned24-byte value; invalid mode/value/fractional count throws22.
     * @see Goal PatrolClient.parseGoal PatrolClient.run
     */
    fun encodeGoal(goal: Goal): ByteArray {
        if ((goal.mode != 1.0 && goal.mode != 2.0) || !goal.distance.isFinite() ||
            !goal.count.isFinite() || Math.rint(goal.count) != goal.count) invalid()
        return Codecs.Writer(24).f64(goal.mode).f64(goal.distance).f64(goal.count).finish()
    }

    private fun originalText(reader: Codecs.Reader): String {
        val text = reader.text()
        reader.end()
        if (text.indexOf('\u0000') >= 0 || Codecs.utf8(text).size > 256) invalid()
        return text
    }

    /**
     * @brief Send one full Goal, poll original feedback/result and close every role.
     * @details Uses actual Ros2Transport/Session/Capability and complete shared
     * codecs. Opens all four roles before send. Full Long/u64 ID, kind2/3/4 and
     * complete strict UTF-8 decode precede terminal commit. Every acquired role
     * closes once, including partial construction. Original primary, every close
     * and thrown cleanup remain independent. No stronger cancel-any role, native
     * wait, retry, automatic cancel or physical recovery is introduced.
     * @param aliases Four distinct1..255-byte NUL-free UTF-8 original names in
     * send/cancel-own/feedback/result order, borrowed unchanged until return.
     * @param goal Complete reviewed original Goal, encoded before opening.
     * @param polls Integer1..4096; each synchronous iteration polls both channels.
     * @return Report with full original values and exact cleanup facts. Pure
     * invalid input throws22; Wasm trap/OOM cannot promise cleanup.
     * @see Report Goal PatrolClient.parseGoal PatrolClient.encodeGoal
     */
    fun run(aliases: Array<String>, goal: Goal, polls: Int): Report {
        val encoded = encodeGoal(goal)
        if (aliases.size != 4 || aliases.distinct().size != 4 || polls !in 1..4096) invalid()
        for (alias in aliases) {
            val bytes = Codecs.utf8(alias)
            if (bytes.isEmpty() || bytes.size > 255 || alias.indexOf('\u0000') >= 0) invalid()
        }
        val report = Report(polls)
        val roles = arrayOfNulls<Capability>(4)
        val session = Session(Ros2Transport(), 4)
        report.session = session
        try {
            session.checkAbi()
            for (index in aliases.indices) roles[index] = session.open(aliases[index])
            report.sendUnknown = true
            val reader = Codecs.Reader(roles[0]!!.invoke("action_send_goal", encoded, 8).checked().data)
            val id = reader.unsigned(8)
            reader.end()
            if (id == 0L) invalid()
            report.goalId = id
            report.sendUnknown = false
            val selector = Codecs.Writer(8).integer(id, 8, false).finish()
            for (iteration in 0 until polls) {
                val feedback = roles[2]!!.invoke("action_receive_feedback", selector, 268)
                if (feedback.error == 0) {
                    val value = Codecs.Reader(feedback.data)
                    if (value.unsigned(8) != id) invalid()
                    report.feedback[report.feedbackUsed++] = originalText(value)
                } else if (feedback.error != 11) feedback.checked()
                val result = roles[3]!!.invoke("action_receive_result", selector, 269)
                if (result.error == 11) continue
                result.checked()
                val value = Codecs.Reader(result.data)
                if (value.unsigned(8) != id) invalid()
                val kind = value.unsigned(1).toInt()
                if (kind !in 2..4) invalid()
                val text = originalText(value)
                report.resultText = text
                report.terminalKind = kind
                break
            }
            if (report.terminalKind == 0) throw RosException(Result(110))
        } catch (error: Throwable) {
            report.primary = error
        } finally {
            try { report.cleanup = session.closeChecked() }
            catch (error: Throwable) {
                report.cleanupException = error
                report.cleanup = session.lastCleanupResults()
            }
            report.cleanupFailures = session.lastCleanupFailures()
        }
        return report
    }

    private fun code(error: Throwable?): Int = when (error) {
        null -> 0
        is RosException -> error.result.error
        else -> 22
    }

    /**
     * @brief Execute the actual Kotlin/WASI argv command after checked cleanup.
     * @details Accepts SEND CANCEL_OWN FEEDBACK RESULT s|t|x DIST COUNT POLLS.
     * x opens nothing. Full original text and unsigned IDs plus every close
     * outcome print before normal Guest termination. No JVM fallback is used.
     * @param arguments Original explicit WASI argv excluding program name.
     * @see PatrolClient.run ProcessExit.exit
     */
    @JvmStatic
    fun main(arguments: Array<String>) {
        var status = 0
        try {
            if (arguments.size != 8) invalid()
            if (arguments[4] != "x") {
                val goal = parseGoal(arguments[4], arguments[5], arguments[6])
                if (!Regex("[0-9]{1,4}").matches(arguments[7])) invalid()
                val report = run(arguments.copyOfRange(0, 4), goal, arguments[7].toInt())
                if (report.goalId != 0L) println("accepted goal=${java.lang.Long.toUnsignedString(report.goalId)}")
                for (index in 0 until report.feedbackUsed) {
                    val text = report.feedback[index]!!
                    println("feedback[${Codecs.utf8(text).size}]: $text")
                }
                if (report.terminalKind != 0) println("terminal kind=${report.terminalKind} goal=${java.lang.Long.toUnsignedString(report.goalId)}\nresult: ${report.resultText}")
                else if (report.goalId != 0L || report.sendUnknown) println("goal=${java.lang.Long.toUnsignedString(report.goalId)} send_unknown=${report.sendUnknown} outcome unresolved; no replay or automatic cancel")
                status = code(report.primary)
                System.err.println("primary=${report.primary} cleanup_exception=${report.cleanupException}")
                for (index in report.cleanup.indices) {
                    val result = report.cleanup[index]
                    val error = report.cleanupFailures.getOrNull(index)
                    System.err.println("cleanup[$index]=${result?.error} exception=$error")
                    if (status == 0 && error != null) status = code(error)
                    if (status == 0 && result != null) status = result.error
                }
                if (status == 0) status = code(report.cleanupException)
                if (status == 0 && System.out.checkError()) status = 5
            }
        } catch (error: Throwable) {
            System.err.println(error)
            status = code(error)
        }
        ProcessExit.exit(status.coerceAtMost(125))
    }
}
