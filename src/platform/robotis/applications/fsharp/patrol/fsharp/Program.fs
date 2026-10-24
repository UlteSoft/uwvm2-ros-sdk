/// <summary>@brief Bounded original Patrol application using the real shared managed SDK.</summary>
/// <remarks>@details Requires the matching F#/Mono/WASI runtime and ROS2 native
/// bridge. No host CLR/DLL, native server/socket, callback thread, retry or
/// automatic cancellation. Original server/driver remains a separate program.
/// @see parseGoal encodeGoal run main</remarks>
module Uwvm.Robotis.Patrol.FSharp

open System
open System.Globalization
open System.Text.RegularExpressions
open Uwvm.RosWasm

/// <summary>@brief Complete original Vector3 Goal: square1/triangle2, metres, count.</summary>
/// <remarks>@details Count is the original decimal integer converted to finite
/// float64. Construction grants no permission or physical/model guarantee.
/// @see parseGoal encodeGoal run</remarks>
type Goal = { Mode: float; Distance: float; Count: float }

/// <summary>@brief Retain complete original values, full ID and every role close.</summary>
/// <remarks>@details Primary retains the exact Exception. GoalId is full uint64;
/// SendUnknown never permits replay. Only Feedback[0..FeedbackUsed) is populated.
/// Terminal is a fully decoded kind2/3/4 and original result string. Cleanup
/// retains every real shared Result/Exception/RetirementDiagnostic independently
/// of CleanupException. Session retains owner diagnostics when pre-entry cleanup
/// could not complete. Mutable reference fields belong to one synchronous Guest
/// caller; no cleanup after Wasm trap/OOM is promised.
/// @see run Session.CloseChecked</remarks>
type Report = {
    mutable Primary: Exception
    mutable GoalId: uint64
    mutable SendUnknown: bool
    Feedback: string array
    mutable FeedbackUsed: int
    mutable Terminal: (byte * string) option
    mutable Cleanup: CleanupReport option
    mutable CleanupException: Exception option
    mutable Session: Session option
}

let private invalid () = raise (RosException(Result(22u)))

let private number (text: string) integer =
    let grammar = if integer then @"\A[+-]?[0-9]+\z" else @"\A[+-]?(?:[0-9]+(?:\.[0-9]*)?|\.[0-9]+)(?:[eE][+-]?[0-9]+)?\z"
    if isNull text || text.Length = 0 || text.Length > 255 || not (Regex.IsMatch(text, grammar)) then invalid ()
    let success, value = Double.TryParse(text, NumberStyles.Float, CultureInfo.InvariantCulture)
    if not success || not (Double.IsFinite(value)) then invalid ()
    if integer && value = 0.0 then 0.0 else value

/// <summary>@brief Parse a full original Goal before opening any capability.</summary>
/// <remarks>@details Numeric strings are at most255 ASCII bytes. Count requires
/// signed decimal digits converted to original finite float64, normalizing '-0'.
/// Whitespace/locale/hex/nonfinite values are refused; interactive/unbounded
/// Python input remains a documented narrower-domain difference.
/// @see Goal encodeGoal run</remarks>
/// <param name="mode">Exactly s or t; main handles x without a Session.</param>
/// <param name="distance">Original finite metre value; no model limit inferred.</param>
/// <param name="count">Original signed decimal integer count.</param>
/// <returns>Complete Goal; pure invalid input raises RosException(error22).</returns>
let parseGoal mode distance count =
    if mode <> "s" && mode <> "t" then invalid ()
    { Mode = if mode = "s" then 1.0 else 2.0
      Distance = number distance false
      Count = number count true }

/// <summary>@brief Encode every original Vector3 field with the shared writer.</summary>
/// <remarks>@details Pure24-byte little-endian conversion; no native call.
/// @see Goal parseGoal run</remarks>
/// <param name="goal">Borrowed complete finite Goal, unchanged while encoding.</param>
/// <returns>Owned24-byte value; invalid mode/value/fractional count raises22.</returns>
let encodeGoal goal =
    if (goal.Mode <> 1.0 && goal.Mode <> 2.0) || not (Double.IsFinite(goal.Distance)) ||
       not (Double.IsFinite(goal.Count)) || Math.Truncate(goal.Count) <> goal.Count then invalid ()
    Codecs.Writer(24).Float64(goal.Mode).Float64(goal.Distance).Float64(goal.Count).Finish()

let private originalText (reader: Codecs.Reader) =
    let text = reader.String()
    reader.End()
    if text.IndexOf('\u0000') >= 0 || Codecs.Utf8(text).Length > 256 then invalid ()
    text

