package org.uwvm.robotis.patrol;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.uwvm.roswasm.Capability;
import org.uwvm.roswasm.Codecs;
import org.uwvm.roswasm.Result;
import org.uwvm.roswasm.Ros2Transport;
import org.uwvm.roswasm.RosException;
import org.uwvm.roswasm.Session;

/**
 * @brief Execute the bounded original TurtleBot3 Patrol client using the real Java SDK.
 * @details Requires the selected TeaVM WEBASSEMBLY_WASI SDK/bridge and original
 * ROS2 Patrol role/type/resource grants. No JVM/JNI, socket, native ROS server,
 * callback thread, replay or automatic cancellation is supplied.
 * @see #parseGoal #encodeGoal #run Report
 */
public final class PatrolClient
{
    private PatrolClient()
    {
    }

    /**
     * @brief Preserve the complete original Vector3 Goal without field projection.
     * @details mode is square1/triangle2, distance is metres, and count is the
     * original decimal integer converted to finite double. Construction grants
     * no native permission or physical/model safety guarantee.
     * @see PatrolClient#parseGoal PatrolClient#encodeGoal PatrolClient#run
     */
    public static final class Goal
    {
        public final double mode, distance, count;

        /**
         * @brief Retain all three original Goal fields without unit conversion.
         * @details Validation occurs before capability acquisition in encodeGoal/run.
         * @param mode Original square1 or triangle2 selector.
         * @param distance Original finite distance in metres when submitted.
         * @param count Original integer converted to finite float64.
         * @see PatrolClient#encodeGoal PatrolClient#run
         */
        public Goal(double mode, double distance, double count)
        {
            this.mode = mode;
            this.distance = distance;
            this.count = count;
        }
    }

    /**
     * @brief Retain complete original values, full unsigned ID and every close outcome.
     * @details primary preserves the exact Throwable; timeout110 means unresolved
     * finite polling. goalId uses all long bits, rendered with toUnsignedString;
     * negative Java values remain valid u64 IDs. sendUnknown never permits replay.
     * Only feedback[0..feedbackUsed) is populated. terminalKind2/3/4 accompanies
     * fully decoded original resultText. cleanup/cleanupFailures preserve each
     * actual close in reverse acquisition order, even when cleanupException was
     * thrown. session retains genuine owner/retirement diagnostics. Single caller.
     * @see PatrolClient#run Session#closeChecked Session#lastCleanupFailures
     */
    public static final class Report
    {
        public Throwable primary;
        public long goalId;
        public boolean sendUnknown;
        public final String[] feedback;
        public int feedbackUsed;
        public int terminalKind;
        public String resultText;
        public List<Result> cleanup = Collections.emptyList();
        public List<Throwable> cleanupFailures = Collections.emptyList();
        public Throwable cleanupException;
        public Session session;

        private Report(int polls)
        {
            feedback = new String[polls];
        }
    }

    private static RosException invalid()
    {
        return new RosException(new Result(22));
    }

    private static double number(String text, boolean integer)
    {
        if(text == null || text.isEmpty() || text.length() > 255)
            throw invalid();
        String grammar = integer ? "[+-]?[0-9]+" : "[+-]?(?:[0-9]+(?:\\.[0-9]*)?|\\.[0-9]+)(?:[eE][+-]?[0-9]+)?";
        if(!text.matches(grammar))
            throw invalid();
        double value;
        try
        {
            value = Double.parseDouble(text);
        }
        catch(NumberFormatException error)
        {
            throw invalid();
        }
        if(!Double.isFinite(value))
            throw invalid();
        return integer && value == 0 ? 0 : value;
    }

    /**
     * @brief Parse one complete original square/triangle Goal before any owner opens.
     * @details Each numeric argument is at most255 ASCII bytes. Count requires
     * signed decimal digits and converts directly to the equivalent finite
     * float64 integer value; '-0' becomes positive zero. Whitespace, locale,
     * hex and nonfinite values are refused. Original interactive/unbounded
     * Python input remains an explicit narrower-domain difference.
     * @param mode Exactly s or t; main handles x without creating a Session.
     * @param distance Original finite distance in metres; no native limit inferred.
     * @param count Original signed decimal integer count.
     * @return Complete original Goal; RosException(error22) on pure invalid input.
     * @see Goal #encodeGoal #run
     */
    public static Goal parseGoal(String mode, String distance, String count)
    {
        if(!"s".equals(mode) && !"t".equals(mode))
            throw invalid();
        return new Goal("s".equals(mode) ? 1 : 2, number(distance, false), number(count, true));
    }

