' @file Main.vb
' @brief Run one explicit YASKAWA ROS 2 observation with checked cleanup.
' @details The actual source-language application validates argument arity before acquisition, retains
' the whole typed canonical value and reports independent operation/cleanup statuses. The operator
' supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
' required; no grant, replay or controller admission is implicit.
Imports System
Imports Uwvm.Ros
Imports Uwvm.Yaskawa.Ros2
Namespace Yaskawa.Examples
''' <summary>@brief Observe the whole motoros2_interfaces/msg/AlarmInfo record using genuine VB.NET full
''' AOT.</summary>
''' <remarks>@details Genuine VB.NET full AOT retains every native field and independent cleanup
''' status.</remarks>
Public Module MainProgram
    ''' <summary>@brief Decode one whole sample after checked cleanup.</summary>
    ''' <param name="args">Exactly one explicit policy alias.</param>
    ''' <returns>First operation or independent cleanup status.</returns>
    Public Function Main(args As String()) As Integer
        If args.Length <> 1 Then Return 22
        Dim facts = Client.WaitSample(args(0), 25248, 250)
        Dim wire = Array.Empty(Of Byte)()
        If facts.Primary = 0UI Then
            Try
                wire = Ros2Motoros2_interfacesMsgAlarmInfo.Decode(facts.Bytes).Encode()
            Catch failure As ArgumentException
                facts.Primary = 22UI
            End Try
        End If
        Console.WriteLine("{""primary"":" &
            facts.Primary.ToString() &
            ",""cleanup"":" &
            facts.Cleanup.ToString() &
            ",""wire_hex"":""" &
            Convert.ToHexString(wire).ToLowerInvariant() &
            """}")
        Return CInt(Math.Min(125UI, If(facts.Primary <> 0UI, facts.Primary, facts.Cleanup)))
    End Function
End Module
End Namespace
