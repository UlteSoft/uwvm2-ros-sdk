' @file Program.vb
' @brief Exercise the complete original dsr_msgs/RobotState through genuine Visual Basic CLR AOT.
Imports System
Public Module Program
    Public Sub Main()
        Dim codec = Global.Uwvm.DoosanDoosanRos1Patch1Complete.Models.BoundedRecords.Ros1Dsr_msgsRobotStateCodec.Instance
        Dim bytes = codec.Encode(New Global.Uwvm.DoosanDoosanRos1Patch1Complete.Models.BoundedRecords._Ros1Dsr_msgsRobotState())
        Dim again = codec.Encode(codec.Decode(bytes))
        If bytes.Length <> again.Length Then Throw New InvalidOperationException("complete size changed")
        For index As Integer = 0 To bytes.Length - 1
            If bytes(index) <> again(index) Then Throw New InvalidOperationException("complete bytes changed")
        Next
        Console.WriteLine("{""type"":""dsr_msgs/RobotState"",""bytes"":" & bytes.Length.ToString() & "}")
    End Sub
End Module