    /**
     * @brief Encode every original Vector3 field with the shared canonical writer.
     * @details Pure24-byte little-endian conversion; no ROS API is called.
     * @param goal Borrowed complete finite Goal, unchanged during encoding.
     * @return Owned24-byte value; invalid mode/nonfinite/fractional count throws22.
     * @see Goal #parseGoal #run
     */
    public static byte[] encodeGoal(Goal goal)
    {
        if(goal == null || (goal.mode != 1 && goal.mode != 2) || !Double.isFinite(goal.distance) || !Double.isFinite(goal.count) ||
           Math.rint(goal.count) != goal.count)
            throw invalid();
        return new Codecs.Writer(24).f64(goal.mode).f64(goal.distance).f64(goal.count).finish();
    }

    private static String text(Codecs.Reader reader)
    {
        String value = reader.text();
        reader.end();
        if(value.indexOf('\0') >= 0 || Codecs.utf8(value).length > 256)
            throw invalid();
        return value;
    }

    /**
     * @brief Send one full Goal, poll original feedback/result and close every role.
     * @details Uses actual Ros2Transport/Session/Capability and complete shared
     * codecs. Opens send/cancel-own/feedback/result independently before send.
     * A matching original server/driver remains a separate cooperating program.
     * Full64-bit ID, kind2/3/4 and complete UTF-8 decode precede terminal commit.
     * Every acquired role closes once, including partial-open failure; original
     * primary and all close failures stay separate. No cancel-any role, native
     * wait, replay, automatic cancellation or hardware recovery is introduced.
     * @param aliases Four distinct1..255-byte NUL-free UTF-8 original role names
     * in send/cancel-own/feedback/result order; borrowed unchanged until return.
     * @param goal Complete reviewed original Goal, encoded before opening.
     * @param polls Integer1..4096; each synchronous iteration polls both channels.
     * @return Report with exact primary, full values/ID and every cleanup fact.
     * Pure validation throws22; Wasm trap/OOM cannot promise cleanup.
     * @see Report Goal #parseGoal #encodeGoal
     */
    public static Report run(String[] aliases, Goal goal, int polls)
    {
        byte[] encoded = encodeGoal(goal);
        if(aliases == null || aliases.length != 4 || polls < 1 || polls > 4096 || new HashSet<String>(Arrays.asList(aliases)).size() != 4)
            throw invalid();
        for(String alias: aliases)
        {
            if(alias == null || alias.indexOf('\0') >= 0 || Codecs.utf8(alias).length < 1 || Codecs.utf8(alias).length > 255)
                throw invalid();
        }
        Report report = new Report(polls);
        Capability[] roles = new Capability[4];
        Session session = new Session(new Ros2Transport(), 4);
        report.session = session;
        try
        {
            session.checkAbi();
            for(int index = 0; index < aliases.length; index++)
                roles[index] = session.open(aliases[index]);
            report.sendUnknown = true;
            byte[] sent = roles[0].invoke("action_send_goal", encoded, 8).checked().data;
            Codecs.Reader idReader = new Codecs.Reader(sent);
            long id = idReader.unsigned(8);
            idReader.end();
            if(id == 0)
                throw invalid();
            report.goalId = id;
            report.sendUnknown = false;
            byte[] selector = new Codecs.Writer(8).integer(id, 8, false).finish();
            for(int iteration = 0; iteration < polls; iteration++)
            {
                Result feedback = roles[2].invoke("action_receive_feedback", selector, 268);
                if(feedback.error == 0)
                {
                    Codecs.Reader reader = new Codecs.Reader(feedback.data);
                    if(reader.unsigned(8) != id)
                        throw invalid();
                    report.feedback[report.feedbackUsed++] = text(reader);
                }
                else if(feedback.error != 11)
                    feedback.checked();
                Result result = roles[3].invoke("action_receive_result", selector, 269);
                if(result.error == 11)
                    continue;
                result.checked();
                Codecs.Reader reader = new Codecs.Reader(result.data);
                if(reader.unsigned(8) != id)
                    throw invalid();
                int kind = (int)reader.unsigned(1);
                if(kind < 2 || kind > 4)
                    throw invalid();
                String value = text(reader);
                report.resultText = value;
                report.terminalKind = kind;
                break;
            }
            if(report.terminalKind == 0)
                throw new RosException(new Result(110));
        }
        catch(Throwable error)
        {
            report.primary = error;
        }
        finally
        {
            try
            {
                report.cleanup = session.closeChecked();
            }
            catch(Throwable error)
            {
                report.cleanupException = error;
                report.cleanup = session.lastCleanupResults();
            }
            report.cleanupFailures = session.lastCleanupFailures();
        }
        return report;
    }

