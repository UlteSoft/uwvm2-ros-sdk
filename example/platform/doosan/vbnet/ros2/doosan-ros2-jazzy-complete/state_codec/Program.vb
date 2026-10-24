' @file Program.vb
' @brief Exercise the complete original dsr_msgs2/msg/RobotState through genuine Visual Basic CLR AOT.
Imports System
Public Module Program
    Public Sub Main()
        Dim codec = Global.Uwvm.DoosanDoosanRos2JazzyComplete.Models.BoundedRecords.Ros2Dsr_msgs2MsgRobotStateCodec.Instance
        Dim bytes = codec.Encode(New Global.Uwvm.DoosanDoosanRos2JazzyComplete.Models.BoundedRecords._Ros2Dsr_msgs2MsgRobotState())
        Dim again = codec.Encode(codec.Decode(bytes))
        If bytes.Length <> again.Length Then Throw New InvalidOperationException("complete size changed")
        For index As Integer = 0 To bytes.Length - 1
            If bytes(index) <> again(index) Then Throw New InvalidOperationException("complete bytes changed")
        Next
        Console.WriteLine("{""type"":""dsr_msgs2/msg/RobotState"",""bytes"":" & bytes.Length.ToString() & "}")
    End Sub
End Module
