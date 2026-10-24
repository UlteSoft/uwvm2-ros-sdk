' @file Program.vb
' @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response through genuine Visual Basic CLR AOT.
Imports System
Public Module Program
    Public Sub Main()
        Dim codec = Global.Uwvm.UniversalRobotsUniversalRobotsPolyscopexComplete.Models.BoundedRecords.Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec.Instance
        Dim bytes = codec.Encode(New Global.Uwvm.UniversalRobotsUniversalRobotsPolyscopexComplete.Models.BoundedRecords._Ros2UrinterfacesSrvSetAnalogOutput_Response())
        Dim again = codec.Encode(codec.Decode(bytes))
        If bytes.Length <> again.Length Then Throw New InvalidOperationException("complete size changed")
        For index As Integer = 0 To bytes.Length - 1
            If bytes(index) <> again(index) Then Throw New InvalidOperationException("complete bytes changed")
        Next
        Console.WriteLine("{""type"":""urinterfaces/srv/SetAnalogOutput_Response"",""bytes"":" & bytes.Length.ToString() & "}")
    End Sub
End Module