    private static int code(Throwable error)
    {
        return error == null ? 0 : error instanceof RosException ? ((RosException)error).result.error : 22;
    }

    private static int program(String[] arguments) throws Exception
    {
        if(arguments.length == 4 && "encode".equals(arguments[0]))
        {
            System.out.write(encodeGoal(parseGoal(arguments[1], arguments[2], arguments[3])));
            return System.out.checkError() ? 5 : 0;
        }
        if(arguments.length != 8)
            return 22;
        if("x".equals(arguments[4]))
            return 0;
        Goal goal = parseGoal(arguments[4], arguments[5], arguments[6]);
        if(!arguments[7].matches("[0-9]{1,4}"))
            return 22;
        int polls = Integer.parseInt(arguments[7]);
        if(polls < 1 || polls > 4096)
            return 22;
        Report report = run(Arrays.copyOf(arguments, 4), goal, polls);
        if(report.goalId != 0)
            System.out.println("accepted goal=" + Long.toUnsignedString(report.goalId));
        for(int index = 0; index < report.feedbackUsed; index++)
            System.out.println("feedback[" + Codecs.utf8(report.feedback[index]).length + "]: " + report.feedback[index]);
        if(report.terminalKind != 0)
            System.out.println("terminal kind=" + report.terminalKind + " goal=" + Long.toUnsignedString(report.goalId) + "\nresult: " + report.resultText);
        else if(report.goalId != 0 || report.sendUnknown)
            System.err.println("goal=" + Long.toUnsignedString(report.goalId) + " send_unknown=" + report.sendUnknown +
                               " outcome unresolved; no replay or automatic cancel");
        int primary = code(report.primary);
        System.err.println("primary=" + report.primary + " cleanup_exception=" + report.cleanupException);
        for(int index = 0; index < report.cleanup.size(); index++)
        {
            Result result = report.cleanup.get(index);
            Throwable failure = index < report.cleanupFailures.size() ? report.cleanupFailures.get(index) : null;
            System.err.println("cleanup[" + index + "]=" + (result == null ? null : result.error) + " exception=" + failure);
            if(primary == 0 && failure != null)
                primary = code(failure);
            if(primary == 0 && result != null)
                primary = result.error;
        }
        if(primary == 0 && report.cleanupException != null)
            primary = code(report.cleanupException);
        if(primary == 0 && System.out.checkError())
            primary = 5;
        return primary;
    }

    /**
     * @brief Execute the real Java/WASI argv command with a normal process status.
     * @details All checked cleanup precedes termination. x/encode open nothing.
     * Actual TeaVM class-library/ROS bridge products are required; no JVM fallback.
     * @param arguments Original explicit WASI argv excluding program name.
     * @see #run #parseGoal ProcessExit#exit
     */
    public static void main(String[] arguments)
    {
        int status;
        try
        {
            status = program(arguments);
        }
        catch(Throwable error)
        {
            System.err.println(error);
            status = code(error);
        }
        ProcessExit.exit(Math.min(status, 125));
    }
}
