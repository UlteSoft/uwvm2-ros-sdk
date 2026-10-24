using System;
using System.Globalization;
using System.IO;
using System.Text.RegularExpressions;
using Uwvm.RosWasm;

namespace Uwvm.Robotis.Patrol;

/// <summary>@brief Complete original Vector3 Goal without field projection.</summary>
/// <remarks>@details Mode is square1/triangle2, Distance is metres, and Count is
/// the original decimal integer converted to finite double. Construction grants
/// no native permission or physical/model guarantee. Validation precedes opening.
/// @see PatrolClient.ParseGoal PatrolClient.EncodeGoal PatrolClient.Run</remarks>
public sealed class Goal
{
    public readonly double Mode, Distance, Count;

    /// <summary>@brief Retain all three original Goal fields without conversion.</summary>
    /// <remarks>@details EncodeGoal/Run validate before acquiring a capability.
    /// @see PatrolClient.EncodeGoal PatrolClient.Run</remarks>
    /// <param name="mode">Original square1 or triangle2 selector.</param>
    /// <param name="distance">Original finite distance in metres when submitted.</param>
    /// <param name="count">Original integer converted to finite float64.</param>
    public Goal(double mode, double distance, double count)
    {
        Mode = mode;
        Distance = distance;
        Count = count;
    }
}

/// <summary>@brief Retain full original values, opaque ID and every role close.</summary>
/// <remarks>@details Primary preserves the exact first Exception;110 means an
/// unresolved finite poll budget. GoalId is full ulong/u64 and SendUnknown never
/// permits replay. Only Feedback[0..FeedbackUsed) is populated. TerminalKind2/3/4
/// accompanies a fully decoded original ResultText. Cleanup keeps the shared
/// per-owner Result/Exception/RetirementDiagnostic; CleanupException is independent.
/// Session retains real owner state when pre-entry cleanup could not complete.
/// One synchronous Guest caller owns this mutable report; trap cleanup is not promised.
/// @see PatrolClient.Run Session.CloseChecked</remarks>
public sealed class Report
{
    public Exception? Primary;
    public ulong GoalId;
    public bool SendUnknown;
    public readonly string?[] Feedback;
    public int FeedbackUsed;
    public byte TerminalKind;
    public string ResultText = "";
    public CleanupReport? Cleanup;
    public Exception? CleanupException;
    public Session? Session;

    internal Report(int polls)
    {
        Feedback = new string?[polls];
    }
}

/// <summary>@brief Bounded original Patrol application over the actual managed SDK.</summary>
/// <remarks>@details Requires the matching Mono/WASI native bridge and original
/// ROS2 Patrol type/resource/grants. No host CLR/DLL, native server/socket,
/// callback thread, retry or automatic cancellation is supplied.
/// @see PatrolClient.ParseGoal PatrolClient.Run Report</remarks>
public static class PatrolClient
{
    private static RosException Invalid() => new(new Result(22));

    private static double Number(string text, bool integer)
    {
        string grammar = integer ? @"\A[+-]?[0-9]+\z" : @"\A[+-]?(?:[0-9]+(?:\.[0-9]*)?|\.[0-9]+)(?:[eE][+-]?[0-9]+)?\z";
        if(text is null || text.Length == 0 || text.Length > 255 || !Regex.IsMatch(text, grammar) ||
           !double.TryParse(text, NumberStyles.Float, CultureInfo.InvariantCulture, out double value) || !double.IsFinite(value))
            throw Invalid();
        return integer && value == 0 ? 0 : value;
    }

    /// <summary>@brief Parse a complete original Goal before any owner opens.</summary>
    /// <remarks>@details Numeric strings are bounded to255 ASCII bytes. Count
    /// requires signed decimal digits converted to equivalent original float64,
    /// including positive zero for '-0'. Whitespace/hex/locale/nonfinite inputs
    /// are refused. Original interactive/unbounded Python input remains a gap.
    /// @see Goal PatrolClient.EncodeGoal PatrolClient.Run</remarks>
    /// <param name="mode">Exactly s or t; Main handles x without a Session.</param>
    /// <param name="distance">Original finite metre value; no model limit inferred.</param>
    /// <param name="count">Original signed decimal integer count.</param>
    /// <returns>Complete Goal; RosException(error22) before an external effect.</returns>
    public static Goal ParseGoal(string mode, string distance, string count)
    {
        if(mode != "s" && mode != "t")
            throw Invalid();
        return new Goal(mode == "s" ? 1 : 2, Number(distance, false), Number(count, true));
    }

