' @file Main.vb
' @brief Execute call_trigger with the real VB.NET frontend and the common CLR ABI library.
Imports Uwvm.RosWasm
Public Module Program
    Public Function Main() As Integer
        Return NativeCommand.Run(3UI)
    End Function
End Module
