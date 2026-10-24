' @file Program.vb
' @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse through genuine Visual Basic CLR AOT.
Imports System
Public Module Program
    Public Sub Main()
        Dim codec = Global.Uwvm.UniversalRobotsUniversalRobotsRos1Complete.Models.BoundedRecords.Ros1Ur_dashboard_msgsAddToLogResponseCodec.Instance
        Dim bytes = codec.Encode(New Global.Uwvm.UniversalRobotsUniversalRobotsRos1Complete.Models.BoundedRecords._Ros1Ur_dashboard_msgsAddToLogResponse())
        Dim again = codec.Encode(codec.Decode(bytes))
        If bytes.Length <> again.Length Then Throw New InvalidOperationException("complete size changed")
        For index As Integer = 0 To bytes.Length - 1
            If bytes(index) <> again(index) Then Throw New InvalidOperationException("complete bytes changed")
        Next
        Console.WriteLine("{""type"":""ur_dashboard_msgs/AddToLogResponse"",""bytes"":" & bytes.Length.ToString() & "}")
    End Sub
End Module