    /// <summary>@brief Encode all original Vector3 fields with the shared writer.</summary>
    /// <remarks>@details Pure24-byte little-endian conversion; no native API call.
    /// @see Goal PatrolClient.ParseGoal PatrolClient.Run</remarks>
    /// <param name="goal">Borrowed complete finite Goal, unchanged during encoding.</param>
    /// <returns>Owned24-byte value; invalid mode/value/fractional count throws22.</returns>
    public static byte[] EncodeGoal(Goal goal)
    {
        if(goal is null || (goal.Mode != 1 && goal.Mode != 2) || !double.IsFinite(goal.Distance) || !double.IsFinite(goal.Count) ||
           Math.Truncate(goal.Count) != goal.Count)
            throw Invalid();
        return new Codecs.Writer(24).Float64(goal.Mode).Float64(goal.Distance).Float64(goal.Count).Finish();
    }

    private static string Text(Codecs.Reader reader)
    {
        string value = reader.String();
        reader.End();
        if(value.IndexOf('\0') >= 0 || Codecs.Utf8(value).Length > 256)
            throw Invalid();
        return value;
    }

    /// <summary>@brief Send one full Goal, poll original values and close every role.</summary>
    /// <remarks>@details Uses real NativeTransport/Session/Capability and complete
    /// canonical codecs. Opens every distinct role before send. Full ulong ID,
    /// kind2/3/4 and strict original UTF-8 decode precede terminal commit. Every
    /// acquired role closes once after partial construction or normal failures;
    /// primary and all cleanup facts remain separate. Original native server/
    /// driver remains a separate cooperating program. No cancel-any role, native
    /// wait, replay, automatic cancellation or physical recovery is introduced.
    /// @see Report Goal PatrolClient.ParseGoal PatrolClient.EncodeGoal</remarks>
    /// <param name="aliases">Four distinct1..255-byte NUL-free UTF-8 send/cancel-own/
    /// feedback/result names, borrowed unchanged during one synchronous Guest run.</param>
    /// <param name="goal">Complete reviewed original Goal, encoded before opening.</param>
    /// <param name="polls">Integer1..4096; each iteration polls both channels once.</param>
    /// <returns>Report with exact primary, full values/ID and every cleanup fact.
    /// Pure invalid input throws22; Wasm trap/OOM cannot promise cleanup.</returns>
    public static Report Run(string[] aliases, Goal goal, int polls)
    {
        byte[] encoded = EncodeGoal(goal);
        if(aliases is null || aliases.Length != 4 || polls < 1 || polls > 4096)
            throw Invalid();
        for(int index = 0; index < aliases.Length; index++)
        {
            string alias = aliases[index];
            if(alias is null || alias.IndexOf('\0') >= 0 || Codecs.Utf8(alias).Length is < 1 or > 255)
                throw Invalid();
            for(int earlier = 0; earlier < index; earlier++)
                if(aliases[earlier] == alias)
                    throw Invalid();
        }
        var report = new Report(polls);
        var roles = new Capability?[4];
        var session = new Session(new NativeTransport(), 4);
        report.Session = session;
        try
        {
            session.CheckAbi();
            for(int index = 0; index < aliases.Length; index++)
                roles[index] = session.Open(aliases[index]);
            report.SendUnknown = true;
            var reader = new Codecs.Reader(roles[0]!.Invoke("action_send_goal", encoded, 8).Checked().Data);
            ulong id = reader.Unsigned(8);
            reader.End();
            if(id == 0)
                throw Invalid();
            report.GoalId = id;
            report.SendUnknown = false;
            byte[] selector = new Codecs.Writer(8).Unsigned(id, 8).Finish();
            for(int iteration = 0; iteration < polls; iteration++)
            {
                Result feedback = roles[2]!.Invoke("action_receive_feedback", selector, 268);
                if(feedback.Error == 0)
                {
                    var value = new Codecs.Reader(feedback.Data);
                    if(value.Unsigned(8) != id)
                        throw Invalid();
                    report.Feedback[report.FeedbackUsed++] = Text(value);
                }
                else if(feedback.Error != 11)
                    feedback.Checked();
                Result result = roles[3]!.Invoke("action_receive_result", selector, 269);
                if(result.Error == 11)
                    continue;
                result.Checked();
                var terminal = new Codecs.Reader(result.Data);
                if(terminal.Unsigned(8) != id)
                    throw Invalid();
                ulong kind = terminal.Unsigned(1);
                if(kind < 2 || kind > 4)
                    throw Invalid();
                string text = Text(terminal);
                report.ResultText = text;
                report.TerminalKind = (byte)kind;
                break;
            }
            if(report.TerminalKind == 0)
                throw new RosException(new Result(110));
        }
        catch(Exception error)
        {
            report.Primary = error;
        }
        finally
        {
            try
            {
                report.Cleanup = session.CloseChecked(report.Primary);
            }
            catch(Exception error)
            {
                report.CleanupException = error;
            }
        }
        return report;
    }

