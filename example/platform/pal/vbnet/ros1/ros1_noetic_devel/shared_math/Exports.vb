''' @details The scalar preload contract preserves each CLR module's own heap
''' and initialization state. The example checks overflow cleanup and isolated
''' counters; public binding probes exercise complete record values and explicit
''' denied access. Positive native vendor traffic is a separate qualification.
' @file Exports.vb
' @brief Export genuine VB.NET scalar methods with real catch/finally effects.
Imports System
Imports System.Runtime.InteropServices
Imports Uwvm.RosWasm.Interop
Namespace Uwvm.Pal.Preload
    ''' <summary>Describe the actual native scalar signature for original Mono AOT.</summary>
    Public Delegate Function AddCallback(left As Integer, right As Integer) As Long
    ''' <summary>Describe the actual module counter callback signature.</summary>
    Public Delegate Function CounterCallback() As Long
    ''' <summary>Describe the actual managed initialization counter signature.</summary>
    Public Delegate Function InitializationCallback() As Integer
    ''' <summary>Own actual VB.NET native exports and module-local counters.</summary>
    Public Module Arithmetic
        Private caught As Integer
        Private finished As Integer
        Private initializations As Integer
        Sub New()
            initializations += 1
        End Sub
        ''' <summary>Return low-i32 sum/status zero or caught-overflow status one.</summary>
        <MonoPInvokeCallback(GetType(AddCallback))>
        Public Function CheckedAdd(left As Integer, right As Integer) As Long
            Try
                Dim total As Long = CLng(left) + CLng(right)
                If total < Integer.MinValue OrElse total > Integer.MaxValue Then
                    Throw New OverflowException("i32 overflow")
                End If
                Return total And &HFFFFFFFFL
            Catch overflow As OverflowException
                caught += 1
                Return 1L << 32
            Finally
                finished += 1
            End Try
        End Function
        ''' <summary>Return actual catch/finally counts from this module.</summary>
        <MonoPInvokeCallback(GetType(CounterCallback))>
        Public Function CleanupCounts() As Long
            Return (CLng(caught) << 32) Or (CLng(finished) And &HFFFFFFFFL)
        End Function
        ''' <summary>Return actual module-local managed initialization executions.</summary>
        <MonoPInvokeCallback(GetType(InitializationCallback))>
        Public Function InitializationCount() As Integer
            Return initializations
        End Function
    End Module
End Namespace
