Option Strict On
Imports System
Imports System.Globalization
Imports System.Text.RegularExpressions
Imports Uwvm.RosWasm

Namespace Uwvm.Robotis.Patrol.VisualBasic
    ''' <summary>@brief Complete original Vector3 Goal without field projection.</summary>
    ''' <remarks>@details Mode is square1/triangle2, Distance is metres, and Count
    ''' is the original decimal integer converted to finite Double. Construction
    ''' grants no permission or physical/model guarantee; Run validates before open.
    ''' @see PatrolClient.ParseGoal PatrolClient.EncodeGoal PatrolClient.Run</remarks>
    Public NotInheritable Class Goal
        Public ReadOnly Mode As Double
        Public ReadOnly Distance As Double
        Public ReadOnly Count As Double

        ''' <summary>@brief Retain all three original fields without unit conversion.</summary>
        ''' <remarks>@details EncodeGoal/Run validate before acquiring any role.
        ''' @see PatrolClient.EncodeGoal PatrolClient.Run</remarks>
        ''' <param name="mode">Original square1 or triangle2 selector.</param>
        ''' <param name="distance">Original finite metre value when submitted.</param>
        ''' <param name="count">Original integer converted to finite float64.</param>
        Public Sub New(mode As Double, distance As Double, count As Double)
            Me.Mode = mode : Me.Distance = distance : Me.Count = count
        End Sub
    End Class

    ''' <summary>@brief Retain original values, full unsigned ID and every close.</summary>
    ''' <remarks>@details Primary preserves the actual first Exception;110 means
    ''' unresolved finite polling. GoalId is full ULong/u64; SendUnknown never
    ''' authorizes replay. Only Feedback(0..FeedbackUsed-1) is populated.
    ''' TerminalKind2/3/4 accompanies fully decoded original ResultText. Cleanup
    ''' retains each shared Result/Exception/RetirementDiagnostic independently of
    ''' CleanupException. Session retains actual owner state after pre-entry
    ''' cleanup refusal. One synchronous Guest caller owns this mutable carrier;
    ''' Wasm trap/OOM cannot promise cleanup.
    ''' @see PatrolClient.Run Session.CloseChecked</remarks>
    Public NotInheritable Class Report
        Public Primary As Exception
        Public GoalId As ULong
        Public SendUnknown As Boolean
        Public ReadOnly Feedback As String()
        Public FeedbackUsed As Integer
        Public TerminalKind As Byte
        Public ResultText As String = ""
        Public Cleanup As CleanupReport
        Public CleanupException As Exception
        Public Session As Uwvm.RosWasm.Session

        Friend Sub New(polls As Integer)
            Feedback = New String(polls - 1) {}
        End Sub
    End Class

    ''' <summary>@brief Bounded original Patrol application over the real managed SDK.</summary>
    ''' <remarks>@details Requires matching VB.NET/Mono/WASI and the ROS2 native
    ''' bridge. No host CLR/DLL, native server/socket, callback thread, retry or
    ''' automatic cancellation. Original native server/driver remains separate.
    ''' @see PatrolClient.ParseGoal PatrolClient.Run Report</remarks>
    Public Module PatrolClient
        Private Function Invalid() As RosException
            Return New RosException(New Result(22UI))
        End Function

        Private Function Number(text As String, integerOnly As Boolean) As Double
            Dim grammar As String = If(integerOnly, "\A[+-]?[0-9]+\z", "\A[+-]?(?:[0-9]+(?:\.[0-9]*)?|\.[0-9]+)(?:[eE][+-]?[0-9]+)?\z")
            Dim value As Double
            If text Is Nothing OrElse text.Length = 0 OrElse text.Length > 255 OrElse
                Not Regex.IsMatch(text, grammar) OrElse
                Not Double.TryParse(text, NumberStyles.Float, CultureInfo.InvariantCulture, value) OrElse
                Not Double.IsFinite(value) Then Throw Invalid()
            Return If(integerOnly AndAlso value = 0, 0, value)
        End Function

        ''' <summary>@brief Parse a complete original Goal before opening any role.</summary>
        ''' <remarks>@details Numeric strings have at most255 ASCII bytes. Count
        ''' requires signed decimal digits converted to equivalent original
        ''' float64, normalizing '-0'. Whitespace/locale/hex/nonfinite values are
        ''' refused; interactive/unbounded Python input remains a documented gap.
        ''' @see Goal PatrolClient.EncodeGoal PatrolClient.Run</remarks>
        ''' <param name="mode">Exactly s or t; Main handles x without a Session.</param>
        ''' <param name="distance">Original finite metres; no model limit inferred.</param>
        ''' <param name="count">Original signed decimal integer count.</param>
        ''' <returns>Complete Goal; pure invalid input throws RosException(error22).</returns>
        Public Function ParseGoal(mode As String, distance As String, count As String) As Goal
            If mode <> "s" AndAlso mode <> "t" Then Throw Invalid()
            Return New Goal(If(mode = "s", 1, 2), Number(distance, False), Number(count, True))
        End Function

        ''' <summary>@brief Encode every original Vector3 field with the shared writer.</summary>
        ''' <remarks>@details Pure24-byte little-endian encoding; no native API.
        ''' @see Goal PatrolClient.ParseGoal PatrolClient.Run</remarks>
        ''' <param name="goal">Borrowed complete finite Goal, unchanged while encoding.</param>
        ''' <returns>Owned24-byte value; invalid mode/value/fractional count throws22.</returns>
        Public Function EncodeGoal(goal As Goal) As Byte()
            If goal Is Nothing OrElse (goal.Mode <> 1 AndAlso goal.Mode <> 2) OrElse
                Not Double.IsFinite(goal.Distance) OrElse Not Double.IsFinite(goal.Count) OrElse
                Math.Truncate(goal.Count) <> goal.Count Then Throw Invalid()
            Return New Codecs.Writer(24).Float64(goal.Mode).Float64(goal.Distance).Float64(goal.Count).Finish()
        End Function

        Private Function OriginalText(reader As Codecs.Reader) As String
            Dim text As String = reader.String()
            reader.End()
            If text.IndexOf(ChrW(0)) >= 0 OrElse Codecs.Utf8(text).Length > 256 Then Throw Invalid()
            Return text
        End Function

        ''' <summary>@brief Send one full Goal, poll complete values and close every role.</summary>
        ''' <remarks>@details Uses real NativeTransport/Session/Capability and
        ''' complete shared codecs. Opens all four roles before send. Full ULong
        ''' ID, kind2/3/4 and strict original UTF-8 decode precede terminal commit.
        ''' Every acquired role closes once after partial construction or normal
        ''' failure; primary and all cleanup facts remain separate. No cancel-any
        ''' role, native wait, replay, automatic cancel or physical recovery.
        ''' A matching original server/driver remains a separate cooperating program.
        ''' @see Report Goal PatrolClient.ParseGoal PatrolClient.EncodeGoal</remarks>
        ''' <param name="aliases">Four distinct1..255-byte NUL-free UTF-8 send/
        ''' cancel-own/feedback/result names, borrowed unchanged until return.</param>
        ''' <param name="goal">Complete reviewed original Goal, encoded before open.</param>
        ''' <param name="polls">Integer1..4096; each synchronous iteration polls both channels.</param>
        ''' <returns>Report preserving exact primary, full original values and all
        ''' cleanup. Pure invalid input throws22; trap cleanup is not promised.</returns>
        Public Function Run(aliases As String(), goal As Goal, polls As Integer) As Report
            Dim encoded As Byte() = EncodeGoal(goal)
            If aliases Is Nothing OrElse aliases.Length <> 4 OrElse polls < 1 OrElse polls > 4096 Then Throw Invalid()
            For index As Integer = 0 To 3
                Dim aliasName As String = aliases(index)
                If aliasName Is Nothing OrElse aliasName.IndexOf(ChrW(0)) >= 0 Then Throw Invalid()
                Dim size As Integer = Codecs.Utf8(aliasName).Length
                If size < 1 OrElse size > 255 Then Throw Invalid()
                For earlier As Integer = 0 To index - 1
                    If aliases(earlier) = aliasName Then Throw Invalid()
                Next
            Next
            Dim report As New Report(polls)
            Dim roles(3) As Capability
            Dim session As New Session(New NativeTransport(), 4)
            report.Session = session
            Try
                session.CheckAbi()
                For index As Integer = 0 To 3
                    roles(index) = session.Open(aliases(index))
                Next
                report.SendUnknown = True
                Dim reader As New Codecs.Reader(roles(0).Invoke("action_send_goal", encoded, 8).Checked().Data)
                Dim id As ULong = reader.Unsigned(8)
                reader.End()
                If id = 0UL Then Throw Invalid()
                report.GoalId = id : report.SendUnknown = False
                Dim selector As Byte() = New Codecs.Writer(8).Unsigned(id, 8).Finish()
                For iteration As Integer = 0 To polls - 1
                    Dim feedback As Result = roles(2).Invoke("action_receive_feedback", selector, 268)
                    If feedback.Error = 0UI Then
                        Dim value As New Codecs.Reader(feedback.Data)
                        If value.Unsigned(8) <> id Then Throw Invalid()
                        report.Feedback(report.FeedbackUsed) = OriginalText(value)
                        report.FeedbackUsed += 1
                    ElseIf feedback.Error <> 11UI Then
                        feedback.Checked()
                    End If
                    Dim result As Result = roles(3).Invoke("action_receive_result", selector, 269)
                    If result.Error = 11UI Then Continue For
                    result.Checked()
                    Dim terminal As New Codecs.Reader(result.Data)
                    If terminal.Unsigned(8) <> id Then Throw Invalid()
                    Dim kind As ULong = terminal.Unsigned(1)
                    If kind < 2UL OrElse kind > 4UL Then Throw Invalid()
                    Dim text As String = OriginalText(terminal)
                    report.ResultText = text : report.TerminalKind = CByte(kind)
                    Exit For
                Next
                If report.TerminalKind = 0 Then Throw New RosException(New Result(110UI))
            Catch failure As Exception
                report.Primary = failure
            Finally
                Try
                    report.Cleanup = session.CloseChecked(report.Primary)
                Catch failure As Exception
                    report.CleanupException = failure
                End Try
            End Try
            Return report
        End Function

        Private Function Code(failure As Exception) As UInteger
            If failure Is Nothing Then Return 0UI
            If TypeOf failure Is RosException Then Return DirectCast(failure, RosException).Result.Error
            Return 22UI
        End Function

        ''' <summary>@brief Select status while retaining the complete original Report.</summary>
        ''' <remarks>@details Chooses primary then first independent cleanup failure.
        ''' Performs no native operation and never retries uncertainty.
        ''' @see Report PatrolClient.Run</remarks>
        ''' <param name="report">Borrowed completed Report; do not mutate concurrently.</param>
        ''' <returns>Original unsigned error, or0; process capping is separate.</returns>
        Public Function Status(report As Report) As UInteger
            Dim primary As UInteger = Code(report.Primary)
            If primary <> 0UI Then Return primary
            If report.Cleanup IsNot Nothing Then
                For index As Integer = 0 To report.Cleanup.Count - 1
                    Dim item As CleanupItem = report.Cleanup.Items(index)
                    If item.Exception IsNot Nothing Then Return Code(item.Exception)
                    If item.Result Is Nothing Then Return 22UI
                    If item.Result.Error <> 0UI Then Return item.Result.Error
                Next
            End If
            Return Code(report.CleanupException)
        End Function

        ''' <summary>@brief Execute actual VB.NET/Mono/WASI argv after checked cleanup.</summary>
        ''' <remarks>@details x opens nothing. Complete original values/IDs and each
        ''' role outcome print before process return. No host CLR fallback.
        ''' @see PatrolClient.Run PatrolClient.ParseGoal PatrolClient.Status</remarks>
        ''' <param name="arguments">Original explicit WASI argv excluding program name.</param>
        ''' <returns>Primary then cleanup status, represented as at most125.</returns>
        Public Function Main(arguments As String()) As Integer
            Try
                If arguments.Length <> 8 Then Return 22
                If arguments(4) = "x" Then Return 0
                Dim goal As Goal = ParseGoal(arguments(4), arguments(5), arguments(6))
                If Not Regex.IsMatch(arguments(7), "\A[0-9]{1,4}\z") Then Return 22
                Dim aliases(3) As String
                Array.Copy(arguments, aliases, 4)
                Dim report As Report = Run(aliases, goal, Integer.Parse(arguments(7), CultureInfo.InvariantCulture))
                If report.GoalId <> 0UL Then Console.WriteLine("accepted goal={0}", report.GoalId)
                For index As Integer = 0 To report.FeedbackUsed - 1
                    Dim text As String = report.Feedback(index)
                    Console.WriteLine("feedback[{0}]: {1}", Codecs.Utf8(text).Length, text)
                Next
                If report.TerminalKind <> 0 Then
                    Console.WriteLine("terminal kind={0} goal={1}{2}result: {3}", report.TerminalKind, report.GoalId, Environment.NewLine, report.ResultText)
                ElseIf report.GoalId <> 0UL OrElse report.SendUnknown Then
                    Console.Error.WriteLine("goal={0} send_unknown={1} outcome unresolved; no replay or automatic cancel", report.GoalId, report.SendUnknown)
                End If
                Console.Error.WriteLine("primary={0}; cleanup_exception={1}", report.Primary, report.CleanupException)
                If report.Cleanup IsNot Nothing Then
                    For index As Integer = 0 To report.Cleanup.Count - 1
                        Dim item As CleanupItem = report.Cleanup.Items(index)
                        Console.Error.WriteLine("cleanup[{0}] alias={1} result={2} exception={3} retirement={4}", index, item.Alias, item.Result, item.Exception, item.Retirement)
                    Next
                End If
                Return CInt(Math.Min(Status(report), 125UI))
            Catch failure As Exception
                Console.Error.WriteLine(failure)
                Return CInt(Math.Min(Code(failure), 125UI))
            End Try
        End Function
    End Module
End Namespace
