' @file Main.vb
' @brief Execute publish_string with the real VB.NET frontend and the common CLR ABI library.
Imports Uwvm.RosWasm
Public Module Program
    Public Function Main() As Integer
        Return NativeCommand.Run(1UI)
    End Function
End Module
