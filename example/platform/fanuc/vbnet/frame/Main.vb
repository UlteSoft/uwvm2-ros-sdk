' @file Main.vb
' @brief Run one explicit FANUC ROS 2 observation with checked cleanup.
' @details The actual source-language application validates argument arity before acquisition, retains
' the whole typed canonical value and reports independent operation/cleanup statuses. The operator
' supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
' required; no grant, replay or controller admission is implicit.
Imports System
Imports System.Threading
Imports Uwvm.RosWasm
Imports Uwvm.Fanuc.Ros2
Namespace Fanuc.Examples
Public Module MainProgram
    ''' <summary>Observe in the actual VB.NET Wasm guest and retain independent cleanup status.</summary>
    Public Function Main(args As String()) As Integer
        If args.Length <> 1 Then Return 22
        Dim primary As UInteger = 0UI, cleanup As UInteger = 0UI
        Dim wire = Array.Empty(Of Byte)()
        Dim owner As Capability = Nothing
        Dim session = New Session(New NativeTransport(), 1)
        Try
            session.CheckAbi()
            owner = session.Open(args(0))
            primary = owner.Invoke("topic_subscribe").Error
            If primary = 0UI Then
                For attempt As Integer = 0 To 249
                    Dim result = owner.Invoke("event_poll", capacity:=24)
                    primary = result.Error
                    If primary = 0UI Then
                        wire = Ros2Fanuc_msgsMsgFrame.Encode(Ros2Fanuc_msgsMsgFrame.Decode(result.Data))
                    End If
                    If primary <> 11UI OrElse attempt = 249 Then Exit For
                    Thread.Sleep(20)
                Next
            End If
        Catch failure As RosException
            primary = failure.Result.Error
        Catch failure As ArgumentException
            primary = 22UI
        Catch failure As FormatException
            primary = 22UI
        Finally
            If owner IsNot Nothing Then
                Try
                    cleanup = owner.CloseChecked().Error
                Catch failure As RosException
                    cleanup = failure.Result.Error
                Catch failure As Exception
                    cleanup = 5UI
                End Try
            End If
        End Try
        Console.WriteLine("{""primary"":" & primary.ToString() & ",""cleanup"":" &
            cleanup.ToString() & ",""wire_hex"":""" & Convert.ToHexString(wire).ToLowerInvariant() & """}")
        Return CInt(Math.Min(125UI, If(primary <> 0UI, primary, cleanup)))
    End Function
End Module
End Namespace