    private static uint Code(Exception? error) => error is null ? 0 : error is RosException ros ? ros.Result.Error : 22;

    /// <summary>@brief Select process status without discarding the original report.</summary>
    /// <remarks>@details Chooses primary then first independent cleanup failure.
    /// Reads no native resource and never retries a close or an uncertain Goal.
    /// @see Report PatrolClient.Run</remarks>
    /// <param name="report">Borrowed completed Report; do not mutate concurrently.</param>
    /// <returns>Original unsigned numeric error, or0; process capping is separate.</returns>
    public static uint Status(Report report)
    {
        uint primary = Code(report.Primary);
        if(primary != 0)
            return primary;
        if(report.Cleanup is not null)
            for(int index = 0; index < report.Cleanup.Count; index++)
            {
                CleanupItem item = report.Cleanup.Items[index];
                if(item.Exception is not null)
                    return Code(item.Exception);
                if(item.Result is null)
                    return 22;
                if(item.Result.Error != 0)
                    return item.Result.Error;
            }
        return Code(report.CleanupException);
    }

    private static uint Program(string[] arguments)
    {
        if(arguments.Length == 4 && arguments[0] == "encode")
        {
            byte[] bytes = EncodeGoal(ParseGoal(arguments[1], arguments[2], arguments[3]));
            Stream output = Console.OpenStandardOutput();
            output.Write(bytes);
            output.Flush();
            return 0;
        }
        if(arguments.Length != 8)
            return 22;
        if(arguments[4] == "x")
            return 0;
        Goal goal = ParseGoal(arguments[4], arguments[5], arguments[6]);
        if(!Regex.IsMatch(arguments[7], @"\A[0-9]{1,4}\z"))
            return 22;
        int polls = int.Parse(arguments[7], CultureInfo.InvariantCulture);
        var aliases = new string[4];
        Array.Copy(arguments, aliases, 4);
        Report report = Run(aliases, goal, polls);
        if(report.GoalId != 0)
            Console.WriteLine("accepted goal=" + report.GoalId);
        for(int index = 0; index < report.FeedbackUsed; index++)
        {
            string text = report.Feedback[index]!;
            Console.WriteLine("feedback[" + Codecs.Utf8(text).Length + "]: " + text);
        }
        if(report.TerminalKind != 0)
            Console.WriteLine("terminal kind=" + report.TerminalKind + " goal=" + report.GoalId + "\nresult: " + report.ResultText);
        else if(report.GoalId != 0 || report.SendUnknown)
            Console.Error.WriteLine("goal=" + report.GoalId + " send_unknown=" + report.SendUnknown + " outcome unresolved; no replay or automatic cancel");
        Console.Error.WriteLine("primary=" + report.Primary + " cleanup_exception=" + report.CleanupException);
        if(report.Cleanup is not null)
            for(int index = 0; index < report.Cleanup.Count; index++)
            {
                CleanupItem item = report.Cleanup.Items[index];
                Console.Error.WriteLine("cleanup[" + index + "] alias=" + item.Alias + " result=" + item.Result?.Error + " exception=" + item.Exception +
                                        " retirement=" + item.Retirement);
            }
        return Status(report);
    }

    /// <summary>@brief Execute the actual C#/Mono/WASI command after checked cleanup.</summary>
    /// <remarks>@details x/encode open nothing. Actual managed/native bridge
    /// products are required; no host CLR execution fills acceptance.
    /// @see PatrolClient.Run PatrolClient.Status</remarks>
    /// <param name="arguments">Original explicit WASI argv excluding program name.</param>
    /// <returns>Primary then cleanup status, represented as at most125.</returns>
    public static int Main(string[] arguments)
    {
        uint status;
        try
        {
            status = Program(arguments);
        }
        catch(IOException error)
        {
            Console.Error.WriteLine(error);
            status = 5;
        }
        catch(Exception error)
        {
            Console.Error.WriteLine(error);
            status = Code(error);
        }
        return (int)Math.Min(status, 125u);
    }
}