/// <summary>@brief Send one complete Goal, poll full values and close every role.</summary>
/// <remarks>@details Uses real NativeTransport/Session/Capability and canonical
/// codecs. All four roles open before send. Full uint64 ID, kind2/3/4 and complete
/// strict UTF-8 decode precede terminal commit. Every acquired owner closes once
/// after partial-open or normal failure; primary and all cleanup facts stay
/// independent. No cancel-any role, native server wait, replay, automatic cancel
/// or physical recovery. A matching original native server remains separate.
/// @see Report Goal parseGoal encodeGoal</remarks>
/// <param name="aliases">Four distinct1..255-byte NUL-free UTF-8 send/cancel-own/
/// feedback/result names, borrowed unchanged during one synchronous Guest run.</param>
/// <param name="goal">Complete reviewed original Goal, encoded before opening.</param>
/// <param name="polls">Integer1..4096; each iteration polls both channels once.</param>
/// <returns>Report with exact primary, full original values and all cleanup facts.
/// Pure invalid arguments raise22 before opening; trap cleanup is not promised.</returns>
let run (aliases: string array) goal polls =
    let encoded = encodeGoal goal
    if isNull aliases || aliases.Length <> 4 || polls < 1 || polls > 4096 ||
       (Array.distinct aliases).Length <> 4 then invalid ()
    for alias in aliases do
        if isNull alias || alias.IndexOf('\u0000') >= 0 then invalid ()
        let size = Codecs.Utf8(alias).Length
        if size < 1 || size > 255 then invalid ()
    let report = {
        Primary = null; GoalId = 0UL; SendUnknown = false
        Feedback = Array.zeroCreate<string> polls; FeedbackUsed = 0; Terminal = None
        Cleanup = None; CleanupException = None; Session = None
    }
    let roles = Array.zeroCreate<Capability> 4
    let session = Session(NativeTransport(), 4)
    report.Session <- Some session
    try
        try
            session.CheckAbi()
            for index in 0..3 do roles[index] <- session.Open(aliases[index])
            report.SendUnknown <- true
            let reader = Codecs.Reader(roles[0].Invoke("action_send_goal", encoded, 8).Checked().Data)
            let id = reader.Unsigned(8)
            reader.End()
            if id = 0UL then invalid ()
            report.GoalId <- id
            report.SendUnknown <- false
            let selector = Codecs.Writer(8).Unsigned(id, 8).Finish()
            let mutable iteration = 0
            while iteration < polls && report.Terminal.IsNone do
                let feedback = roles[2].Invoke("action_receive_feedback", selector, 268)
                if feedback.Error = 0u then
                    let value = Codecs.Reader(feedback.Data)
                    if value.Unsigned(8) <> id then invalid ()
                    report.Feedback[report.FeedbackUsed] <- originalText value
                    report.FeedbackUsed <- report.FeedbackUsed + 1
                elif feedback.Error <> 11u then feedback.Checked() |> ignore
                let result = roles[3].Invoke("action_receive_result", selector, 269)
                if result.Error <> 11u then
                    result.Checked() |> ignore
                    let value = Codecs.Reader(result.Data)
                    if value.Unsigned(8) <> id then invalid ()
                    let kind = value.Unsigned(1)
                    if kind < 2UL || kind > 4UL then invalid ()
                    let text = originalText value
                    report.Terminal <- Some(byte kind, text)
                iteration <- iteration + 1
            if report.Terminal.IsNone then raise (RosException(Result(110u)))
        with error -> report.Primary <- error
    finally
        try report.Cleanup <- Some(session.CloseChecked(report.Primary))
        with error -> report.CleanupException <- Some error
    report

let private code (error: Exception) =
    match error with
    | null -> 0u
    | :? RosException as ros -> ros.Result.Error
    | _ -> 22u

/// <summary>@brief Select status without discarding the complete original report.</summary>
/// <remarks>@details Chooses primary then first independent cleanup failure;
/// performs no native operation and never retries uncertainty.
/// @see Report run</remarks>
/// <param name="report">Borrowed completed Report; do not mutate concurrently.</param>
/// <returns>Original unsigned status, or0; process capping remains separate.</returns>
let status report =
    let mutable value = code report.Primary
    match report.Cleanup with
    | Some cleanup ->
        for index in 0..cleanup.Count - 1 do
            let item = cleanup.Items[index]
            if value = 0u && not (isNull item.Exception) then value <- code item.Exception
            if value = 0u then value <- if isNull item.Result then 22u else item.Result.Error
    | None -> ()
    if value = 0u then
        match report.CleanupException with Some error -> value <- code error | None -> ()
    value

/// <summary>@brief Execute the actual F#/Mono/WASI argv command after checked cleanup.</summary>
/// <remarks>@details x opens nothing. Prints complete original values/IDs and
/// every close fact. Requires real matching runtime/bridge products; no host CLR.
/// @see run parseGoal status</remarks>
/// <param name="arguments">Original explicit WASI argv excluding program name.</param>
/// <returns>Primary then cleanup status, represented as at most125.</returns>
[<EntryPoint>]
let main (arguments: string array) =
    let program () =
        if arguments.Length <> 8 then invalid ()
        if arguments[4] = "x" then 0u else
        let goal = parseGoal arguments[4] arguments[5] arguments[6]
        if not (Regex.IsMatch(arguments[7], @"\A[0-9]{1,4}\z")) then invalid ()
        let polls = Int32.Parse(arguments[7], CultureInfo.InvariantCulture)
        let report = run arguments[0..3] goal polls
        if report.GoalId <> 0UL then Console.WriteLine("accepted goal={0}", report.GoalId)
        for index in 0..report.FeedbackUsed - 1 do
            let text = report.Feedback[index]
            Console.WriteLine("feedback[{0}]: {1}", Codecs.Utf8(text).Length, text)
        match report.Terminal with
        | Some(kind, text) -> Console.WriteLine("terminal kind={0} goal={1}\nresult: {2}", kind, report.GoalId, text)
        | None when report.GoalId <> 0UL || report.SendUnknown ->
            Console.WriteLine("goal={0} send_unknown={1} outcome unresolved; no replay or automatic cancel", report.GoalId, report.SendUnknown)
        | None -> ()
        Console.Error.WriteLine("primary={0}; cleanup_exception={1}", report.Primary, report.CleanupException)
        match report.Cleanup with
        | Some cleanup ->
            for index in 0..cleanup.Count - 1 do
                let item = cleanup.Items[index]
                Console.Error.WriteLine("cleanup[{0}] alias={1} result={2} exception={3} retirement={4}", index, item.Alias, item.Result, item.Exception, item.Retirement)
        | None -> ()
        status report
    let result =
        try program ()
        with error -> Console.Error.WriteLine(error); code error
    int (min result 125u)
