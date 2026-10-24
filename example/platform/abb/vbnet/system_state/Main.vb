' @file Main.vb
' @brief Run one explicit ABB ROS 2 observation with checked cleanup.
' @details The actual source-language application validates argument arity before acquisition, retains
' the whole typed canonical value and reports independent operation/cleanup statuses. The operator
' supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
' required; no grant, replay or controller admission is implicit.
Option Strict On
Option Explicit On

Imports Uwvm.Abb
Imports Uwvm.Abb.VisualBasic

''' @brief Execute the complete ABB system_state observation as genuine VB.NET full-AOT.
''' @details Xmake compiles this actual Visual Basic source and the managed SDK
''' into the sole WASI .wasm command. Run time needs no host CLR process.
Public Module Program
    ''' @brief Invoke the typed SDK, preserve the complete response, and return status.
    ''' @param args Borrowed arguments: ALIAS.
    ''' @return First operation, cleanup or output failure clamped to 125.
    ''' @details Wrong arity returns 22 before acquisition. All returned response
    ''' values are guest-owned and every acquired handle has one checked close.
    Public Function Main(args As String()) As Integer
        If args.Length <> 1 Then
            Return 22
        End If
        Dim report = Observations.SystemState(args(0), 250)
        Return Observation.Write(report)
    End Function
End Module
