''' @file Main.vb
''' @brief Execute the genuine agibot Main application over its explicit SDK imports.
''' @details The application owns its values and closes explicitly acquired capabilities. An installed
''' compiler/engine and exact native deployment remain separate requirements.
Option Strict On
Option Explicit On
Option Infer On

Imports System
Imports Agibot.VisualBasic

Namespace Agibot.Examples
    ''' <summary>Run the complete original observation in a VB.NET AOT Wasm command.</summary>
    Public Module Program
        ''' <summary>Validate one granted alias and preserve all actual failure facts.</summary>
        ''' <param name="args">One exact service or state-subscription alias.</param>
        ''' <returns>Zero on complete success, 22 for usage, one for call failure.</returns>
        Public Function Main(args As String()) As Integer
            If args.Length <> 1 Then
                Console.Error.WriteLine("Expected exactly one granted Agibot alias")
                Return 22
            End If
            Dim result = Client.QueryMode(args(0))
            If result.Error <> 0UI OrElse result.Cleanup <> 0UI Then
                Console.Error.WriteLine("Agibot observation failed: " & result.Error & "; close: " & result.Cleanup)
                Return 1
            End If
            Console.WriteLine(result.Json)
            Return If(result.Vendor = 0L, 0, 1)
        End Function
    End Module
End Namespace
